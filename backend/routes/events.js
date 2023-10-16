const express = require('express');
const connection = require('../connection');
const router = express.Router();
module.express = express;

/** Get Designations */
/*********************/

router.get('/getevents', (req, res, next) => {
    let clgid = req.body;
    selectquery = "select * from view_events where College_Id = -1 or College_Id = ?";

    connection.query(selectquery, [clgid.college_id], (err, results) => {
        if (!err)
            return res.status(200).json(results);
        else
            return res.status(500).json(err);
    })
})


/** Registered User */
/*********************/
router.post('/createevent', (req, res) => {
    let eventDetails = req.body;

    insertquery = "Call insert_update_events(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
    connection.query(insertquery, [eventDetails.Eventid, eventDetails.EventTypeId, eventDetails.clg_id, eventDetails.dept_id, eventDetails.committee_id,
    eventDetails.Eventname, eventDetails.EventLocation, eventDetails.EventPurpose, eventDetails.EventNotes,
    eventDetails.EventOutcome, eventDetails.EventNext, eventDetails.EventFrom, eventDetails.EventDate, eventDetails.EventTo,
    eventDetails.user_id, eventDetails.EventAttendess, eventDetails.EventFiles], (err, results) => {
        if (!err) {
            return res.status(200).json({ message: "Successfully  Created" })
        } else {
            return res.status(500).json(err);
        }
    })

})


module.exports = router;