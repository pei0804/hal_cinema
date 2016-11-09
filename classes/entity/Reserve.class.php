<?php

class Reserve {

    private $id;
    private $memberId;
    private $scheduleId;
    private $payAllPrice;

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
    public function getMemberId()
    {
        return $this->memberId;
    }

    /**
     * @param mixed $memberId
     */
    public function setMemberId($memberId)
    {
        $this->memberId = $memberId;
    }

    /**
     * @return mixed
     */
    public function getScheduleId()
    {
        return $this->scheduleId;
    }

    /**
     * @param mixed $scheduleId
     */
    public function setScheduleId($scheduleId)
    {
        $this->scheduleId = $scheduleId;
    }

    /**
     * @return mixed
     */
    public function getPayAllPrice()
    {
        return $this->payAllPrice;
    }

    /**
     * @param mixed $payAllPrice
     */
    public function setPayAllPrice($payAllPrice)
    {
        $this->payAllPrice = $payAllPrice;
    }
}