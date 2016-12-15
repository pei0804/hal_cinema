<?php

class MovieSchedule {

    private $id;
    private $theaterId;
    private $movieId;
    private $startAt;
    private $endAt;
    private $memberId;

    // INNER JOIN
    private $title;
    private $imgUrl;
    private $movieTime;
    private $releaseDate;
    private $movieScheduleIdArray;

    // ETC
    private $startAtArray;
    private $endAtArray;
    private $vacancyStateArray;

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
    public function getMovieId()
    {
        return $this->movieId;
    }

    /**
     * @param mixed $movieId
     */
    public function setMovieId($movieId)
    {
        $this->movieId = $movieId;
    }

    /**
     * @return mixed
     */
    public function getStartAt()
    {
        return $this->startAt;
    }

    /**
     * @param mixed $startAt
     */
    public function setStartAt($startAt)
    {
        $this->startAt = $startAt;
    }

    /**
     * @return mixed
     */
    public function getEndAt()
    {
        return $this->endAt;
    }

    /**
     * @param mixed $endAt
     */
    public function setEndAt($endAt)
    {
        $this->endAt = $endAt;
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
    public function getTitle()
    {
        return $this->title;
    }

    /**
     * @param mixed $title
     */
    public function setTitle($title)
    {
        $this->title = $title;
    }

    /**
     * @return mixed
     */
    public function getImgUrl()
    {
        return $this->imgUrl;
    }

    /**
     * @param mixed $imgUrl
     */
    public function setImgUrl($imgUrl)
    {
        $this->imgUrl = $imgUrl;
    }

    /**
     * @return mixed
     */
    public function getDescription()
    {
        return $this->description;
    }

    /**
     * @param mixed $description
     */
    public function setDescription($description)
    {
        $this->description = $description;
    }

    /**
     * @return mixed
     */
    public function getMovieTime()
    {
        return $this->movieTime;
    }

    /**
     * @param mixed $movieTime
     */
    public function setMovieTime($movieTime)
    {
        $this->movieTime = $movieTime;
    }

    /**
     * @return mixed
     */
    public function getMovieScheduleIdArray()
    {
        return $this->movieScheduleIdArray;
    }

    /**
     * @param mixed $movieScheduleIdArray
     */
    public function setMovieScheduleIdArray($movieScheduleIdArray)
    {
        $this->movieScheduleIdArray = $movieScheduleIdArray;
    }

    /**
     * @return mixed
     */
    public function getReleaseDate()
    {
        return $this->releaseDate;
    }

    /**
     * @param mixed $releaseDate
     */
    public function setReleaseDate($releaseDate)
    {
        $this->releaseDate = $releaseDate;
    }

    /**
     * @return mixed
     */
    public function getStartAtArray()
    {
        return $this->startAtArray;
    }

    /**
     * @param mixed $startAtArray
     */
    public function setStartAtArray($startAtArray)
    {
        $this->startAtArray = $startAtArray;
    }

    /**
     * @return mixed
     */
    public function getEndAtArray()
    {
        return $this->endAtArray;
    }

    /**
     * @param mixed $endAtArray
     */
    public function setEndAtArray($endAtArray)
    {
        $this->endAtArray = $endAtArray;
    }

    /**
     * @return mixed
     */
    public function getVacancyStateArray()
    {
        return $this->vacancyStateArray;
    }

    /**
     * @param mixed $vacancyStateArray
     */
    public function setVacancyStateArray($vacancyStateArray)
    {
        $this->vacancyStateArray = $vacancyStateArray;
    }

}