const replace = require('replace-in-file');
fs = require('fs');

const express = require('express');
const path = require('path');
const app = express();
const port = process.env.PORT || 5500;

// sendFile will go here
app.use(express.static(__dirname + '/'));

app.get('/', function(req, res) {
    res.contentType('application/xml');
    res.sendFile(path.join(__dirname , 'index.xml'));
});

app.listen(port);
console.log('Server started at https://dailyarena.asciiden.com:' + port);

app.get(`/getBookmark`, function(req, res) {
    var request = require('request');
    let bookmarks_input = req.query.url;
    console.log(bookmarks_input);

    request(bookmarks_input, function (error, response, body) {
       if (!error && response.statusCode == 200) {
        res.contentType('text/plain');
        res.send( body.slice(38) );

        const options = {

            //Single file
            files: 'index.xml',
          
            //Replacement to make (string or regex) 
            from: /\<rss(.*)/,
            to: body.slice(38),
        };

        replace(options)
        .then(changedFiles => {
          console.log('Modified files:', changedFiles.join(', '));
        })
        .catch(error => {
          console.error('Error occurred:', error);
        });

        // fs.writeFile('helloworld.xml', body, function (err) {
        //     if (err) return console.log(err);
        //     console.log('Hello World > helloworld.txt');
        // });       
        }
    })
});