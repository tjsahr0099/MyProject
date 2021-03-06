CREATE TABLE T_BOARD (
	BOARD_SEQ VARCHAR(10) PRIMARY KEY NOT NULL,
    TITLE VARCHAR(200),
    CONT VARCHAR(2000),
    WRITE_USER_SEQ VARCHAR(10),
    WRITE_DATE DATE,
    DEPTH VARCHAR(1),
    PARENT_BOARD_SEQ VARCHAR(10),
    SECRET_YN VARCHAR(1),
    SECRET_PASSWORD VARCHAR(20)
);

CREATE TABLE T_BOARD_REPLY (
	REPLY_SEQ VARCHAR(10) PRIMARY KEY NOT NULL,
    BOARD_SEQ VARCHAR(10) NOT NULL,
    REPLY_CONT VARCHAR(2000),
    REPLY_WRITE_USER_SEQ VARCHAR(10),
    REPLY_WRITE_DATE DATE,
    REPLY_DEPTH VARCHAR(1),
    PARENT_REPLY_SEQ VARCHAR(10),
    REPLY_SECRET_YN VARCHAR(1)
    
);

CREATE TABLE T_ALL_SEQ(
	SEQ_NAME VARCHAR(20)  PRIMARY KEY NOT NULL,
    SEQ_NO INTEGER(6) NOT NULL
);

INSERT INTO T_ALL_SEQ VALUES('BOARD_SEQ',0);