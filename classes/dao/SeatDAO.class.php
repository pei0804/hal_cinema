<?php
class SeatDAO {
    private $db;

    public function __construct(PDO $db)
    {
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $this->db = $db;
    }

    public function findByTheatreId($theaterId) {
        $sql = "SELECT * FROM t_seat WHERE theater_id = :theater_id ORDER BY seat";
        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(":theater_id", $theaterId, PDO::PARAM_INT);
        $result = $stmt->execute();
        $seatList = array();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $theaterId = $row["theater_id"];
            $seat = $row["seat"];

            $seatEntity = new seat();
            $seatEntity->setTheatreId($theaterId);
            $seatEntity->setSeat($seat);
            $seatList[$seat] = $seatEntity;
        }
        return $seatList;
    }
}