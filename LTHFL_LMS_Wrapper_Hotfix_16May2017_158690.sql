Prompt Start LTHFL_LMS_Wrapper_Hotfix_16May2017_158690.sql

spool LOG\LTHFL_LMS_Wrapper_Hotfix_16May2017_158690.log
accept LMS_UserName prompt 'Enter User name for LMS: '
accept LMS_Password prompt 'Enter Password for LMS: '
accept LMS_Database_Name prompt 'Enter Database Name for LMS: '
Prompt
set define off;
Prompt ------------------------------------------------------------------------------;
Prompt 'Start Executing Package';
Prompt ------------------------------------------------------------------------------;
prompt
prompt Start Executing PKG_LMS_COLL_INTERFACE.bdy;
@@Oracle/PACKAGE/PKG_LMS_COLL_INTERFACE.bdy;
prompt End Executing PKG_LMS_COLL_INTERFACE.bdy;
prompt
Prompt ------------------------------------------------------------------------------;
Prompt 'End Executing Package';
Prompt ------------------------------------------------------------------------------;


Prompt 
Prompt 'Updating Release Log .........'
Prompt 
Prompt 
VARIABLE RELEASE_VER   VARCHAR2(20);
VARIABLE PATCH_NO      VARCHAR2(3);
VARIABLE DATE_RELEASED VARCHAR2(12);
VARIABLE MODIFIED      CHAR(1);
VARIABLE REMARKS       VARCHAR2(200);

BEGIN
  :RELEASE_VER   := '4.0.0.0.8.15.2';
  :PATCH_NO      := '2';
  :DATE_RELEASED := TO_CHAR(TO_DATE('16-MAY-2017'), 'DD-MON-YYYY');
  :MODIFIED      := 'N';
  :REMARKS       := 'Bug 158690 - Collection interface data is not getting populated properly (HL Delinquent cases are missing in INDUS collection)';
END;
/

@@RELEASE_DEPLOY_LOG.sql;

spool off;
Prompt End LTHFL_LMS_Wrapper_Hotfix_16May2017_158690
