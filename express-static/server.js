var express = require('express');
var app = express();

app.get('/', function (req, res) {
  res.send('Hello World!');
});

var port = 3000;
var server = app.listen(port, function () {
  console.log('Example app running on port:' + port);
});
