INSERT INTO `aauditdb`.`lookup_subject` (`Subject_Id`, `College_Id`, `SubjectName`, `Active`) VALUES ('2', '-1', 'English', '1');
INSERT INTO `aauditdb`.`lookup_subject` (`Subject_Id`, `College_Id`, `SubjectName`, `Active`) VALUES ('3', '-1', 'Economics', '1');
INSERT INTO `aauditdb`.`lookup_subject` (`Subject_Id`, `College_Id`, `SubjectName`, `Active`) VALUES ('4', '-1', 'Physics', '1');
INSERT INTO `aauditdb`.`lookup_subject` (`Subject_Id`, `College_Id`, `SubjectName`, `Active`) VALUES ('5', '-1', 'Chemistry', '1');
INSERT INTO `aauditdb`.`lookup_subject` (`Subject_Id`, `College_Id`, `SubjectName`, `Active`) VALUES ('6', '-1', 'Mathematics', '1');

INSERT INTO `aauditdb`.`lookup_employee_type` (`Emp_Type_Id`, `College_Id`, `EmpTypeName`, `Active`) VALUES ('1', '-1', 'Full Time', '1');
INSERT INTO `aauditdb`.`lookup_employee_type` (`Emp_Type_Id`, `College_Id`, `EmpTypeName`, `Active`) VALUES ('2', '-1', 'Part Time', '1');
INSERT INTO `aauditdb`.`lookup_employee_type` (`Emp_Type_Id`, `College_Id`, `EmpTypeName`, `Active`) VALUES ('3', '-1', 'Part Time Permanent', '1');
INSERT INTO `aauditdb`.`lookup_employee_type` (`Emp_Type_Id`, `College_Id`, `EmpTypeName`, `Active`) VALUES ('4', '-1', 'Non Teaching', '1');

INSERT INTO `aauditdb`.`lookup_designation` (`Designation_Id`, `College_Id`, `DesignationName`, `Active`) VALUES ('1', '-1', 'Principal', '1');
INSERT INTO `aauditdb`.`lookup_designation` (`Designation_Id`, `College_Id`, `DesignationName`, `Active`) VALUES ('2', '-1', 'Department Head', '1');
INSERT INTO `aauditdb`.`lookup_designation` (`Designation_Id`, `College_Id`, `DesignationName`, `Active`) VALUES ('3', '-1', 'Teacher', '1');
INSERT INTO `aauditdb`.`lookup_designation` (`Designation_Id`, `College_Id`, `DesignationName`, `Active`) VALUES ('4', '-1', 'Admin Staff', '1');

INSERT INTO `aauditdb`.`lookup_semester` (`Semester_Id`, `College_Id`, `SemesterName`, `AcademicSession`, `Active`) VALUES ('1', '-1', 'Semester 1', '2022-2023', '1');
INSERT INTO `aauditdb`.`lookup_semester` (`Semester_Id`, `College_Id`, `SemesterName`, `AcademicSession`, `Active`) VALUES ('2', '-1', 'Semester 2', '2022-2023', '1');
INSERT INTO `aauditdb`.`lookup_semester` (`Semester_Id`, `College_Id`, `SemesterName`, `AcademicSession`, `Active`) VALUES ('3', '-1', 'Semester 3', '2022-2023', '1');
INSERT INTO `aauditdb`.`lookup_semester` (`Semester_Id`, `College_Id`, `SemesterName`, `AcademicSession`, `Active`) VALUES ('4', '-1', 'Semester 4', '2022-2023', '1');
INSERT INTO `aauditdb`.`lookup_semester` (`Semester_Id`, `College_Id`, `SemesterName`, `AcademicSession`, `Active`) VALUES ('5', '-1', 'Semester 5', '2022-2023', '1');
INSERT INTO `aauditdb`.`lookup_semester` (`Semester_Id`, `College_Id`, `SemesterName`, `AcademicSession`, `Active`) VALUES ('6', '-1', 'Semester 6', '2022-2023', '1');
INSERT INTO `aauditdb`.`lookup_semester` (`Semester_Id`, `College_Id`, `SemesterName`, `AcademicSession`, `Active`) VALUES ('7', '-1', 'Semester 7', '2022-2023', '1');
INSERT INTO `aauditdb`.`lookup_semester` (`Semester_Id`, `College_Id`, `SemesterName`, `AcademicSession`, `Active`) VALUES ('8', '-1', 'Semester 8', '2022-2023', '1');


INSERT INTO `aauditdb`.`lookup_scholarship` (`Scholarship_Id`, `College_Id`, `scholarshipName`, `amount`, `Active`) VALUES ('-1', '-1', 'Kanyashree', '999', '-1');
INSERT INTO `aauditdb`.`lookup_scholarship` (`Scholarship_Id`, `College_Id`, `scholarshipName`, `amount`, `Active`) VALUES ('-2', '-1', 'Scharlship 1', '888', '-1');
INSERT INTO `aauditdb`.`lookup_scholarship` (`Scholarship_Id`, `College_Id`, `scholarshipName`, `amount`, `Active`) VALUES ('-3', '-1', 'Scholarship 3', '777', '-1');


INSERT INTO `aauditdb`.`lookup_event_type` (`Event_Type_Id`, `College_Id`, `EventName`, `Active`) VALUES ('1', '-1', 'Webinars', '1');
INSERT INTO `aauditdb`.`lookup_event_type` (`Event_Type_Id`, `College_Id`, `EventName`, `Active`) VALUES ('2', '-1', 'Seminars', '1');
INSERT INTO `aauditdb`.`lookup_event_type` (`Event_Type_Id`, `College_Id`, `EventName`, `Active`) VALUES ('3', '-1', 'Meetings', '1');
INSERT INTO `aauditdb`.`lookup_event_type` (`Event_Type_Id`, `College_Id`, `EventName`, `Active`) VALUES ('4', '-1', 'Workshop', '1');
INSERT INTO `aauditdb`.`lookup_event_type` (`Event_Type_Id`, `College_Id`, `EventName`, `Active`) VALUES ('5', '-1', 'Sports', '1');

INSERT INTO `aauditdb`.`colleges` (`College_Id`, `CollegeName`, `CollegeURL`, `CollegeLogo`, `Active`) VALUES ('1', 'Scotish Church College', 'https://www.scottishchurch.ac.in/', 'scotish-church.png', '1');
INSERT INTO `aauditdb`.`colleges` (`College_Id`, `CollegeName`, `CollegeURL`, `CollegeLogo`, `Active`) VALUES ('2', 'Rammohan College', 'https://www.rammohancollege.ac.in/', 'rammohan-college-logo.jpg', '1');
INSERT INTO `aauditdb`.`colleges` (`College_Id`, `CollegeName`, `CollegeURL`, `CollegeLogo`, `Active`) VALUES ('3', 'St Xaviers College', 'https://www.sxccal.edu/', 'main-logo-sxc.jpg', '1');

INSERT INTO `aauditdb`.`employees` (`Employee_Id`, `College_Id`, `FirstName`, `LastName`, `PhoneNum`, `Designation_Id`, `Emp_Type_Id`, `SCST`, `Qualification`, `Active`) VALUES ('1', '2', 'Sucharita ROy', 'Roy', '91 1889101983', '2', '1', 'GN', 'PhD', '1');
INSERT INTO `aauditdb`.`employees` (`Employee_Id`, `College_Id`, `FirstName`, `LastName`, `Designation_Id`, `Emp_Type_Id`, `SCST`, `Qualification`, `Active`) VALUES ('2', '2', 'Saswati', 'Chatterjee', '1', '1', 'GN', 'PhD', '1');
INSERT INTO `aauditdb`.`employees` (`Employee_Id`, `College_Id`, `FirstName`, `LastName`, `Designation_Id`, `Emp_Type_Id`, `SCST`, `Active`) VALUES ('3', '2', 'Shantiranjan', 'Something', '2', '1', 'GN', '1');

INSERT INTO `aauditdb`.`departments` (`Dept_Id`, `Dept_Name`, `College_Id`, `Subject_Id`, `Dept_Head`, `Active`) VALUES ('1', 'Economics', '2', '3', '2', '1');
INSERT INTO `aauditdb`.`departments` (`Dept_Id`, `Dept_Name`, `College_Id`, `Dept_Head`, `Active`) VALUES ('2', 'Admin', '2', '1', '1');
INSERT INTO `aauditdb`.`departments` (`Dept_Id`, `Dept_Name`, `College_Id`, `Subject_Id`, `Dept_Head`, `Active`) VALUES ('3', 'Mathematics', '1', '6', '3', '1');

INSERT INTO `aauditdb`.`employee_dept` (`Emp_Dept_ID`, `Dept_Id`, `Employee_Id`, `College_Id`, `Active`) VALUES ('1', '1', '1', '2', '1');
INSERT INTO `aauditdb`.`employee_dept` (`Emp_Dept_ID`, `Dept_Id`, `Employee_Id`, `College_Id`, `Active`) VALUES ('2', '1', '2', '2', '2');

INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('1', '-1', '1', 'ECON-H-CC1-1-Th', '4', 'Microeconomics (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('2', '-1', '2', 'ECON-H-CC2-2-Th', '4', 'Microeconomics (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('3', '-1', '3', 'ECON-H-CC3-3-Th', '4', 'Microeconomics (II) ', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('4', '-1', '3', 'ECON-H-CC4-3-Th', '4', 'Development Economics (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('5', '-1', '4', 'ECON-H-CC5-4-Th', '4', 'Mathematical Economics (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('6', '-1', '4', 'ECON-H-CC6-4-Th', '4', 'Macroeconomics (II)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('7', '-1', '4', 'ECON-H-CC7-4-Th', '4', 'Statistics for Economic', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('8', '-1', '4', 'ECON-H-CC8-4-Th', '4', 'Indian Economics (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('9', '-1', '5', 'ECON-H-CC9-5-Th', '4', 'Microeconomics (III)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('10', '-1', '5', 'ECON-H-CC10-5-Th', '4', 'Macroeconomics (III)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('11', '-1', '5', 'ECON-H-CC11-5-Th', '4', 'Mathematical Economics (II)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('12', '-1', '5', 'ECON-H-CC12-5-Th', '4', 'Econometrics (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('13', '-1', '6', 'ECON-H-CC13-6-Th', '4', 'International Economics (I', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('14', '-1', '6', 'ECON-H-CC14-6-Th', '4', 'Environmental & Resource Economics (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('15', '-1', '6', 'ECON-H-CC15-6-Th', '4', 'Public Economics (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('16', '-1', '7', 'ECON-H-CC16-7-Th', '4', 'Financial Economics (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('17', '-1', '7', 'ECON-H-CC17-7-Th', '4', 'Development Economics (II)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('18', '-1', '7', 'ECON-H-CC18-7-Th', '4', 'Environmental & Resource Economics (II)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('19', '-1', '7', 'ECON-H-CC19-7-Th', '4', 'Advanced Microeconomic Theory', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('20', '-1', '7', 'ECON-H-CC20-7-Th', '4', 'A) PUBLIC ECONOMICS (II)/ B) INDIAN ECONOMICS (II)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('21', '-1', '8', 'ECON-H-CC21-8-Th', '4', 'Econometrics (II) ', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('22', '-1', '8', 'ECON-H-CC22-8-Th', '4', 'International Economics (II) ', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('23', '-1', '8', 'ECON-H-CC23-8-Th', '4', 'Advanced Macroeconomic Theor', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('24', '-1', '8', 'ECON-H-CC24-8-Th', '4', 'A) FINANCIAL ECONOMICS (II)/B) MANAGERIAL ECONOMIC', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('25', '-1', '8', 'ECON-H-CC25-8-Th', '4', 'A) GENDER ECONOMICS / B) INDIAN ECONOMIC HISTOR', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('26', '-1', '1', 'ECON-H-SEC1-1-Th', '3', 'Introductory Statistics & Application (I)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('27', '-1', '2', 'ECON-H-SEC2-2-Th', '3', 'Introductory Statistics & Application (II)', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('28', '-1', '3', 'ECON-H-SEC3-3-Th', '3', 'Data Analysis and Research Methodology', '45', '1');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semister_Id`, `Course_Id`, `CourseCredit`, `CourseName`, `CourseLectureHours`, `Active`) VALUES ('29', '-1', '1', 'ECON-H-IDC-1/2/3-Th', '3', ' Elementary Economics', '45', '1');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC1' WHERE (`Syllabus_Id` = '1');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC2' WHERE (`Syllabus_Id` = '2');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC3' WHERE (`Syllabus_Id` = '3');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC4' WHERE (`Syllabus_Id` = '4');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC5' WHERE (`Syllabus_Id` = '5');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC6' WHERE (`Syllabus_Id` = '6');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC7' WHERE (`Syllabus_Id` = '7');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC8' WHERE (`Syllabus_Id` = '8');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC9' WHERE (`Syllabus_Id` = '9');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC10' WHERE (`Syllabus_Id` = '10');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC11' WHERE (`Syllabus_Id` = '11');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC12' WHERE (`Syllabus_Id` = '12');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC13' WHERE (`Syllabus_Id` = '13');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC14' WHERE (`Syllabus_Id` = '14');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC15' WHERE (`Syllabus_Id` = '15');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC16' WHERE (`Syllabus_Id` = '16');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC17' WHERE (`Syllabus_Id` = '17');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC18' WHERE (`Syllabus_Id` = '18');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC19' WHERE (`Syllabus_Id` = '19');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC20' WHERE (`Syllabus_Id` = '20');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC21' WHERE (`Syllabus_Id` = '21');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC22' WHERE (`Syllabus_Id` = '22');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC23' WHERE (`Syllabus_Id` = '23');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC24' WHERE (`Syllabus_Id` = '24');
UPDATE `aauditdb`.`courses` SET `Course` = 'CC25' WHERE (`Syllabus_Id` = '25');
UPDATE `aauditdb`.`courses` SET `Course` = 'SEC1' WHERE (`Syllabus_Id` = '26');
UPDATE `aauditdb`.`courses` SET `Course` = 'SEC2' WHERE (`Syllabus_Id` = '27');
UPDATE `aauditdb`.`courses` SET `Course` = 'SEC3' WHERE (`Syllabus_Id` = '28');
UPDATE `aauditdb`.`courses` SET `Course` = 'IDC' WHERE (`Syllabus_Id` = '29');

INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semester_Id`, `Course`, `CourseCode`, `CourseCredit`, `CourseName`, `CourseLectureHours`) VALUES ('30', '-1', '1', 'MDC1', 'ECON-MD-CC1-1-Th ', '4', 'Microeconomics (I) ', '45');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semester_Id`, `Course`, `CourseCode`, `CourseCredit`, `CourseName`, `CourseLectureHours`) VALUES ('31', '-1', '2', 'MDC2', 'ECON-MD-CC2-2-Th ', '4', 'Macroeconomics (I) ', '45');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semester_Id`, `Course`, `CourseCode`, `CourseCredit`, `CourseName`, `CourseLectureHours`) VALUES ('32', '-1', '3', 'MDC3', 'ECON-MD-CC3-3-Th ', '4', 'Development Economics (I)', '45');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semester_Id`, `Course`, `CourseCode`, `CourseCredit`, `CourseName`, `CourseLectureHours`) VALUES ('33', '-1', '4', 'MDC4', 'ECON-MD-CC4-4-Th ', '4', 'Indian Economics (I)', '45');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semester_Id`, `Course`, `CourseCode`, `CourseCredit`, `CourseName`, `CourseLectureHours`) VALUES ('34', '-1', '5', 'MDC5', 'ECON-MD-CC5-4-Th ', '4', 'Sustainable Development ', '45');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semester_Id`, `Course`, `CourseCode`, `CourseCredit`, `CourseName`, `CourseLectureHours`) VALUES ('35', '-1', '5', 'MDC6', 'ECON-MD-CC6-5-Th ', '4', 'Economic History of India (1857-1947)', '45');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semester_Id`, `Course`, `CourseCode`, `CourseCredit`, `CourseName`, `CourseLectureHours`) VALUES ('36', '-1', '6', 'MDC7', 'ECON-MD-CC7-5-Th ', '4', 'Public Finance', '45');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semester_Id`, `Course`, `CourseCode`, `CourseCredit`, `CourseName`, `CourseLectureHours`) VALUES ('37', '-1', '6', 'MDC7', 'ECON-MD-CC7-6-Th ', '4', 'Public Finance', '45');
INSERT INTO `aauditdb`.`courses` (`Syllabus_Id`, `College_Id`, `Semester_Id`, `Course`, `CourseCode`, `CourseCredit`, `CourseName`, `CourseLectureHours`) VALUES ('38', '-1', '6', 'MDC8', 'ECON-MD-CC8-6-Th ', '4', 'Rural Development', '45');


{"UserName":"91-9051997689",
"College_Id":2,
"Employee_Id":1,
"Password": "p1", 
"UserRole": "DEPT HEAD"}
	
{"UserName":"91-6291168671",
"College_Id":2,
"Employee_Id":3,
"Password": "p1", 
"UserRole": "DEPT HEAD"}

