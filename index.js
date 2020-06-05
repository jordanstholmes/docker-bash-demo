const express = require('express');
const app = express();
const path = require('path');
const fs = require('fs');


app.get('/', (req, res) => {
  fs.readFile(path.join(__dirname, 'newFile.txt'), 'utf8', (err, contents) => {
    if (err) {
      return res.send('No interesting files here...')
    }
    res.send(`Hey! I found something: ${contents}`);
  });
});

console.log('listening on port 3000...\n');
app.listen(3000);