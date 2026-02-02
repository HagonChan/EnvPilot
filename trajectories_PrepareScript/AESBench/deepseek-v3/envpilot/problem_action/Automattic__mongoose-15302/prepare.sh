ls -la
ls -la .github/workflows
open ".github/workflows/test.yml"
node --version
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
apt-get install -y curl
apt-get update
apt-get install -y curl
curl -fsSL https://deb.nodesource.com/setup_22.x | bash - && apt-get install -y nodejs
node --version && npm --version
apt-get install -y mongodb
curl -fsSL https://www.mongodb.org/static/pgp/server-7.0.asc | gpg --dearmor -o /usr/share/keyrings/mongodb.gpg
echo "deb [signed-by=/usr/share/keyrings/mongodb.gpg] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/7.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-7.0.list
apt-get update && apt-get install -y mongodb-org
mongod --fork --logpath /var/log/mongodb.log
mkdir -p /data/db && chown -R `whoami` /data/db
mongod --fork --logpath /var/log/mongodb.log
npm install
npm test
open "test/document.test.js" 1752
open "lib/document.js"
search_dir setter lib
open "lib/schemaType.js"
open "lib/schema.js"
search_file setter lib/document.js
search_file applySetters lib/schema.js
search_file applySetters lib/schemaType.js
edit 'let v = this._applySetters(value, scope, init, priorVal, options);' 'let v = this._applySetters(value, scope, init, priorVal == null ? null : priorVal, options);' False
open "lib/schemaType.js" 1249
edit 'SchemaType.prototype.applySetters = function(value, scope, init, priorVal, options) {
  let v = this._applySetters(value, scope, init, priorVal, options);
  if (v == null) {
    return this._castNullish(v);
  }
  // do not cast until all setters are applied #665
  v = this.cast(v, scope, init, priorVal, options);

  return v;
};' 'SchemaType.prototype.applySetters = function(value, scope, init, priorVal, options) {
  if (priorVal === undefined) {
    priorVal = null;
  }
  let v = this._applySetters(value, scope, init, priorVal, options);
  if (v == null) {
    return this._castNullish(v);
  }
  // do not cast until all setters are applied #665
  v = this.cast(v, scope, init, priorVal, options);

  return v;
};'
npm test
