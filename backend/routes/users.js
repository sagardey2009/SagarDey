
const express = require('express');
const connection = require('../connection');
const router = express.Router();
module.express = express;

const jwt = require('jsonwebtoken');
const nodemailer = require('nodemailer');
require('dotenv').config();

/** Registered Login */
/*********************/
router.post('/login', (req, res) => {
    let user = req.body;
    
    selectquery = "select username, password from users where active = 1 and username = ?";
    //console.log ("user.UserName = " + user.UserName); 

    connection.query(selectquery, [user.UserName], (err, results) => 
    {
        if (!err)
        {
            if (results.length <=0 )
                return res.status(401).json({message: "The phone number has not been registered"});
            else 
            {
                console.log("results[0].password =" + results[0].password);
                console.log("user.Password =" + user.Password);

                if (user.Password == results[0].password )
                {
                    // const response = { email: results[0].email, role: results[0].role };
                    // const accessToken = jwt.sign(response, process.env.ACCESS_TOKEN, {expiresIn: '8h'});
                    return res.status(200).json({message: "Successfully Logged in"});
                }
                else
                    return res.status(401).json({message: "Invalid username or password"});
            } 
        } 
        else 
            return res.status(500).json(err);
    })
})

/** Registered User */
/*********************/
router.post('/signup', (req, res) => {
    let user = req.body;
    selectquery = "select * from viewuser where username = ?";

    connection.query(selectquery, [user.UserName], (err, results) => {
        if (!err){
            if (results.length <=0 ){
                insertquery = "insert into aauditdb.users(UserName, College_Id, Employee_Id, Password, UserRole ) values(?,?,?,?,?)";
                connection.query(insertquery, [user.UserName, user.College_Id, user.Employee_Id, user.Password, user.UserRole], (err, results) => {
                    if (!err){
                        return res.status(200).json({message: "Successfully  Registered"})
                    } else {
                        return res.status(500).json(err);
                    }
                })
            } else {
                return res.status(400).json({message: "Phone Number already exists"});
            }
            
        } else {
            return res.status(500).json(err);
        }    
    });
})


var transporter = nodemailer.createTransport(
    {
        service: 'gmail',
        auth:
        {
            user: process.env.Email,
            pass: process.env.Password
        }
    }
)


router.post('/forgotpassword', (req, res) =>
{
    const user = req.body;
    query = "select username, password from user where email=?";
    connection.query(express.query, [user.Email], (err, results) =>
    {
        if (!err)
        {
            if (results.length <=0)
                return res.status(200).json({message: "Password has been sent to your email"});
            else
            {
                var mailOptions = {
                    from: process.env.EMAIL,
                    to: results[0].email,
                    subject: 'password reset email by audit system',
                    html: '<p>Your login details for Auto Audit System</p>'
                }

                transporter.sendMail(mailOptions, function(error, info){
                    if (error)
                        console.log(error);
                    else
                        console.log("Email sent " + info.respose);
                })
            }
        }
        else
            return res.status(500).json(err);
    })
})

module.exports = router;
