ls -la
ls -la .github/workflows
open ".github/workflows/ci.yml"
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
apt-get update && apt-get install -y npm
node --version && npm --version
npm ci
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev && curl -fsSL https://deb.nodesource.com/setup_20.x | bash - && apt-get install -y nodejs
node --version && npm --version
npm ci
npm run test:node
npm run test:browser
npm run test:package
npm run build
npm run test:package
open "test/unit/adapters/http.js"
search_file HTTPS test/unit/adapters/http.js
goto 1471
edit 'it('"'"'should support HTTPS protocol'"'"', function (done) {
    server = http.createServer(function (req, res) {
      setTimeout(function () {
        res.end();
      }, 1000);
    }).listen(4444, function () {
      axios.get('"'"'https://www.google.com'"'"')
        .then(function (res) {
          assert.equal(res.request.agent.protocol, '"'"'https:'"'"');
          done();
        })
    })
  });' 'it('"'"'should support HTTPS protocol'"'"', function (done) {
    server = https.createServer({
      key: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/key.pem'"'"')),
      cert: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/cert.pem'"'"'))
    }, function (req, res) {
      setTimeout(function () {
        res.end();
      }, 1000);
    }).listen(4444, function () {
      axios.get('"'"'https://localhost:4444'"'"')
        .then(function (res) {
          assert.equal(res.request.agent.protocol, '"'"'https:'"'"');
          done();
        })
    })
  });'
npm run test:node
mkdir -p /testbed/test/fixtures && openssl req -x509 -newkey rsa:4096 -keyout /testbed/test/fixtures/key.pem -out /testbed/test/fixtures/cert.pem -days 365 -nodes -subj "/CN=localhost"
npm run test:node
edit 'it('"'"'should support HTTPS protocol'"'"', function (done) {
    server = https.createServer({
      key: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/key.pem'"'"')),
      cert: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/cert.pem'"'"'))
    }, function (req, res) {
      setTimeout(function () {
        res.end();
      }, 1000);
    }).listen(4444, function () {
      axios.get('"'"'https://localhost:4444'"'"')
        .then(function (res) {
          assert.equal(res.request.agent.protocol, '"'"'https:'"'"');
          done();
        })
    })
  });' 'it('"'"'should support HTTPS protocol'"'"', function (done) {
    server = https.createServer({
      key: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/key.pem'"'"')),
      cert: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/cert.pem'"'"'))
    }, function (req, res) {
      console.log('"'"'HTTPS server received request'"'"');
      setTimeout(function () {
        res.end();
        console.log('"'"'HTTPS server responded'"'"');
      }, 1000);
    }).listen(4444, function () {
      console.log('"'"'HTTPS server listening on port 4444'"'"');
      axios.get('"'"'https://localhost:4444'"'"')
        .then(function (res) {
          console.log('"'"'Axios received response'"'"');
          assert.equal(res.request.agent.protocol, '"'"'https:'"'"');
          done();
        })
        .catch(function (err) {
          console.error('"'"'Axios request failed:'"'"', err);
          done(err);
        });
    })
  });'
npm run test:node
edit 'it('"'"'should support HTTPS protocol'"'"', function (done) {
    server = https.createServer({
      key: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/key.pem'"'"')),
      cert: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/cert.pem'"'"'))
    }, function (req, res) {
      console.log('"'"'HTTPS server received request'"'"');
      setTimeout(function () {
        res.end();
        console.log('"'"'HTTPS server responded'"'"');
      }, 1000);
    }).listen(4444, function () {
      console.log('"'"'HTTPS server listening on port 4444'"'"');
      axios.get('"'"'https://localhost:4444'"'"')
        .then(function (res) {
          console.log('"'"'Axios received response'"'"');
          assert.equal(res.request.agent.protocol, '"'"'https:'"'"');
          done();
        })
        .catch(function (err) {
          console.error('"'"'Axios request failed:'"'"', err);
          done(err);
        });
    })
  });' 'it('"'"'should support HTTPS protocol'"'"', function (done) {
    server = https.createServer({
      key: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/key.pem'"'"')),
      cert: fs.readFileSync(path.join(__dirname, '"'"'../../fixtures/cert.pem'"'"'))
    }, function (req, res) {
      console.log('"'"'HTTPS server received request'"'"');
      setTimeout(function () {
        res.end();
        console.log('"'"'HTTPS server responded'"'"');
      }, 1000);
    }).listen(4444, function () {
      console.log('"'"'HTTPS server listening on port 4444'"'"');
      axios.get('"'"'https://localhost:4444'"'"', { httpsAgent: new https.Agent({ rejectUnauthorized: false }) })
        .then(function (res) {
          console.log('"'"'Axios received response'"'"');
          assert.equal(res.request.agent.protocol, '"'"'https:'"'"');
          done();
        })
        .catch(function (err) {
          console.error('"'"'Axios request failed:'"'"', err);
          done(err);
        });
    })
  });'
npm run test:node
