<?php

class Ticket {

    private $ticketNo;
    private $reserveId;
    private $typeId;
    private $price;

    /**
     * @return mixed
     */
    public function getTicketNo()
    {
        return $this->ticketNo;
    }

    /**
     * @param mixed $ticketNo
     */
    public function setTicketNo($ticketNo)
    {
        $this->ticketNo = $ticketNo;
    }

    /**
     * @return mixed
     */
    public function getReserveId()
    {
        return $this->reserveId;
    }

    /**
     * @param mixed $reserveId
     */
    public function setReserveId($reserveId)
    {
        $this->reserveId = $reserveId;
    }

    /**
     * @return mixed
     */
    public function getTypeId()
    {
        return $this->typeId;
    }

    /**
     * @param mixed $typeId
     */
    public function setTypeId($typeId)
    {
        $this->typeId = $typeId;
    }

    /**
     * @return mixed
     */
    public function getPrice()
    {
        return $this->price;
    }

    /**
     * @param mixed $price
     */
    public function setPrice($price)
    {
        $this->price = $price;
    }
}
