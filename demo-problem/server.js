const fs = require('fs');
const http = require('http');

const port = process.env.PORT || 3333;
const host = process.env.HOST || 'localhost';

const handler = (req, res) => {
  const url = req.url;
  console.log('URL: ', url);
  if (url === '/') {
    fs.readFile('index.html', (err, data) => {
      if (err)
        throw err;
      res.writeHead(200, {'Content-type':'text/html'});
      res.end(data);
    });
  } else if (url.includes('.')) {
    const ext = url.split('.')[url.split('.').length - 1];
    fs.readFile('.' + url, (err, data) => {
      if (err)
        throw err;
      res.writeHead(200, {'Content-type': 'text/' + ext});
      res.end(data);
    });
  } else {
    res.writeHead(404, {'Content-type':'text/plain'});
    res.end('404 not found');
  }
};

const server = http.createServer(handler);

server.listen({
  port,
  host
});

console.log(`Server running on http://${host}:${port}`);
