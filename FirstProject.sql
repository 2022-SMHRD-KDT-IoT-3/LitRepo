-- 테이블 삭제
DROP TABLE mem_info CASCADE CONSTRAINTS ;
DROP TABLE phy_info CASCADE CONSTRAINTS ;
DROP TABLE rt_info CASCADE CONSTRAINTS ;
DROP TABLE env_info CASCADE CONSTRAINTS ;
DROP TABLE board_info CASCADE CONSTRAINTS ;
DROP TABLE comment_info CASCADE CONSTRAINTS ;

-- 시퀀스 삭제
DROP SEQUENCE board_info_SEQ ;
DROP SEQUENCE phy_info_SEQ ;
DROP SEQUENCE rt_info_SEQ ;
DROP SEQUENCE env_info_SEQ ;
DROP SEQUENCE comment_info_SEQ ;

-- 테이블 순서는 관계를 고려하여 한 번에 실행해도 에러가 발생하지 않게 정렬되었습니다.

-- mem_info Table Create SQL
CREATE TABLE mem_info
(
    mem_id           VARCHAR2(25)    NOT NULL, 
    mem_pw           VARCHAR2(25)    NOT NULL, 
    mem_nick         VARCHAR2(25)    NOT NULL, 
    mem_gender       CHAR(1)         NOT NULL, 
    mem_birthdate    DATE            DEFAULT SYSDATE NOT NULL, 
    mem_joindate     DATE            NOT NULL, 
    mem_type         CHAR(1)         DEFAULT 'U' NOT NULL, 
     PRIMARY KEY (mem_id)
)
/

COMMENT ON TABLE mem_info IS '회원 정보 테이블'
/

COMMENT ON COLUMN mem_info.mem_id IS '회원 아이디'
/

COMMENT ON COLUMN mem_info.mem_pw IS '회원 비밀번호'
/

COMMENT ON COLUMN mem_info.mem_nick IS '회원 닉네임'
/

COMMENT ON COLUMN mem_info.mem_gender IS '회원 성별'
/

COMMENT ON COLUMN mem_info.mem_birthdate IS '회원 생년월일'
/

COMMENT ON COLUMN mem_info.mem_joindate IS '회원 가입일자'
/

COMMENT ON COLUMN mem_info.mem_type IS '회원 유형'
/


-- board_info Table Create SQL
CREATE TABLE board_info
(
    article_seq        NUMBER(12, 0)     NOT NULL, 
    article_title      VARCHAR2(200)     NOT NULL, 
    article_content    VARCHAR2(4000)    NOT NULL, 
    article_file       VARCHAR2(200)     NOT NULL, 
    article_date       DATE              DEFAULT SYSDATE NOT NULL, 
    mem_id             VARCHAR2(25)      NOT NULL, 
    article_cnt        NUMBER(12, 0)     DEFAULT 0 NOT NULL, 
    article_type       CHAR(1)           DEFAULT 'F' NOT NULL, 
     PRIMARY KEY (article_seq)
)
/

CREATE SEQUENCE board_info_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER board_info_AI_TRG
BEFORE INSERT ON board_info 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT board_info_SEQ.NEXTVAL
    INTO :NEW.article_seq
    FROM DUAL;
END;
/

--DROP TRIGGER board_info_AI_TRG;
/

--DROP SEQUENCE board_info_SEQ;
/

COMMENT ON TABLE board_info IS '게시판 테이블'
/

COMMENT ON COLUMN board_info.article_seq IS '글 순번'
/

COMMENT ON COLUMN board_info.article_title IS '글 제목'
/

COMMENT ON COLUMN board_info.article_content IS '글 내용'
/

COMMENT ON COLUMN board_info.article_file IS '글 첨부파일'
/

COMMENT ON COLUMN board_info.article_date IS '글 작성일자'
/

COMMENT ON COLUMN board_info.mem_id IS '글 작성자'
/

COMMENT ON COLUMN board_info.article_cnt IS '글 조회수'
/

COMMENT ON COLUMN board_info.article_type IS '글 유형'
/

ALTER TABLE board_info
    ADD CONSTRAINT FK_board_info_mem_id_mem_info_ FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id)
/


-- phy_info Table Create SQL
CREATE TABLE phy_info
(
    sensing_seq       NUMBER(12, 0)    NOT NULL, 
    mem_id            VARCHAR2(25)     NOT NULL, 
    sensing_pulse     NUMBER(12, 0)    NOT NULL, 
    sensing_stress    NUMBER(12, 1)    NOT NULL, 
    sensing_date      DATE             DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (sensing_seq)
)
/

CREATE SEQUENCE phy_info_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER phy_info_AI_TRG
BEFORE INSERT ON phy_info 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT phy_info_SEQ.NEXTVAL
    INTO :NEW.sensing_seq
    FROM DUAL;
END;
/

--DROP TRIGGER phy_info_AI_TRG;
/

--DROP SEQUENCE phy_info_SEQ;
/

COMMENT ON TABLE phy_info IS '신체 정보 테이블'
/

COMMENT ON COLUMN phy_info.sensing_seq IS '측정 순번'
/

COMMENT ON COLUMN phy_info.mem_id IS '회원 아이디'
/

COMMENT ON COLUMN phy_info.sensing_pulse IS '심박수'
/

COMMENT ON COLUMN phy_info.sensing_stress IS '스트레스 지수'
/

COMMENT ON COLUMN phy_info.sensing_date IS '측정 일자'
/

ALTER TABLE phy_info
    ADD CONSTRAINT FK_phy_info_mem_id_mem_info_me FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id)
/


-- rt_info Table Create SQL
CREATE TABLE rt_info
(
    rt_seq         NUMBER(12, 0)    NOT NULL, 
    mem_id         VARCHAR2(25)     NOT NULL, 
    rt_pulse       NUMBER(12, 0)    NOT NULL, 
    rt_decibel     NUMBER(12, 0)    NOT NULL, 
    rt_datetime    DATE             DEFAULT SYSDATE NOT NULL, 
     PRIMARY KEY (rt_seq)
)
/

CREATE SEQUENCE rt_info_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER rt_info_AI_TRG
BEFORE INSERT ON rt_info 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT rt_info_SEQ.NEXTVAL
    INTO :NEW.rt_seq
    FROM DUAL;
END;
/

--DROP TRIGGER rt_info_AI_TRG;
/

--DROP SEQUENCE rt_info_SEQ;
/

COMMENT ON TABLE rt_info IS '실시간 수면 센서 테이블'
/

COMMENT ON COLUMN rt_info.rt_seq IS '실시간 순번'
/

COMMENT ON COLUMN rt_info.mem_id IS '회원 아이디'
/

COMMENT ON COLUMN rt_info.rt_pulse IS '실시간 심박수'
/

COMMENT ON COLUMN rt_info.rt_decibel IS '코골이 데시벨'
/

COMMENT ON COLUMN rt_info.rt_datetime IS '측정 날짜'
/

ALTER TABLE rt_info
    ADD CONSTRAINT FK_rt_info_mem_id_mem_info_mem FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id)
/


-- env_info Table Create SQL
CREATE TABLE env_info
(
    env_seq            NUMBER(12, 0)    NOT NULL, 
    env_temperature    NUMBER(12, 1)    NOT NULL, 
    env_humidity       NUMBER(12, 1)    NOT NULL, 
    env_date           DATE             DEFAULT SYSDATE NOT NULL, 
    mem_id             VARCHAR2(25)     NOT NULL, 
     PRIMARY KEY (env_seq)
)
/

CREATE SEQUENCE env_info_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER env_info_AI_TRG
BEFORE INSERT ON env_info 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT env_info_SEQ.NEXTVAL
    INTO :NEW.env_seq
    FROM DUAL;
END;
/

--DROP TRIGGER env_info_AI_TRG;
/

--DROP SEQUENCE env_info_SEQ;
/

COMMENT ON TABLE env_info IS '온습도 정보 테이블'
/

COMMENT ON COLUMN env_info.env_seq IS '온습도 순번'
/

COMMENT ON COLUMN env_info.env_temperature IS '온도'
/

COMMENT ON COLUMN env_info.env_humidity IS '습도'
/

COMMENT ON COLUMN env_info.env_date IS '측정 일자'
/

COMMENT ON COLUMN env_info.mem_id IS '유저 아이디'
/

ALTER TABLE env_info
    ADD CONSTRAINT FK_env_info_mem_id_mem_info_me FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id)
/


-- comment_info Table Create SQL
CREATE TABLE comment_info
(
    cmt_seq        NUMBER(12, 0)     NOT NULL, 
    article_seq    NUMBER(12, 0)     NOT NULL, 
    cmt_content    VARCHAR2(4000)    NOT NULL, 
    cmt_date       DATE              DEFAULT SYSDATE NOT NULL, 
    mem_id         VARCHAR2(25)      NOT NULL, 
    likes          NUMBER(12, 0)     DEFAULT 0 NOT NULL, 
     PRIMARY KEY (cmt_seq)
)
/

CREATE SEQUENCE comment_info_SEQ
START WITH 1
INCREMENT BY 1;
/

CREATE OR REPLACE TRIGGER comment_info_AI_TRG
BEFORE INSERT ON comment_info 
REFERENCING NEW AS NEW FOR EACH ROW 
BEGIN 
    SELECT comment_info_SEQ.NEXTVAL
    INTO :NEW.cmt_seq
    FROM DUAL;
END;
/

--DROP TRIGGER comment_info_AI_TRG;
/

--DROP SEQUENCE comment_info_SEQ;
/

COMMENT ON TABLE comment_info IS '댓글 테이블'
/

COMMENT ON COLUMN comment_info.cmt_seq IS '댓글 순번'
/

COMMENT ON COLUMN comment_info.article_seq IS '원글 순번'
/

COMMENT ON COLUMN comment_info.cmt_content IS '댓글 내용'
/

COMMENT ON COLUMN comment_info.cmt_date IS '댓글 작성일자'
/

COMMENT ON COLUMN comment_info.mem_id IS '댓글 작성자'
/

COMMENT ON COLUMN comment_info.likes IS '좋아요 수'
/

ALTER TABLE comment_info
    ADD CONSTRAINT FK_comment_info_article_seq_bo FOREIGN KEY (article_seq)
        REFERENCES board_info (article_seq)
/

ALTER TABLE comment_info
    ADD CONSTRAINT FK_comment_info_mem_id_mem_inf FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id)
/

-- 제약조건
ALTER TABLE MEM_INFO ADD CONSTRAINTS CHECK_MEM_GENDER CHECK (MEM_GENDER IN ('F', 'M'));
/
ALTER TABLE MEM_INFO ADD CONSTRAINTS CHECK_MEM_TYPE CHECK (MEM_TYPE IN ('A', 'U','D'));
/
ALTER TABLE BOARD_INFO ADD CONSTRAINTS CHECK_ARTICLE_TYPE CHECK (ARTICLE_TYPE IN ('F','Q','I','S'));
