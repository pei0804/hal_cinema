<?php

class Seat {

    private $seat;
    private $theatreId;
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
    public function getTheatreId()
    {
        return $this->theatreId;
    }

    /**
     * @param mixed $theatreId
     */
    public function setTheatreId($theatreId)
    {
        $this->theatreId = $theatreId;
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
