
find_file '*.yml'
open ".github/workflows/test.yml"
scroll_down
curl -sL https://deb.nodesource.com/setup_18.x | bash -
wget -qO- https://deb.nodesource.com/setup_18.x | bash -
apt update
apt install -y nodejs
node -v
apt install -y mongodb
apt install -y gnupg wget 

wget -qO - https://www.mongodb.org/static/pgp/server-6.0.asc | gpg --dearmor -o /usr/share/keyrings/mongodb-archive-keyring.gpg

echo "deb [signed-by=/usr/share/keyrings/mongodb-archive-keyring.gpg] https://repo.mongodb.org/apt/ubuntu jammy/mongodb-org/6.0 multiverse" | tee /etc/apt/sources.list.d/mongodb-org-6.0.list

apt update

apt install -y mongodb-org
mongod --version
curl -fsSL https://deb.nodesource.com/setup_18.x | bash -
wget -qO - https://deb.nodesource.com/setup_18.x | bash -
apt install -y nodejs
apt remove -y nodejs
apt install -y nodejs
apt remove -y libnode72
apt install -y nodejs
npm install
npm test
