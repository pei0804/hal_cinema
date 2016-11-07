SET SESSION FOREIGN_KEY_CHECKS=0;

/* Drop Tables */

DROP TABLE IF EXISTS m_article;
DROP TABLE IF EXISTS m_discount_service;
DROP TABLE IF EXISTS t_ticket;
DROP TABLE IF EXISTS t_reserve;
DROP TABLE IF EXISTS t_movie_schedule;
DROP TABLE IF EXISTS m_movie;
DROP TABLE IF EXISTS m_price_type;
DROP TABLE IF EXISTS t_seat;
DROP TABLE IF EXISTS m_theatre;
DROP TABLE IF EXISTS m_member;




/* Create Tables */

CREATE TABLE m_article
(
    id int unsigned NOT NULL AUTO_INCREMENT,
    content text NOT NULL,
    release_at datetime,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    member_id int unsigned NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE m_discount_service
(
    id int unsigned NOT NULL,
    name varchar(20) NOT NULL,
    week_number int NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    member_id int unsigned NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE m_member
(
    id int unsigned NOT NULL AUTO_INCREMENT,
    password varchar(16) NOT NULL,
    name varchar(50) NOT NULL,
    tel varchar(11) NOT NULL,
    mail varchar(255) NOT NULL,
    credit_no char(16) NOT NULL,
    credit_sec_code char(4) NOT NULL,
    credit_expiration_date char(6) NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    class enum('customer','employee') NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE m_movie
(
    id int unsigned NOT NULL AUTO_INCREMENT,
    name varchar(50) NOT NULL,
    release_date date,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    member_id int unsigned NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE m_price_type
(
    id int unsigned NOT NULL,
    name varchar(30) NOT NULL,
    price int NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    member_id int unsigned NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE m_theatre
(
    id int unsigned NOT NULL AUTO_INCREMENT,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    member_id int unsigned NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE t_movie_schedule
(
    id int unsigned NOT NULL AUTO_INCREMENT,
    theater_id int unsigned NOT NULL,
    movie_id int unsigned NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    member_id int unsigned NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE t_reserve
(
    id int unsigned NOT NULL AUTO_INCREMENT,
    member_id int unsigned NOT NULL,
    schedule_id int unsigned NOT NULL,
    pay_all_price int NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (id)
);


CREATE TABLE t_seat
(
    theatre_id int unsigned NOT NULL,
    seat char(2) NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    member_id int unsigned NOT NULL,
    PRIMARY KEY (theatre_id, seat)
);


CREATE TABLE t_ticket
(
    ticket_no int unsigned NOT NULL AUTO_INCREMENT,
    id int unsigned NOT NULL,
    type_id int unsigned NOT NULL,
    price int NOT NULL,
    created_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    PRIMARY KEY (ticket_no, id)
);



/* Create Foreign Keys */

ALTER TABLE m_article
    ADD FOREIGN KEY (member_id)
    REFERENCES m_member (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE m_discount_service
    ADD FOREIGN KEY (member_id)
    REFERENCES m_member (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE m_movie
    ADD FOREIGN KEY (member_id)
    REFERENCES m_member (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE m_price_type
    ADD FOREIGN KEY (member_id)
    REFERENCES m_member (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE m_theatre
    ADD FOREIGN KEY (member_id)
    REFERENCES m_member (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE t_movie_schedule
    ADD FOREIGN KEY (member_id)
    REFERENCES m_member (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE t_reserve
    ADD FOREIGN KEY (member_id)
    REFERENCES m_member (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE t_seat
    ADD FOREIGN KEY (member_id)
    REFERENCES m_member (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE t_movie_schedule
    ADD FOREIGN KEY (movie_id)
    REFERENCES m_movie (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE t_ticket
    ADD FOREIGN KEY (type_id)
    REFERENCES m_price_type (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE t_movie_schedule
    ADD FOREIGN KEY (theater_id)
    REFERENCES m_theatre (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE t_seat
    ADD FOREIGN KEY (theatre_id)
    REFERENCES m_theatre (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE t_reserve
    ADD FOREIGN KEY (schedule_id)
    REFERENCES t_movie_schedule (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;


ALTER TABLE t_ticket
    ADD FOREIGN KEY (id)
    REFERENCES t_reserve (id)
    ON UPDATE RESTRICT
    ON DELETE RESTRICT
;



