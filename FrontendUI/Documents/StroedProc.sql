DELIMITER $$
CREATE DEFINER=`root`@`localhost` PROCEDURE `insert_update_events`(IN e_id int, IN e_type_id int, IN clg_id int, IN e_name varchar(100), IN e_purpose varchar(100), IN e_notes varchar(2000),  IN e_outcome varchar(2000), IN e_next varchar(2000), IN e_from varchar(10), in e_date varchar(10), IN e_to varchar(10), IN user_id int, IN p_attendess varchar(100), IN p_files varchar(500))
begin

  DECLARE v_sfile VARCHAR(1000);
  DECLARE v_sfile1 VARCHAR(1000);
  DECLARE v_sfile2 VARCHAR(1000);
  DECLARE v_sfiles VARCHAR(1000);
  DECLARE v_newId INT;
  DECLARE v_pos INT;
  DECLARE v_comma INT;
  DECLARE v_DeptId INT;
  DECLARE v_EmpId INT;
  DECLARE v_StudentId INT;
	
    
  /*DECLARE EXIT HANDLER FOR SQLEXCEPTION 
  BEGIN 
      ROLLBACK;
  END; */
  
  START TRANSACTION;  
  if (e_id = -1) then
	INSERT INTO `aauditdb`.`events`(`Event_Type_Id`,`College_Id`,`EventName`,`EventPurpose`,`EventNotes`,`EventOutcome`,`EventNextStep`, EventDate, `EventFromTime`,`EventToTime`,`ModifyBy`) VALUES (e_type_Id, Clg_Id, e_name, e_purpose, e_notes, e_outcome, e_next, STR_TO_DATE(e_date,'%m/%d/%Y'), e_from, e_to, user_id);
	SELECT last_insert_id() INTO v_newId;
  else
  		UPDATE `aauditdb`.`events`
        SET 
        `Event_Type_Id` = e_type_Id,
		`College_Id` = Clg_Id,
		`EventName` = e_name,
		`EventPurpose` = e_purpose,
		`EventNotes` = e_notes,
		`EventOutcome` = e_outcome,
		`EventNextStep` = e_next,
		`EventDate` = STR_TO_DATE(e_date,'%m/%d/%Y'),
		`EventFromTime` = e_from,
		`EventToTime` = e_to,
		`ModifyBy` = user_id
        WHERE `Event_Id` = e_id;

		set v_newId := e_id;
        DELETE FROM events_files where event_id = e_id;
        DELETE FROM events_attendees where event_id = e_id;
  end if;
  /* Insert the meeting invitees  */
  	set v_sfiles := p_attendess;
	set v_pos := LOCATE('|', v_sfiles);
  
	while v_pos > 0 do
		Set v_sfile := substring_index (v_sfiles,'|',1);
		Set v_DeptId =  substring_index (v_sfile,',',1) ;
		set v_sfile1 := substring(v_sfile, length(v_DeptId)+2);
		Set v_EmpId =  substring_index (v_sfile1,',',1) ;
		set v_sfile2 := substring(v_sfile1, length(v_EmpId)+2);
		Set v_StudentId =  substring_index (v_sfile2,',',1) ;
		INSERT INTO `aauditdb`.`events_attendees`(`Event_Id`, `Dept_Id`, `Employee_Id`, `Student_Id`) VALUES (v_newId, v_DeptId, v_EmpId, v_StudentId); 

		set v_sfiles := substring(v_sfiles, length(v_sfile)+2);
		set v_pos := LOCATE('|', v_sfiles);
    end while;
    set v_sfile = v_sfiles;
	Set v_DeptId =  substring_index (v_sfile,',',1) ;
	set v_sfile1 = substring(v_sfile, length(v_DeptId)+2);
	Set v_EmpId =  substring_index (v_sfile1,',',1) ;
	set v_sfile2 = substring(v_sfile1, length(v_EmpId)+2);
	Set v_StudentId =  substring_index (v_sfile2,',',1) ;
    INSERT INTO `aauditdb`.`events_attendees`(`Event_Id`, `Dept_Id`, `Employee_Id`, `Student_Id`) VALUES (v_newId, v_DeptId, v_EmpId, v_StudentId); 

  /* Insert the image files */
  set v_sfiles := p_files;
  set v_pos := LOCATE('|', v_sfiles);
  while v_pos > 0 do
	  Set v_sfile := substring_index (v_sfiles,'|',1);
	  set v_sfiles := substring(v_sfiles, length(v_sfile)+2);
	  INSERT INTO `aauditdb`.`events_files` (`Event_Id`, `FileURLNotes`) VALUES (v_newId, v_sfile);
      set v_pos := LOCATE('|', v_sfiles);
  end while;
  INSERT INTO `aauditdb`.`events_files` (`Event_Id`, `FileURLNotes`) VALUES (v_newId, v_sfiles);
  
  COMMIT;
end