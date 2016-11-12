<?php

class MemberDAO {
    private $db;

    public function __construct(PDO $db)
    {
        $db->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
        $db->setAttribute(PDO::ATTR_EMULATE_PREPARES, false);
        $this->db = $db;
    }

    public function findByLoginMail($loginMail) {
        $sql = "SELECT * FROM m_member WHERE mail = :mail";
        $stmt = $this->db->prepare($sql);
        $stmt->bindValue(":mail", $loginMail, PDO::PARAM_STR);
        $result = $stmt->execute();
        $member = null;

        if($result && $row = $stmt->fetch(PDO::FETCH_ASSOC)) {
            $id = $row["id"];
            $mail = $row["mail"];
            $name = $row["name"];
            $password = $row["password"];

            $member = new Member();
            $member->setId($id);
            $member->setMail($mail);
            $member->setName($name);
            $member->setPassword($password);
        }
        return $member;
    }
}
