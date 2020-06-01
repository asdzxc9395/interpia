
CREATE TABLE COM_LEG (
       COM_NAME             VARCHAR2(20) NULL,
       LONG_FROM            VARCHAR2(10) NULL,
       LONG_TO              VARCHAR2(10) NULL,
       POS                  VARCHAR2(15) NULL,
       NO                   VARCHAR2(4) NULL,
       PLACE                VARCHAR2(3) NULL
) TABLESPACE PIA21
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL;

CREATE INDEX XIF1COM_LEG ON COM_LEG
(
       NO                             ASC
)LOGGING
TABLESPACE PIA21_IDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE TABLE COM_WORK (
       WORK_PLACE           VARCHAR2(10) NULL,
       LONG_FROM            VARCHAR2(10) NULL,
       LONG_TO              VARCHAR2(10) NULL,
       CON_COM              VARCHAR2(20) NULL,
       SLAE                 VARCHAR2(10) NULL,
       SATTLE_PREDICT       VARCHAR2(10) NULL,
       SATTLE_DATE          VARCHAR2(10) NULL,
       NO                   VARCHAR2(4) NULL
) TABLESPACE PIA21
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL;

CREATE INDEX XIF1COM_WORK ON COM_WORK
(
       NO                             ASC
)LOGGING
TABLESPACE PIA21_IDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE TABLE DEV_LEG (
       PROJ_NAME            VARCHAR2(20) NOT NULL,
       LONG_FROM            VARCHAR2(10) NULL,
       LONG_TO              VARCHAR2(10) NULL,
       ORDER_COM            VARCHAR2(15) NULL,
       DEV_FLAG             VARCHAR2(3) NULL,
       ENV_MACHINE          VARCHAR2(15) NULL,
       ENV_OS               VARCHAR2(15) NULL,
       ENV_LANG             VARCHAR2(20) NULL,
       ENV_DB               VARCHAR2(15) NULL,
       ENV_MIDDLE           VARCHAR2(15) NULL,
       NO                   VARCHAR2(4) NULL
) TABLESPACE PIA21
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL;

CREATE INDEX XIF1DEV_LEG ON DEV_LEG
(
       NO                             ASC
)LOGGING
TABLESPACE PIA21_IDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


CREATE TABLE IS_MATER (
       NO                   VARCHAR2(4) NOT NULL,
       KOR_NAME             VARCHAR2(20) NULL,
       JUMIN_NO             VARCHAR2(14) NULL,
       ENG_NAME             VARCHAR2(20) NULL,
       SEX                  VARCHAR2(1) NULL,
       LAST_SCHOOL          VARCHAR2(15) NULL,
       MAJOR                VARCHAR2(15) NULL,
       GRADU_DATE           VARCHAR2(10) NULL,
       COM_LAG              VARCHAR2(4) NULL,
       LICENCE1             VARCHAR2(20) NULL,
       LICENCE2             VARCHAR2(20) NULL,
       LICENCE3             VARCHAR2(20) NULL,
       TECH_LEV             VARCHAR2(10) NULL,
       ADDRESS              VARCHAR2(20) NULL,
       WORK_DATE            VARCHAR2(10) NULL,
       STATE                VARCHAR2(1) NULL,
       IMAGE                VARCHAR2(50) NULL,
       WORK_FLAG            VARCHAR2(1) NULL,
       PHONE                VARCHAR2(15) NULL,
       EMAIL                VARCHAR2(50) NULL
) TABLESPACE PIA21
PCTUSED    0
PCTFREE    10
INITRANS   1
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
LOGGING 
NOCACHE
NOPARALLEL;

CREATE UNIQUE INDEX XPKIS_MATER ON IS_MATER
(
       NO                             ASC
)LOGGING
TABLESPACE PIA21_IDX
PCTFREE    10
INITRANS   2
MAXTRANS   255
STORAGE    (
            INITIAL          64K
            MINEXTENTS       1
            MAXEXTENTS       2147483645
            PCTINCREASE      0
            BUFFER_POOL      DEFAULT
           )
NOPARALLEL;


ALTER TABLE IS_MATER
       ADD  ( PRIMARY KEY (NO) ) ;


ALTER TABLE COM_LEG
       ADD  ( FOREIGN KEY (NO)
                             REFERENCES IS_MATER ) ;


ALTER TABLE COM_WORK
       ADD  ( FOREIGN KEY (NO)
                             REFERENCES IS_MATER ) ;


ALTER TABLE DEV_LEG
       ADD  ( FOREIGN KEY (NO)
                             REFERENCES IS_MATER ) ;



