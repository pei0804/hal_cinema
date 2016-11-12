<?php
class ReserveDAO {
    private $db;

    public function __construct(PDO $db)
    {
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $this->db = $db;
    }

    public function findByScheduleId($scheduleId) {
        $sql  = "SELECT seat FROM t_reserve r ";
        $sql .= "INNER JOIN t_ticket t ON t.reserve_id = r.id ";
        $sql .= "WHERE r.schedule_id = :schedule_id ";
        $sql .= "ORDER BY seat";

        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(":schedule_id ", $scheduleId, PDO::PARAM_INT);
        $result = $stmt->execute();
        $reservedSeatList = array();
        while($row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $seat = $row["seat"];

            $reserveEntity = new Reserve();
            $reserveEntity ->setSeat($seat);
            $reservedSeatList[$seat] = $reserveEntity;
        }
        return $reservedSeatList;
    }
}