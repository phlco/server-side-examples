var express = require('express');
var app = express();

app.set('view engine', 'ejs');

app.get('/', function (req, res) {
  res.send('Hello World!');
});

app.get('/', function(req, res){
  res.render('index');
});

app.get('/students', function(req, res){
  var locals = {
    students: [{name: 'phil'}]
  }
  res.render('students', locals);
});

var port = 3000;
var server = app.listen(port, function () {
  console.log('Example app running on port:' + port);
});
