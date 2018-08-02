Prompt Start LTHFL_LMS_Rollback_Hotfix_16May2017_158690.sql
set define on

spool LOG/LTHFL_LMS_Rollback_Hotfix_16May2017_158690.log
accept LMS_UserName prompt 'Enter User name for LMS: '
accept LMS_Password prompt 'Enter Password for LMS: '
accept LMS_Database_Name prompt 'Enter Database Name for LMS: '
Prompt
Prompt Start LTHFL_LMS_Rollback_Hotfix_16May2017_158690.sql;
Prompt Connect Database..
set define off

Prompt '----------------------------------------------------------------------';
SELECT 'ROLLBACK START DATE & TIME : ' || TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') 
FROM   DUAL;
Prompt '----------------------------------------------------------------------';
Prompt Set values for Rollback Log;
Prompt 
Prompt 
VARIABLE RELEASE_VER    VARCHAR2(20);
VARIABLE PATCH_NO       VARCHAR2(3);
VARIABLE ROLLBACK_SRNO  NUMBER;
VARIABLE OBJ_NAME       VARCHAR2(100);
VARIABLE OBJECT_TYPE    VARCHAR2(100);
VARIABLE REMARKS        VARCHAR2(200);

BEGIN
  :RELEASE_VER   := '4.0.0.0.8.15.2';
  :PATCH_NO      := '2';
  SELECT NVL(MAX(RDL.I_ROLLBACK_SRNO), 0) + 1 INTO :ROLLBACK_SRNO
  FROM ROLLBACK_DEPLOYMENT_LOG RDL WHERE RDL.SZ_RELEASE_VER=:RELEASE_VER AND RDL.I_PATCH_NO=:PATCH_NO;
END;
/
Prompt
Prompt
Prompt
Prompt
Prompt 'Start Executing Rollback for Package.......................................';
Prompt
BEGIN
  :OBJECT_TYPE    := 'PACKAGE';
END;
/
Prompt 'Executing BACKUP - PKG_LMS_COLL_INTERFACE.bdy';
BEGIN
  :OBJ_NAME    := 'PKG_LMS_COLL_INTERFACE.bdy';
END;
/
@@BACKUP/Oracle/PACKAGE/PKG_LMS_COLL_INTERFACE.bdy;
Prompt
Prompt
Prompt 'End Executing Rollback for Package.......................................';
Prompt
Prompt  End LTHFL_LMS_Rollback_Hotfix_16May2017_158690
Prompt '----------------------------------------------------------------------';
SELECT 'ROLLBACK END DATE & TIME : ' || TO_CHAR(SYSDATE, 'DD-MON-YYYY HH24:MI:SS') 
FROM   DUAL;
Prompt '----------------------------------------------------------------------';
spool off;