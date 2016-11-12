<?php
class SeatDAO {
    private $db;

    public function __construct(PDO $db)
    {
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $this->db = $db;
    }

    public function findByTheatreId($theatreId) {
        $sql = "SELECT * FROM t_seat WHERE theatre_id = :theatre_id ORDER BY seat";
        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(":theatre_id ", $theatreId, PDO::PARAM_INT);
        $result = $stmt->execute();
        $seatList = array();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $theatreId = $row["theatre_id"];
            $seat = $row["seat"];

            $seatEntity = new seat();
            $seatEntity->setTheaterId($theatreId);
            $seatEntity->setSeat($seat);
            $seatList[$seat] = $seatEntity;
        }
        return $seatList;
    }
}