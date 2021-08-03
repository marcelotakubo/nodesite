'use strict';

const express = require('express');
const request = require('supertest');

// Constants
const PORT = 8080;
const HOST = '0.0.0.0';

// App
const app = express();

app.get('/tree', (req, res) => {
  res.json({
    myFavouriteTree: 'Brazilwood'
  });
});

// Requires answer to be 200 and JSON
request(app)
  .get('/tree')
  .expect('Content-Type', /json/)
  .expect(200)
  .end(function(err, res) {
    if (err) throw err;
  });


app.listen(PORT, HOST);
console.log(`Running on http://${HOST}:${PORT}`);
