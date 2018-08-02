Prompt '--------------------------------------------------';
Prompt 'Start Updating  Release Rollback Log Details .....';
Prompt '--------------------------------------------------';
Prompt
Prompt
BEGIN

  INSERT INTO ROLLBACK_DEPLOYMENT_LOG   
         (sz_release_ver, i_patch_no,  i_rollback_srno, i_component_no, 
		  sz_object_name, sz_object_type, dt_rollback, sz_remarks)
  VALUES (:RELEASE_VER, :PATCH_NO, :ROLLBACK_SRNO,  
          (select nvl(max(i_component_no), 0) + 1 as i_component_no
		   from   rollback_deployment_log
		   where  sz_release_ver = :RELEASE_VER
		   and    i_patch_no     = :PATCH_NO
		   and    i_rollback_srno = :ROLLBACK_SRNO
		  ),
          :OBJ_NAME, :OBJECT_TYPE, sysdate, :REMARKS);
  
  COMMIT;
  
END;
/
Prompt
Prompt '------------------------------------------';
Prompt 'End Updating  Release Log Details .....';
Prompt '------------------------------------------';
Prompt
Prompt
