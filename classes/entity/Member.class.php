<?php

class Member {

    private $id;
    private $password;
    private $name;
    private $tel;
    private $mail;
    private $creditNo;
    private $creditSecCode;
    private $creditExpirationDate;
    private $class;

    /**
     * @return mixed
     */
    public function getId()
    {
        return $this->id;
    }

    /**
     * @param mixed $id
     */
    public function setId($id)
    {
        $this->id = $id;
    }

    /**
     * @return mixed
     */
    public function getPassword()
    {
        return $this->password;
    }

    /**
     * @param mixed $password
     */
    public function setPassword($password)
    {
        $this->password = $password;
    }

    /**
     * @return mixed
     */
    public function getName()
    {
        return $this->name;
    }

    /**
     * @param mixed $name
     */
    public function setName($name)
    {
        $this->name = $name;
    }

    /**
     * @return mixed
     */
    public function getTel()
    {
        return $this->tel;
    }

    /**
     * @param mixed $tel
     */
    public function setTel($tel)
    {
        $this->tel = $tel;
    }

    /**
     * @return mixed
     */
    public function getMail()
    {
        return $this->mail;
    }

    /**
     * @param mixed $mail
     */
    public function setMail($mail)
    {
        $this->mail = $mail;
    }

    /**
     * @return mixed
     */
    public function getCreditNo()
    {
        return $this->creditNo;
    }

    /**
     * @param mixed $creditNo
     */
    public function setCreditNo($creditNo)
    {
        $this->creditNo = $creditNo;
    }

    /**
     * @return mixed
     */
    public function getCreditSecCode()
    {
        return $this->creditSecCode;
    }

    /**
     * @param mixed $creditSecCode
     */
    public function setCreditSecCode($creditSecCode)
    {
        $this->creditSecCode = $creditSecCode;
    }

    /**
     * @return mixed
     */
    public function getCreditExpirationDate()
    {
        return $this->creditExpirationDate;
    }

    /**
     * @param mixed $creditExpirationDate
     */
    public function setCreditExpirationDate($creditExpirationDate)
    {
        $this->creditExpirationDate = $creditExpirationDate;
    }

    /**
     * @return mixed
     */
    public function getClass()
    {
        return $this->class;
    }

    /**
     * @param mixed $class
     */
    public function setClass($class)
    {
        $this->class = $class;
    }
}
