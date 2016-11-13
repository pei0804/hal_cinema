<?php

class MovieScheduleDAO {
    private $db;

    public function __construct(PDO $db)
    {
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $this->db = $db;
    }

    public function findByDate($date) {

        $sql  = "SELECT ";
        $sql .= "m.id as movie_id,";
        $sql .= "m.title as title,";
        $sql .= "ms.theatre_id as theatre_id,";
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
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $movieId = $row["movie_id"];
            $title = $row["title"];
            $theatreId = $row["theatre_id"];
            $movieScheduleIdArray = $row["movie_schedule_id_array"];
            $movieTime = $row["movie_time"];
            $releaseDate = $row["release_date"];
            $startAtArray = $row["start_at_array"];
            $endAtArray = $row["end_at_array"];

            $movieScheduleEntity = new MovieSchedule();
            $movieScheduleEntity->setMovieId($movieId);
            $movieScheduleEntity->setTitle($title);
            $movieScheduleEntity->setTheaterId($theatreId);
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