<?php

class Article {

    private $id;
    private $content;
    private $releaseAt;
    private $memberId;

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
    public function getContent()
    {
        return $this->content;
    }

    /**
     * @param mixed $content
     */
    public function setContent($content)
    {
        $this->content = $content;
    }

    /**
     * @return mixed
     */
    public function getReleaseAt()
    {
        return $this->releaseAt;
    }

    /**
     * @param mixed $releaseAt
     */
    public function setReleaseAt($releaseAt)
    {
        $this->releaseAt = $releaseAt;
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