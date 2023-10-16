const express = require('express');
const connection = require('../connection');
const router = express.Router();
module.express = express;

/** Get Designations */
/*********************/

router.get('/getdesignations', (req, res, next) => {
    let clgid = req.body;
    selectquery = "select Designation_Id, DesignationName from lookup_designation where active = 1 and College_Id = ?";

    connection.query(selectquery, [clgid.college_id], (err, results) => 
    {
        if (!err)
            return res.status(200).json(results);
        else 
            return res.status(500).json(err);
    })
})

/** Get Semester */
/*********************/
router.get('/getsemesters', (req, res, next) => {
    let clgid = req.body;
    selectquery = "select Semester_Id, SemesterName, AcademicSession from lookup_semester where active = 1 and College_Id = ?";

    connection.query(selectquery, [clgid.college_id], (err, results) => 
    {
        if (!err)
            return res.status(200).json(results);
        else 
            return res.status(500).json(err);
    })
})

/** Get Event Type */
/*********************/
router.get('/geteventypes', (req, res, next) => {
    let clgid = req.body;
    selectquery = "select Event_Type_Id, EventName from lookup_event_type where active = 1 and College_Id = ?";

    connection.query(selectquery, [clgid.college_id], (err, results) => 
    {
        if (!err)
            return res.status(200).json(results);
        else 
            return res.status(500).json(err);
    })
})

/** Get Employee Type */
/*********************/
router.get('/getemptypes', (req, res, next) => {
    let clgid = req.body;
    selectquery = "select Emp_Type_Id, EmpTypeName from lookup_employee_type where active = 1 and College_Id = ?";

    connection.query(selectquery, [clgid.college_id], (err, results) => 
    {
        if (!err)
            return res.status(200).json(results);
        else 
            return res.status(500).json(err);
    })
})

/** Get Subjects */
/*********************/
router.get('/getsubjects', (req, res, next) => {
    let clgid = req.body;
    selectquery = "select Subject_Id, SubjectName from lookup_subject where active = 1 and College_Id = ?";

    connection.query(selectquery, [clgid.college_id], (err, results) => 
    {
        if (!err)
            return res.status(200).json(results);
        else 
            return res.status(500).json(err);
    })
})

/** Get Scholarships */
/*********************/
router.get('/getscholarships', (req, res, next) => {
    let clgid = req.body;
    selectquery = "select Scholarship_Id, scholarshipName, Amount from lookup_scholarship where active = 1 and College_Id = ?";

    connection.query(selectquery, [clgid.college_id], (err, results) => 
    {
        if (!err)
            return res.status(200).json(results);
        else 
            return res.status(500).json(err);
    })
})


/** Get Designations */
/*********************/

router.get('/getcommittees', (req, res, next) => {
    let clgid = req.body;
    selectquery = "select Committee_Id, CommitteeName from lookup_committees where active = 1 and (College_Id = -1 or College_Id = ?)";

    connection.query(selectquery, [clgid.college_id], (err, results) => 
    {
        if (!err)
            return res.status(200).json(results);
        else 
            return res.status(500).json(err);
    })
})

module.exports = router;