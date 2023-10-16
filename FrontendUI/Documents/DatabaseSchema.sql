/*******************************************/
/** CREATE TABLE SCRIPTS 			     ***/
/*******************************************/
CREATE TABLE `aauditdb`.`lookup_semester` (
  `Semester_Id` int NOT NULL,
  `College_Id` int NOT NULL,
  `SemesterName` varchar(45) NOT NULL,
  `AcademicSession` varchar(20) NOT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Semester_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`lookup_Employee_Type` (
  `Emp_Type_Id` int NOT NULL,
  `College_Id` int DEFAULT NULL,
  `EmpTypeName` varchar(45) DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Emp_Type_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`lookup_designation` (
  `Designation_Id` int NOT NULL,
  `College_Id` int DEFAULT NULL,
  `DesignationName` varchar(45) DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Designation_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `aauditdb`.`lookup_scholarship` (
  `Scholarship_Id` int NOT NULL,
  `College_Id` int DEFAULT NULL,
  `scholarshipName` varchar(45) DEFAULT NULL,
  `Amount` int NOT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`scholarship_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`lookup_event_type` (
  `Event_Type_Id` int NOT NULL,
  `College_Id` int NOT NULL,
  `EventName` varchar(45) NOT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Event_Type_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`lookup_subject` (
  `Subject_Id` int NOT NULL,
  `College_Id` int NOT NULL,
  `SubjectName` varchar(255) NOT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Subject_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`lookup_committees` (
  `Committee_Id` int NOT NULL auto_increment,
  `College_Id` int NOT NULL,
  `CommitteeName` varchar(255) NOT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Committee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`colleges` (
  `College_Id` int NOT NULL,
  `CollegeName` varchar(100) DEFAULT NULL,
  `CollegePhoneNum` varchar(15) DEFAULT NULL,
  `CollegeURL` varchar(200) DEFAULT NULL,
  `CollegeLogo` varchar(100) DEFAULT NULL,
  `CollegeAddr` varchar(200) DEFAULT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`College_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`locations` (
  `Location_Id` int NOT NULL,
  `College_Id` int NOT NULL,
  `CampusName` varchar(100) DEFAULT NULL,
  `Building` varchar(100) DEFAULT NULL,
  `RoomNum` varchar(15) DEFAULT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`College_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`departments` (
  `Dept_Id` int NOT NULL,
  `Dept_Name` varchar(100) DEFAULT NULL,
  `College_Id` int NOT NULL,
  `Subject_Id` int DEFAULT NULL,
  `Dept_Head` int NOT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Dept_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`employees` (
  `Employee_Id` int NOT NULL,
  `College_Id` int DEFAULT NULL,
  `FirstName` varchar(45) DEFAULT NULL,
  `MiddleName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `PhoneNum` varchar(15) DEFAULT NULL,
  `Designation_Id` int DEFAULT NULL,
  `Emp_Type_Id` int DEFAULT NULL,
  `SCST` varchar(45) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Qualification` varchar(45) DEFAULT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Employee_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `employee_dept` (
  `Emp_Dept_ID` int NOT NULL,
  `Dept_Id` int NOT NULL,
  `Employee_Id` int NOT NULL,
  `College_Id` int DEFAULT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Emp_Dept_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`employee_committee` (
  `Emp_Committee_ID` int NOT NULL auto_increment,
  `Committee_ID` int NOT NULL,
  `Employee_Id` int NOT NULL,
  `College_Id` int NOT NULL,
  `FromDate` datetime DEFAULT NULL,
  `ToDate` datetime DEFAULT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Emp_Committee_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`students` (
  `Student_Id` int NOT NULL,
  `College_Id` int DEFAULT NULL,
  `RegistrationNum` varchar(45) DEFAULT NULL,
  `First Name` varchar(45) DEFAULT NULL,
  `MiddleName` varchar(45) DEFAULT NULL,
  `LastName` varchar(45) DEFAULT NULL,
  `Scholarship_Id` int DEFAULT NULL,
  `Scholarship_Amt` int DEFAULT NULL,
  `PhoneNum` varchar(45) DEFAULT NULL,
  `ContactPerson` varchar(45) DEFAULT NULL,
  `ContactPersonPhone` varchar(45) DEFAULT NULL,
  `Address` varchar(100) DEFAULT NULL,
  `SCST` varchar(45) DEFAULT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Student_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`syllabus` (
  `Syllabus_Id` int NOT NULL AUTO_INCREMENT,
  `College_Id` int NOT NULL,
  `Semester_Id` int NOT NULL,
  `Subject_Id` int NOT NULL,
  `Course` VARCHAR(45) NOT NULL,
  `CourseCode` varchar(20) NOT NULL,
  `CourseCredit` int NOT NULL,
  `CourseName` varchar(100) DEFAULT NULL,
  `CourseLectureHours` int NOT NULL,
  `CourseReference` varchar(1000) DEFAULT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Syllabus_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `aauditdb`.`course_units` (
  `Course_Unit_Id` int NOT NULL,
  `College_Id` int NOT NULL,
  `Semester_Id` int NOT NULL,
  `Course` VARCHAR(45) NULL,
  `CourseCode` varchar(20) DEFAULT NULL,
  `Unit_Name` varchar(100) DEFAULT NULL,
  `Unit_Desc` varchar(500) DEFAULT NULL,
  `UnitLectureHours` int NOT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Course_Unit_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `aauditdb`.`classes` (
  `Class_Id` int NOT NULL,
  `College_Id` int DEFAULT NULL,
  `Subject_Id` int DEFAULT NULL,
  `Dept_Id` int DEFAULT NULL,
  `Employee_Id` int DEFAULT NULL,
  `Location_Id` int DEFAULT NULL,
  `Day` int DEFAULT NULL,
  `Time` varchar(10) DEFAULT NULL,
  `Semister` varchar(20) DEFAULT NULL,
  `Session` varchar(10) DEFAULT NULL,
  `Status` varchar(10) DEFAULT NULL,
  `Teacher_Notes` varchar(500) DEFAULT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Class_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;


CREATE TABLE `aauditdb`.`users` (
  `User_Id` int NOT NULL  AUTO_INCREMENT,
  `UserName` varchar(16) DEFAULT NULL,
  `College_Id` int NOT NULL,
  `Employee_Id` int NOT NULL,
  `Password` varchar(32) DEFAULT NULL,
  `UserRole` varchar(15) DEFAULT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`User_Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
ALTER TABLE `aauditdb`.`users` 
ADD UNIQUE INDEX `UserName_UNIQUE` (`UserName` ASC) VISIBLE;


CREATE TABLE `aauditdb`.`class_tracking` (
  `Class_Tracking_id` INT NOT NULL,
  `Class_Id` INT NULL,
  `Stuednt_Id` INT NULL,
  `Ateendance` tinyint DEFAULT '0',
  `StudentNote` VARCHAR(500) NULL,
  PRIMARY KEY (`class_tracking_id`));

USE `aauditdb`;
CREATE 
     OR REPLACE ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `viewuser` AS
    SELECT 
        `c`.`College_Id` AS `College_Id`,
        `c`.`CollegeName` AS `CollegeName`,
        `u`.`UserName` AS `UserName`,
        `u`.`Employee_Id` AS `Employee_Id`,
        `e`.`FirstName` AS `FirstName`,
        `e`.`MiddleName` AS `MiddleName`,
        `e`.`LastName` AS `LastName`,
        `e`.`PhoneNum` AS `PhoneNum`,
        `d`.`Dept_Name` AS `Dept_Name`,
        `u`.`UserRole` AS `UserRole`,
        `e`.`Email` AS `Email`
    FROM
        ((((`users` `u`
        JOIN `departments` `d`)
        JOIN `employees` `e`)
        JOIN `colleges` `c`)
        JOIN `employee_dept` `ed`)
    WHERE
        ((u.active =1 and `c`.`College_Id` = `u`.`College_Id`)
            AND (`e`.`Employee_Id` = `u`.`Employee_Id`)
            AND (`ed`.`Employee_Id` = `e`.`Employee_Id`)
            AND (`ed`.`Dept_Id` = `d`.`Dept_Id`));

CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `view_events` AS
    SELECT 
        `e`.`Event_Id` AS `event_id`,
        `e`.`College_Id` AS `College_Id`,
        `et`.`EventName` AS `EventName`,
        `e`.`EventPurpose` AS `EventPurpose`,
        `e`.`EventNotes` AS `EventNotes`,
        `e`.`EventOutcome` AS `EventOutcome`,
        `e`.`EventNextStep` AS `EventNextStep`
    FROM
        (`events` `e`
        JOIN `lookup_event_type` `et`)
    WHERE
        ((`et`.`College_Id` = `e`.`College_Id`)
            AND (`et`.`Event_Type_Id` = `e`.`Event_Type_Id`)
            AND (`e`.`Active` = 1));

CREATE TABLE `events` (
  `Event_Id` int NOT NULL AUTO_INCREMENT,
  `Event_Type_Id` int NOT NULL,
  `College_Id` int NOT NULL,
  `EventName` varchar(100) NOT NULL,
  `EventPurpose` varchar(100) NULL,
  `EventLocation` varchar(100) NULL,
  `EventNotes` varchar(2000) NULL,
  `EventOutcome` varchar(2000) NULL,
  `EventNextStep` varchar(2000) NULL,
  `EventDate` datetime NOT NULL,
  `EventFromTime` varchar(10) NOT NULL,
  `EventToTime` varchar(10) NOT NULL,
  `ModifyDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ModifyBy` int DEFAULT NULL,
  `Active` tinyint DEFAULT '1',
  PRIMARY KEY (`Event_Id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

CREATE TABLE `aauditdb`.`events_files` (
  `Event_Id` int NOT NULL,
  `FileURLNotes` VARCHAR(2000) NOT NULL
);

CREATE TABLE `aauditdb`.`events_attendees` (
  `Event_Id` int NOT NULL,
  `Dept_Id` int NOT NULL,
  `Employee_Id` int NOT NULL,
  `Student_Id` int NOT NULL
);


CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_events` AS 
select `e`.`Event_Id` AS `event_id`,
		`e`.`College_Id` AS `College_Id`,`et`.`EventName` AS `EventName`,
        `e`.`EventPurpose` AS `EventPurpose`,`e`.`EventNotes` AS `EventNotes`,
        `e`.`EventDate` AS `EventDate`,`e`.`EventFromTime` AS `EventFromTime`, `e`.`EventToTime` AS `EventToTime`,
        `e`.`EventOutcome` AS `EventOutcome`,`e`.`EventNextStep` AS `EventNextStep` 
from (`events` `e` join `lookup_event_type` `et`) 
where ((`et`.`College_Id` = `e`.`College_Id`) and (`et`.`Event_Type_Id` = `e`.`Event_Type_Id`) and (`e`.`Active` = 1));