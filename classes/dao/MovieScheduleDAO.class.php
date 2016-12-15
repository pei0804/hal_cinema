<?php

const VACANCY_CIRCLE    = "<span class='vacancy circle'>◯</span>";
const VACANCY_TRIANGLE  = "<span class='vacancy triangle'>△</span>";
const VACANCY_CROSS     = "<span class='vacancy cross'>×</span>";

class MovieScheduleDAO
{
    private $db;

    public function __construct(PDO $db)
    {
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $this->db = $db;
    }

    public function findByPK($id)
    {
        $sql = "SELECT * FROM t_movie_schedule WHERE id = :id";
        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(":id", $id, PDO::PARAM_INT);
        $result = $stmt->execute();
        $movieScheduleEntity = null;
        if ($result && $row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $id = $row["id"];
            $movieId = $row["movie_id"];
            $theaterId = $row["theater_id"];
            $startAt = $row["start_at"];
            $endAt = $row["end_at"];

            $movieScheduleEntity = new MovieSchedule();
            $movieScheduleEntity->setId($id);
            $movieScheduleEntity->setMovieId($movieId);
            $movieScheduleEntity->setTheaterId($theaterId);
            $movieScheduleEntity->setStartAt($startAt);
            $movieScheduleEntity->setEndAt($endAt);
        }
        return $movieScheduleEntity;
    }

    public function findByDate($date)
    {
        $sql = "SELECT ";
        $sql .= "m.id as movie_id,";
        $sql .= "m.img_url as img_url,";
        $sql .= "m.description as description,";
        $sql .= "m.title as title,";
        $sql .= "ms.theater_id as theater_id,";
        $sql .= "GROUP_CONCAT(ms.id order by ms.id) as movie_schedule_id_array,";
        $sql .= "m.movie_time as movie_time,";
        $sql .= "m.release_date as release_date,";
        $sql .= "GROUP_CONCAT(ms.start_at order by ms.id) as start_at_array,";
        $sql .= "GROUP_CONCAT(ms.end_at order by ms.id) as end_at_array ";
        $sql .= "FROM t_movie_schedule ms ";
        $sql .= "INNER JOIN m_movie m ON m.id = ms.movie_id ";
        $sql .= "WHERE DATE_FORMAT(start_at, '%Y-%m-%d') = STR_TO_DATE(:date ,'%Y-%m-%d')";
        $sql .= "GROUP BY m.id";

        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(":date", date("Y-m-d", strtotime($date)), PDO::PARAM_STR);
        $result = $stmt->execute();
        $movieScheduleList = array();
        while ($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $movieId = $row["movie_id"];
            $title = $row["title"];
            $imgUrl = $row["img_url"];
            $description = $row["description"];
            $theaterId = $row["theater_id"];
            $movieScheduleIdArrayTmp = split(',', $row["movie_schedule_id_array"]);
            $movieTime = $row["movie_time"];
            $releaseDate = $row["release_date"];
            $startAtArray = split(',', $row["start_at_array"]);
            $endAtArray = split(',', $row["end_at_array"]);

            // 空席情報取得
            $sql2 = "SELECT COUNT(*) as reserve_count,";
            $sql2 .= "th.seat_count as seat_count ";
            $sql2 .= "FROM t_reserve r ";
            $sql2 .= "INNER JOIN t_movie_schedule ms ON ms.id = r.schedule_id ";
            $sql2 .= "INNER JOIN m_theater th ON th.id = ms.theater_id ";
            $sql2 .= "INNER JOIN t_ticket t ON t.reserve_id = r.id ";
            $sql2 .= "WHERE r.schedule_id = :scheduleId ";
            $sql2 .= "GROUP BY r.schedule_id ";
            $movieScheduleIdArray = array();

            foreach ($movieScheduleIdArrayTmp as $key => $value) {
                $stmt2 = $this->db->prepare($sql2);
                $stmt2->bindValue(":scheduleId", $value, PDO::PARAM_INT);
                $result = $stmt2->execute();

                $vacancyState = VACANCY_CROSS;
                if ($result && $row = $stmt2->fetch(PDO::FETCH_ASSOC)) {
                    $vacancyState = num2per($row["reserve_count"], $row["seat_count"]);
                }
                $vacancyStateArray[$key] = $vacancyState;
                $startAtArray[$key] = date("H:i", strtotime($startAtArray[$key]));
                $endAtArray[$key] = date("H:i", strtotime($endAtArray[$key]));
                $movieScheduleIdArray[$value] = $startAtArray[$key] . '<span class="endTime">～' . $endAtArray[$key] . '</span>' . $vacancyState;
            }

            $movieScheduleEntity = new MovieSchedule();
            $movieScheduleEntity->setMovieId($movieId);
            $movieScheduleEntity->setTitle($title);
            $movieScheduleEntity->setImgUrl($imgUrl);
            $movieScheduleEntity->setDescription($description);
            $movieScheduleEntity->setTheaterId($theaterId);
            $movieScheduleEntity->setMovieScheduleIdArray($movieScheduleIdArray);
            $movieScheduleEntity->setMovieTime($movieTime);
            $movieScheduleEntity->setReleaseDate($releaseDate);
            $movieScheduleEntity->setStartAtArray($startAtArray);
            $movieScheduleEntity->setEndAtArray($endAtArray);

            $movieScheduleList[$movieId] = $movieScheduleEntity;
        }
        return $movieScheduleList;
    }
}

// 座席の割合の計算とその状態を記号で表現する
function num2per($number, $total)
{
    if ($number < 0) {
        return VACANCY_CIRCLE;
    }

    try {
        $percent = ($number / $total) * 100;
        $ratio = floor($percent);
        if (20 >= $ratio && $ratio >= 0) {
            return VACANCY_CIRCLE;
        }
        if (100 == $ratio) {
            return VACANCY_CROSS;
        }
        return VACANCY_TRIANGLE;
    } catch (Exception $e) {
        return VACANCY_CROSS;
    }

}