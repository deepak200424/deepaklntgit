Prompt '------------------------------------------';
Prompt 'Start Updating  Release Log Details .....';
Prompt '------------------------------------------';
Prompt
Prompt
BEGIN

  INSERT INTO RELEASE_DEPLOYMENT_LOG   (sz_release_ver, i_patch_no,  dt_released,  dt_deploy, c_modified, sz_remarks)
  VALUES (:RELEASE_VER, :PATCH_NO, TO_DATE(:DATE_RELEASED, 'DD/MM/YYYY'), sysdate, :MODIFIED, :REMARKS);
  
  COMMIT;
  
END;
/
Prompt
Prompt '------------------------------------------';
Prompt 'End Updating  Release Log Details .....';
Prompt '------------------------------------------';
Prompt
Prompt
