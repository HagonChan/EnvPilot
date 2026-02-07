ls -la
ls -la .github/workflows
open ".github/workflows/e2e-couchdb.yml"
open "package.json"
node --version
curl -fsSL https://deb.nodesource.com/setup_lts.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y npm
node --version && npm --version
npm ci --no-audit --progress=false
apt-get remove -y nodejs
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && apt-get install -y nodejs
apt-get remove -y libnode-dev
apt-get install -y nodejs
apt-get remove -y libnode72
dpkg --force-all -r libnode72
apt-get install -y nodejs
node --version && npm --version
npm ci --no-audit --progress=false
npx playwright install
apt-get install -y libnss3 libnspr4 libgbm1 libasound2
npx playwright install
apt-get install -y libgstreamer1.0-0 libxslt1.1 libvpx7 libevent-2.1-7 libopus0 libgstreamer-plugins-base1.0-0 libwebpdemux2 libharfbuzz-icu0 libenchant-2-2 libsecret-1-0 libhyphen0 libmanette-0.2-0 libflite1 libflite-usenglish libflite-cmulex libflite-cmus-time libflite-cmus-us libflite-cmus-rms libflite-cmus-slt libflite-cmus-kal libflite-cmus-kal16 libflite-cmus-awb libflite-cmus-indic libflite-cmus-grapheme libgles2 libx264-163
npx playwright install
npm run test:e2e:couchdb
npx playwright show-report ../html-test-results
systemctl status couchdb
ps aux | grep couchdb
docker pull couchdb:3.3.2 && docker run -d --name couchdb -p 5984:5984 -e COUCHDB_USER=admin -e COUCHDB_PASSWORD=password couchdb:3.3.2
apt-get update && apt-get install -y docker.io
service docker start && service docker status
systemctl start docker && systemctl status docker
dockerd
apt-get install -y couchdb
curl -sL https://couchdb.apache.org/repo/keys.asc | gpg --dearmor | tee /usr/share/keyrings/couchdb-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/couchdb.list && apt-get update && apt-get install -y couchdb
apt-get install -y lsb-release
rm /etc/apt/sources.list.d/couchdb.list && apt-get update && apt-get install -y lsb-release
curl -sL https://couchdb.apache.org/repo/keys.asc | gpg --dearmor | tee /usr/share/keyrings/couchdb-archive-keyring.gpg >/dev/null && echo "deb [signed-by=/usr/share/keyrings/couchdb-archive-keyring.gpg] https://apache.jfrog.io/artifactory/couchdb-deb/ $(lsb_release -cs) main" | tee /etc/apt/sources.list.d/couchdb.list && apt-get update && apt-get install -y couchdb
dpkg --configure -a
service couchdb start && service couchdb status
groupadd couchdb && useradd -g couchdb couchdb
service couchdb start && service couchdb status
curl -X GET http://localhost:5984/
cat /var/log/couchdb/couchdb.log
cat /etc/couchdb/local.ini
mkdir -p /etc/couchdb && echo "[httpd]\nbind_address = 0.0.0.0\nport = 5984" > /etc/couchdb/local.ini
service couchdb restart && service couchdb status

