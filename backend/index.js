const express = require('express');
//var bodyParser = require('body-parser');
var cors = require('cors');

const connection = require('./connection');
//const usersRoute = require('./routes/users');
const usersRoute = require('./routes/users');
const lookupRoute = require('./routes/lookup');
const eventsRoute = require('./routes/events');


const app=express();
app.use(cors());
app.use(express.urlencoded({extended:true}));
app.use(express.json());
app.use('/users',usersRoute);
app.use('/lookup',lookupRoute);
app.use('/events',eventsRoute);

module.exports = app;
