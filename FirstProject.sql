-- ���̺� ����
DROP TABLE mem_info CASCADE CONSTRAINTS ;
DROP TABLE phy_info CASCADE CONSTRAINTS ;
DROP TABLE rt_info CASCADE CONSTRAINTS ;
DROP TABLE env_info CASCADE CONSTRAINTS ;
DROP TABLE board_info CASCADE CONSTRAINTS ;
DROP TABLE comment_info CASCADE CONSTRAINTS ;

-- ������ ����
DROP SEQUENCE board_info_SEQ ;
DROP SEQUENCE phy_info_SEQ ;
DROP SEQUENCE rt_info_SEQ ;
DROP SEQUENCE env_info_SEQ ;
DROP SEQUENCE comment_info_SEQ ;

-- ���̺� ������ ���踦 ����Ͽ� �� ���� �����ص� ������ �߻����� �ʰ� ���ĵǾ����ϴ�.

-- mem_info Table Create SQL
CREATE TABLE mem_info
(
    mem_id           VARCHAR2(25)    NOT NULL, 
    mem_pw           VARCHAR2(25)    NOT NULL, 
    mem_nick         VARCHAR2(25)    NOT NULL, 
    mem_gender       CHAR(1)         NOT NULL, 
    mem_birthdate    DATE            DEFAULT SYSDATE NOT NULL, 
    mem_joindate     DATE            NOT NULL, 
    mem_type         CHAR(1)         NOT NULL, 
     PRIMARY KEY (mem_id)
)
/

COMMENT ON TABLE mem_info IS 'ȸ�� ���� ���̺�'
/

COMMENT ON COLUMN mem_info.mem_id IS 'ȸ�� ���̵�'
/

COMMENT ON COLUMN mem_info.mem_pw IS 'ȸ�� ��й�ȣ'
/

COMMENT ON COLUMN mem_info.mem_nick IS 'ȸ�� �г���'
/

COMMENT ON COLUMN mem_info.mem_gender IS 'ȸ�� ����'
/

COMMENT ON COLUMN mem_info.mem_birthdate IS 'ȸ�� �������'
/

COMMENT ON COLUMN mem_info.mem_joindate IS 'ȸ�� ��������'
/

COMMENT ON COLUMN mem_info.mem_type IS 'ȸ�� ����'
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

COMMENT ON TABLE board_info IS '�Խ��� ���̺�'
/

COMMENT ON COLUMN board_info.article_seq IS '�� ����'
/

COMMENT ON COLUMN board_info.article_title IS '�� ����'
/

COMMENT ON COLUMN board_info.article_content IS '�� ����'
/

COMMENT ON COLUMN board_info.article_file IS '�� ÷������'
/

COMMENT ON COLUMN board_info.article_date IS '�� �ۼ�����'
/

COMMENT ON COLUMN board_info.mem_id IS '�� �ۼ���'
/

COMMENT ON COLUMN board_info.article_cnt IS '�� ��ȸ��'
/

COMMENT ON COLUMN board_info.article_type IS '�� ����'
/

ALTER TABLE board_info
    ADD CONSTRAINT FK_board_info_mem_id_mem_info_ FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id) ON DELETE CASCADE
/


-- phy_info Table Create SQL
CREATE TABLE phy_info
(
    sensing_seq       NUMBER(12, 0)    NOT NULL, 
    mem_id            VARCHAR2(25)     NOT NULL, 
    sensing_pulse     NUMBER(12, 0)    NOT NULL, 
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

COMMENT ON TABLE phy_info IS '��ü ���� ���̺�'
/

COMMENT ON COLUMN phy_info.sensing_seq IS '���� ����'
/

COMMENT ON COLUMN phy_info.mem_id IS 'ȸ�� ���̵�'
/

COMMENT ON COLUMN phy_info.sensing_pulse IS '�ɹڼ�'
/

COMMENT ON COLUMN phy_info.sensing_date IS '���� ����'
/

ALTER TABLE phy_info
    ADD CONSTRAINT FK_phy_info_mem_id_mem_info_me FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id) ON DELETE CASCADE
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

COMMENT ON TABLE rt_info IS '�ǽð� ���� ���� ���̺�'
/

COMMENT ON COLUMN rt_info.rt_seq IS '�ǽð� ����'
/

COMMENT ON COLUMN rt_info.mem_id IS 'ȸ�� ���̵�'
/

COMMENT ON COLUMN rt_info.rt_pulse IS '�ǽð� �ɹڼ�'
/

COMMENT ON COLUMN rt_info.rt_decibel IS '�ڰ��� ���ú�'
/

COMMENT ON COLUMN rt_info.rt_datetime IS '���� ��¥'
/

ALTER TABLE rt_info
    ADD CONSTRAINT FK_rt_info_mem_id_mem_info_mem FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id) ON DELETE CASCADE
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

COMMENT ON TABLE env_info IS '�½��� ���� ���̺�'
/

COMMENT ON COLUMN env_info.env_seq IS '�½��� ����'
/

COMMENT ON COLUMN env_info.env_temperature IS '�µ�'
/

COMMENT ON COLUMN env_info.env_humidity IS '����'
/

COMMENT ON COLUMN env_info.env_date IS '���� ����'
/

COMMENT ON COLUMN env_info.mem_id IS '���� ���̵�'
/

ALTER TABLE env_info
    ADD CONSTRAINT FK_env_info_mem_id_mem_info_me FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id) ON DELETE CASCADE
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

COMMENT ON TABLE comment_info IS '��� ���̺�'
/

COMMENT ON COLUMN comment_info.cmt_seq IS '��� ����'
/

COMMENT ON COLUMN comment_info.article_seq IS '���� ����'
/

COMMENT ON COLUMN comment_info.cmt_content IS '��� ����'
/

COMMENT ON COLUMN comment_info.cmt_date IS '��� �ۼ�����'
/

COMMENT ON COLUMN comment_info.mem_id IS '��� �ۼ���'
/

COMMENT ON COLUMN comment_info.likes IS '���ƿ� ��'
/

ALTER TABLE comment_info
    ADD CONSTRAINT FK_comment_info_article_seq_bo FOREIGN KEY (article_seq)
        REFERENCES board_info (article_seq) ON DELETE CASCADE
/

ALTER TABLE comment_info
    ADD CONSTRAINT FK_comment_info_mem_id_mem_inf FOREIGN KEY (mem_id)
        REFERENCES mem_info (mem_id) ON DELETE CASCADE
/

-- ��������
ALTER TABLE MEM_INFO ADD CONSTRAINTS CHECK_MEM_GENDER CHECK (MEM_GENDER IN ('F', 'M'));
/
ALTER TABLE MEM_INFO ADD CONSTRAINTS CHECK_MEM_TYPE CHECK (MEM_TYPE IN ('A', 'U','D'));
/
ALTER TABLE BOARD_INFO ADD CONSTRAINTS CHECK_ARTICLE_TYPE CHECK (ARTICLE_TYPE IN ('F','Q','I','S'));