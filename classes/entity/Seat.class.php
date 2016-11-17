<?php

class Seat {

    private $seat;
    private $theaterId;
    private $memberId;

    /**
     * @return mixed
     */
    public function getSeat()
    {
        return $this->seat;
    }

    /**
     * @param mixed $seat
     */
    public function setSeat($seat)
    {
        $this->seat = $seat;
    }

    /**
     * @return mixed
     */
    public function getTheaterId()
    {
        return $this->theaterId;
    }

    /**
     * @param mixed $theaterId
     */
    public function setTheaterId($theaterId)
    {
        $this->theaterId = $theaterId;
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
}
