set heading off;
set echo off;
column c1 format a10000;
SET longchunksize 1000;
Set pages 999;
SET linesize 10000;
set long 900000;
set verify off;
SET trimspool ON;
set feedback off;
set define on;

spool  LOG/LTHFL_LMS_Backup_Hotfix_16May2017_158690.log;
accept LMS_UserName prompt 'Enter User name for LMS: '
accept LMS_Password prompt 'Enter Password for LMS: '
accept LMS_Database_Name prompt 'Enter Database Name for LMS: '
Prompt
Prompt Start LTHFL_LMS_Backup_Hotfix_16May2017_158690.sql;
Prompt 
Prompt
Prompt 
SELECT 'Backup script Start - ' || TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') FROM DUAL;
Prompt
Prompt
Prompt ----------------------------------------------------------------------------------------;
Prompt Start Executing Backup for Package;
Prompt ----------------------------------------------------------------------------------------;
Prompt
Prompt
Prompt BACKUP of file - PKG_LMS_COLL_INTERFACE.bdy;
spool BACKUP/Oracle/PACKAGE/PKG_LMS_COLL_INTERFACE.bdy;
SELECT TRIM(DBMS_METADATA.GET_DDL('PACKAGE_BODY', T.OBJECT_NAME, UPPER('&&LMS_USERNAME')))||'/' as c1
  FROM USER_OBJECTS T
 WHERE T.OBJECT_NAME = 'PKG_LMS_COLL_INTERFACE' AND t.object_type='PACKAGE BODY';
spool OFF;
spool LOG/LTHFL_LMS_Backup_Hotfix_16May2017_158690.log APPEND;
Prompt
Prompt
Prompt ----------------------------------------------------------------------------------------;
Prompt End Executing Backup for Package;
Prompt ----------------------------------------------------------------------------------------;
Prompt
Prompt 
SELECT 'Backup script End - ' || TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') FROM DUAL;
Prompt
Prompt End LTHFL_LMS_Backup_Hotfix_16May2017_158690.sql;
spool off;
set define off;