const express = require('express');
const path = require('path');

const app = express();
const port = process.env.PORT || 8080;

// sendFile will go here
app.get('/', function(req, res) {
    res.type('application/xml');
    res.sendFile(path.join(__dirname , 'xml.xml'));
});

app.listen(port);
console.log('Server started at http://localhost:' + port);








// var request = require('request');

// request('https://api.daily.dev/rss/b/ba09c868-5000-462c-8e8d-3e54d7f25c3c', function (error, response, body) {
//    if (!error && response.statusCode == 200) {
//        console.log(body) // Show the HTML for the Google homepage.
//    }
// })