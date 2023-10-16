require('dotenv').config();
const http = require('http');
const app = require('./index');

const server = http.createServer(app, function(request, response){
    console.log(request.url);
});

server.listen(8080, function(){
    console.log('I am listening to port 8080');
});
