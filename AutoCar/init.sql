/*------------------------------------------------------------------------------
-- 개체 이름: BIBIGO.TB_COMMON_CD
-- 만든 날짜: 2019-05-14 오후 1:42:51
-- 마지막 수정 날짜: 2019-05-14 오후 1:42:51
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE BIBIGO.TB_COMMON_CD CASCADE CONSTRAINTS;

CREATE TABLE BIBIGO.TB_COMMON_CD (
  ID          NUMBER                 NOT NULL, 
  CODE_GB     VARCHAR2(100 BYTE)     NOT NULL, 
  CODE        VARCHAR2(100 BYTE)     NOT NULL, 
  CODE_VAL    VARCHAR2(500 BYTE)     NOT NULL, 
  ATTR1       VARCHAR2(100 BYTE)         NULL, 
  ATTR2       VARCHAR2(100 BYTE)         NULL, 
  ATTR3       VARCHAR2(100 BYTE)         NULL, 
  ATTR4       VARCHAR2(100 BYTE)         NULL, 
  ATTR5       VARCHAR2(100 BYTE)         NULL
)
TABLESPACE TS_BIBIGO
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64 K
    NEXT        1 M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

COMMENT ON TABLE BIBIGO.TB_COMMON_CD IS '공통 코드 테이블';
COMMENT ON COLUMN BIBIGO.TB_COMMON_CD.ID IS '코드 ID';
COMMENT ON COLUMN BIBIGO.TB_COMMON_CD.CODE_GB IS '코드 구분';
COMMENT ON COLUMN BIBIGO.TB_COMMON_CD.CODE IS '코드';
COMMENT ON COLUMN BIBIGO.TB_COMMON_CD.CODE_VAL IS '코드값';
COMMENT ON COLUMN BIBIGO.TB_COMMON_CD.ATTR1 IS '속성 1';
COMMENT ON COLUMN BIBIGO.TB_COMMON_CD.ATTR2 IS '속성 2';
COMMENT ON COLUMN BIBIGO.TB_COMMON_CD.ATTR3 IS '속성 3';
COMMENT ON COLUMN BIBIGO.TB_COMMON_CD.ATTR4 IS '속성 4';
COMMENT ON COLUMN BIBIGO.TB_COMMON_CD.ATTR5 IS '속성 5';

/*------------------------------------------------------------------------------
-- 개체 이름: BIBIGO.TB_PARKING_INFO
-- 만든 날짜: 2019-05-14 오후 1:42:58
-- 마지막 수정 날짜: 2019-05-16 오전 9:56:00
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE BIBIGO.TB_PARKING_INFO CASCADE CONSTRAINTS;

CREATE TABLE BIBIGO.TB_PARKING_INFO (
  ID           NUMBER                NOT NULL, 
  LAT          FLOAT(22)             NOT NULL, 
  LNG          FLOAT(22)             NOT NULL, 
  CITY         VARCHAR2(20 BYTE)         NULL, 
  DISTRICT     VARCHAR2(20 BYTE)         NULL, 
  CAR_ID       VARCHAR2(20 BYTE)     NOT NULL, 
  PARK_DATE    DATE                  NOT NULL, 
  IMAGE        BLOB                      NULL, 
  YEAR         NUMBER(4)                 NULL, 
  MONTH        NUMBER(2)                 NULL, 
  DAY          NUMBER(2)                 NULL
)
LOB (IMAGE) STORE AS (
    TABLESPACE TS_BIBIGO
    ENABLE STORAGE IN ROW
    CHUNK 8192
    NOCACHE
    LOGGING
    STORAGE (
        INITIAL     64 K
        NEXT        1 M
        MINEXTENTS  1
        MAXEXTENTS  UNLIMITED
    )
)
TABLESPACE TS_BIBIGO
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64 K
    NEXT        1 M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

COMMENT ON TABLE BIBIGO.TB_PARKING_INFO IS '불법 주차 정보 테이블';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.ID IS 'ID';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.LAT IS '위도';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.LNG IS '경도';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.CITY IS '시';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.DISTRICT IS '구';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.CAR_ID IS '차량 번호';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.PARK_DATE IS '일시';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.IMAGE IS '캡쳐화면';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.YEAR IS '년';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.MONTH IS '월';
COMMENT ON COLUMN BIBIGO.TB_PARKING_INFO.DAY IS '일';

/*------------------------------------------------------------------------------
-- 개체 이름: BIBIGO.TB_USER
-- 만든 날짜: 2019-05-14 오후 1:43:06
-- 마지막 수정 날짜: 2019-05-14 오후 1:43:06
-- 상태: VALID
------------------------------------------------------------------------------*/
DROP TABLE BIBIGO.TB_USER CASCADE CONSTRAINTS;

CREATE TABLE BIBIGO.TB_USER (
  PASSWORD    VARCHAR2(400 BYTE)     NOT NULL
)
TABLESPACE TS_BIBIGO
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE (
    INITIAL     64 K
    NEXT        1 M
    MINEXTENTS  1
    MAXEXTENTS  UNLIMITED
)
LOGGING
NOCACHE
MONITORING
NOPARALLEL
;

COMMENT ON TABLE BIBIGO.TB_USER IS '사용자 정보 테이블';
COMMENT ON COLUMN BIBIGO.TB_USER.PASSWORD IS '비밀번호';

/*------------------------------------------------------------------------------
-- 개체 이름: BIBIGO.SEQ_PARKING_INFO
-- 만든 날짜: 2019-05-16 오전 9:38:10
-- 마지막 수정 날짜: 2019-05-16 오전 9:38:10
-- 상태: VALID
------------------------------------------------------------------------------*/
CREATE SEQUENCE BIBIGO.SEQ_PARKING_INFO
    START WITH 0
    INCREMENT BY 1
    MAXVALUE 9999999999999999999999999999
    MINVALUE 0
    NOCYCLE
    CACHE 20
    NOORDER;


/*------------------------------------------------------------------------------
-- 개체 이름: BIBIGO.V_CITY_INFO
-- 만든 날짜: 2019-05-16 오전 9:47:28
-- 마지막 수정 날짜: 2019-05-16 오전 9:47:28
-- 상태: VALID
------------------------------------------------------------------------------*/
CREATE OR REPLACE FORCE VIEW BIBIGO.V_CITY_INFO
( CODE, CODE_VAL, ATTR1, ATTR2, 
  ATTR3 )
AS
SELECT CODE
		, CODE_VAL
	  , ATTR1
	  , ATTR2
	  , ATTR3 
	FROM TB_COMMON_CD a
	WHERE CODE_GB = 'CITY_INFO'
;

/*------------------------------------------------------------------------------
-- 개체 이름: BIBIGO.V_TODAY_PARK_INFO
-- 만든 날짜: 2019-05-16 오전 10:00:10
-- 마지막 수정 날짜: 2019-05-16 오전 10:04:23
-- 상태: VALID
------------------------------------------------------------------------------*/
CREATE OR REPLACE FORCE VIEW BIBIGO.V_TODAY_PARK_INFO
( CITY_ID, SIG_ID, SIG_KOR_NM, SIG_ENG_NM, 
  COLOR, PARK_CNT )
AS
SELECT A.CODE CITY_ID
	, A.ATTR1	SIG_ID
	, A.CODE_VAL SIG_KOR_NM
	, A.ATTR2 SIG_ENG_NM
	, A.ATTR3 COLOR
	, NVL(B.PARK_CNT,0) PARK_CNT
FROM V_CITY_INFO A
LEFT JOIN 
(
	SELECT DISTRICT
		, COUNT(1) PARK_CNT 
	FROM TB_PARKING_INFO
	WHERE TO_CHAR(PARK_DATE,'YYYYMMDD') = TO_CHAR(SYSDATE,'YYYYMMDD')
	GROUP BY DISTRICT
) B
ON A.CODE = B.DISTRICT
;