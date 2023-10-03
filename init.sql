
CREATE TABLE IF NOT EXISTS V_PRODUCT (
	PROD_ID                decimal(38,0) PRIMARY KEY,
	PARENT_PROD_ID         decimal(38,0) NULL,
	JNLITM_ID              decimal(38,0) NULL,
	TASK_ID                decimal(38,0) NULL,
	STRINGOFORIGIN         varchar(16) NULL,
	PRODUCTSTART_DTM       timestamp NULL DEFAULT '2020-11-25 23:00:00', 
	PRODUCTEND_DTM         timestamp NULL DEFAULT '2020-11-25 23:00:00',
	GROUNDSTATION          varchar(32) NULL,
	CLASSMARK              varchar(32) NULL,
	CONTROLMARK            varchar(64) NULL,
	PRODTYPE               varchar(3) NULL,
	TFRITM_ID              decimal(38,0) NULL,
	FILESIZE               decimal(38,0) NULL,
	CLASSIFICATION         varchar(128) NULL,
	TAGS                   text NULL,
	FILENAME               varchar(128) NULL,
	FILEPATH               varchar(256) NULL,
	PAYLOADNUMBER          varchar(32) NULL,
	PAYLOADENV             varchar(32) NULL,
	CORRELATED             char(1) NULL,
	CURRENT_STRINGLOC      varchar(5) NULL,
	ORIGINATING_STRINGLOC  varchar(5) NULL,
	ORIGINATING_DATASOURCE varchar(8) NULL,
	CURRENT_DATASOURCE     varchar(8) NULL,
	ON_DISK                varchar(1) NULL,
	ON_TAPE                varchar(1) NULL,
	CURRENT_ENTITYLOC      varchar(32) NULL,
	DEMO_PRODUCT_FLAG      varchar(1) NULL,
	DO_NOT_DELETE_FLAG     varchar(1) NULL,
	NOTETEXT               text NULL,
	PRODUCT_INSERT_DTM     timestamp NULL DEFAULT '2020-11-25 23:00:00',
	PRODUCT_SUBTYPE        varchar(32) NULL,
	STORED_FROM            varchar(10) NULL,
	TASKNAME_FROMFILE      varchar(120) NULL,
	COMPRESSION_RATIO      decimal(38,0) NULL,
	OUTSTANDING_AUTOXFER   varchar(256) NULL,
	AUTOXFEREND_DTM        timestamp NULL,
	SWVERSION              varchar(32) NULL,
	PAYLOADID              varchar(32) NULL,
	ORIGINATING_FILENAME   varchar(128) NULL,
	UPDATED_DTM            timestamp NULL,
	EM_DETECT_ID           varchar(128) NULL,
	PRIORITY               decimal(38,0) NULL
);

INSERT INTO V_PRODUCT (PROD_ID,JNLITM_ID,PRODTYPE,STRINGOFORIGIN,PAYLOADID,PAYLOADNUMBER,PAYLOADENV,PRODUCTSTART_DTM,PRODUCTEND_DTM,GROUNDSTATION,CLASSMARK,CONTROLMARK,FILENAME,FILEPATH,FILESIZE,CORRELATED,CLASSIFICATION,CURRENT_STRINGLOC,ORIGINATING_STRINGLOC,CURRENT_DATASOURCE,ORIGINATING_DATASOURCE,CURRENT_ENTITYLOC,ON_DISK,ON_TAPE,DEMO_PRODUCT_FLAG,SWVERSION,TAGS,PRODUCT_INSERT_DTM,STORED_FROM,TASKNAME_FROMFILE,ORIGINATING_FILENAME,UPDATED_DTM,EM_DETECT_ID,PRIORITY)
VALUES (212027,896427,'FRM','operational','hugs',41,'','2005-10-13 16:00:00.000','2005-10-13 16:00:19.000','hugs','ACLASS','PHI/PHO','20051013160000_41_0000212027_FRM.h5','opga-rads/Temp-Store/FRM/27',3296.0124,'N','ACLASS//PHI/PHO//1DECLASS1','A','A','N1','N1','N1A','Y','N','','1.11|H4_devl','','2021-05-25 21:43:29.000','TS','','RADS_20201125000000_N1_0000000006_FRM.h5','2021-05-25 21:43:30.000','',99);
INSERT INTO V_PRODUCT (PROD_ID,JNLITM_ID,PRODTYPE,STRINGOFORIGIN,PAYLOADID,PAYLOADNUMBER,PAYLOADENV,PRODUCTSTART_DTM,PRODUCTEND_DTM,GROUNDSTATION,CLASSMARK,CONTROLMARK,FILENAME,FILEPATH,FILESIZE,CORRELATED,CLASSIFICATION,CURRENT_STRINGLOC,ORIGINATING_STRINGLOC,CURRENT_DATASOURCE,ORIGINATING_DATASOURCE,CURRENT_ENTITYLOC,ON_DISK,ON_TAPE,DEMO_PRODUCT_FLAG,SWVERSION,TAGS,PRODUCT_INSERT_DTM,STORED_FROM,TASKNAME_FROMFILE,ORIGINATING_FILENAME,UPDATED_DTM,EM_DETECT_ID)
VALUES (212029,896429,'FRM','operational','hugs',41,'','2005-10-13 16:00:00.000','2005-10-13 16:00:19.000','hugs','ACLASS','PHI/PHO','20051013160000_41_0000212029_FRM.h5','opga-rads/Temp-Store/FRM/29',3296.0124,'N','ACLASS//PHI/PHO//1DECLASS1','A','A','N1','N1','N1A','Y','N','','1.11|H4_devl','','2021-05-25 21:44:41.000','TS','','scenario05.FF123_AOIx2x_20s.demo-aoi.h5','2021-05-25 21:44:42.000','');
INSERT INTO V_PRODUCT (PROD_ID,JNLITM_ID,PRODTYPE,STRINGOFORIGIN,PAYLOADID,PAYLOADNUMBER,PAYLOADENV,PRODUCTSTART_DTM,PRODUCTEND_DTM,GROUNDSTATION,CLASSMARK,CONTROLMARK,FILENAME,FILEPATH,FILESIZE,CORRELATED,CLASSIFICATION,CURRENT_STRINGLOC,ORIGINATING_STRINGLOC,CURRENT_DATASOURCE,ORIGINATING_DATASOURCE,CURRENT_ENTITYLOC,ON_DISK,ON_TAPE,DEMO_PRODUCT_FLAG,SWVERSION,TAGS,PRODUCT_INSERT_DTM,STORED_FROM,TASKNAME_FROMFILE,ORIGINATING_FILENAME,UPDATED_DTM,EM_DETECT_ID,PRIORITY)
VALUES (212031,896431,'FRM','operational','hugs_dvl',41,'dvl','2005-11-01 12:00:00.000','2005-11-01 12:00:19.000','hugs','ACLASS','PHI/PHO','20051101120000_41_0000212031_FRM.h5','opga-rads/Temp-Store/FRM/31',191.3651,'N','ACLASS//PHI/PHO//1DECLASS1','A','A','N1','N1','N1A','Y','N','','2.1|N5_devl','','2021-06-07 21:23:21.000','TS','','RADS_20201125000000_N1_0000000001_FRM.h5','2021-06-07 21:23:21.000','',99);
INSERT INTO V_PRODUCT (PROD_ID,JNLITM_ID,PRODTYPE,STRINGOFORIGIN,PAYLOADID,PAYLOADNUMBER,PAYLOADENV,PRODUCTSTART_DTM,PRODUCTEND_DTM,GROUNDSTATION,CLASSMARK,CONTROLMARK,FILENAME,FILEPATH,FILESIZE,CORRELATED,CLASSIFICATION,CURRENT_STRINGLOC,ORIGINATING_STRINGLOC,CURRENT_DATASOURCE,ORIGINATING_DATASOURCE,CURRENT_ENTITYLOC,ON_DISK,ON_TAPE,DEMO_PRODUCT_FLAG,SWVERSION,TAGS,PRODUCT_INSERT_DTM,STORED_FROM,TASKNAME_FROMFILE,ORIGINATING_FILENAME,UPDATED_DTM,EM_DETECT_ID)
VALUES (212033,896433,'FRM','operational','hugs',41,'','2005-10-13 16:00:00.000','2005-10-13 16:00:19.000','hugs','ACLASS','PHI/PHO','20051013160000_41_0000212033_FRM.h5','opga-rads/Temp-Store/FRM/33',3296.0124,'N','ACLASS//PHI/PHO//1DECLASS1','A','A','N1','N1','N1A','Y','N','','1.11|H4_devl','','2021-06-07 21:26:33.000','TS','','RADS_20201125000000_N1_0000000006_FRM.h5','2021-06-07 21:26:34.000','');
INSERT INTO V_PRODUCT (PROD_ID,JNLITM_ID,PRODTYPE,STRINGOFORIGIN,PAYLOADID,PAYLOADNUMBER,PAYLOADENV,PRODUCTSTART_DTM,PRODUCTEND_DTM,GROUNDSTATION,CLASSMARK,CONTROLMARK,FILENAME,FILEPATH,FILESIZE,CORRELATED,CLASSIFICATION,CURRENT_STRINGLOC,ORIGINATING_STRINGLOC,CURRENT_DATASOURCE,ORIGINATING_DATASOURCE,CURRENT_ENTITYLOC,ON_DISK,ON_TAPE,DEMO_PRODUCT_FLAG,SWVERSION,TAGS,PRODUCT_INSERT_DTM,STORED_FROM,TASKNAME_FROMFILE,ORIGINATING_FILENAME,UPDATED_DTM,EM_DETECT_ID,PRIORITY)
VALUES (212035,896435,'FRM','operational','hugs_dvl',41,'dvl','2005-11-01 12:00:00.000','2005-11-01 12:00:19.000','hugs','ACLASS','PHI/PHO','20051101120000_41_0000212035_FRM.h5','opga-rads/Temp-Store/FRM/35',191.3651,'N','ACLASS//PHI/PHO//1DECLASS1','A','A','N1','N1','N1A','Y','N','','2.1|N5_devl','','2021-06-17 23:00:44.000','TS','','RADS_20201125000000_N1_0000000001_FRM.h5','2021-06-17 23:00:44.000','',99);
INSERT INTO V_PRODUCT (PROD_ID,JNLITM_ID,PRODTYPE,STRINGOFORIGIN,PAYLOADID,PAYLOADNUMBER,PAYLOADENV,PRODUCTSTART_DTM,PRODUCTEND_DTM,GROUNDSTATION,CLASSMARK,CONTROLMARK,FILENAME,FILEPATH,FILESIZE,CORRELATED,CLASSIFICATION,CURRENT_STRINGLOC,ORIGINATING_STRINGLOC,CURRENT_DATASOURCE,ORIGINATING_DATASOURCE,CURRENT_ENTITYLOC,ON_DISK,ON_TAPE,DEMO_PRODUCT_FLAG,SWVERSION,TAGS,PRODUCT_INSERT_DTM,STORED_FROM,TASKNAME_FROMFILE,ORIGINATING_FILENAME,UPDATED_DTM,EM_DETECT_ID)
VALUES (212037,896437,'FRM','operational','hugs',41,'','2005-10-13 16:00:00.000','2005-10-13 16:00:19.000','hugs','ACLASS','PHI/PHO','20051013160000_41_0000212037_FRM.h5','opga-rads/Temp-Store/FRM/37',3296.0124,'N','ACLASS//PHI/PHO//1DECLASS1','A','A','N1','N1','N1A','Y','N','','1.11|H4_devl','','2021-07-01 15:34:33.000','TS','','RADS_20201125000000_N1_0000000006_FRM.h5','2021-07-01 15:34:35.000','');

