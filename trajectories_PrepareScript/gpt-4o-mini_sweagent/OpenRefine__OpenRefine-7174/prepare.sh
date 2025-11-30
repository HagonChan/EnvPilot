ls -R
find . -name "requirements.txt" -o -name "setup.py" -o -name "pyproject.toml" -o -name "package.json" -o -name "Gemfile"
open ".github/workflows/label_transfer/requirements.txt"
open "main/tests/cypress/package.json"
open "main/webapp/package.json"
apt update
pip install -r .github/workflows/label_transfer/requirements.txt
python3 --version
apt install python3 python3-pip -y
pip install -r .github/workflows/label_transfer/requirements.txt
npm install --prefix main/tests/cypress
apt install nodejs npm -y
npm install --prefix main/tests/cypress
nodejs --version
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs
apt install curl -y
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs
apt remove nodejs libnode-dev -y
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs
apt remove libnode72 -y
curl -fsSL https://deb.nodesource.com/setup_16.x | bash - && apt install -y nodejs
npm install --prefix main/tests/cypress
npm install --prefix main/webapp
npm test --prefix main/tests/cypress
apt install xvfb -y
npm test --prefix main/tests/cypress
apt install libnss3 -y
npm test --prefix main/tests/cypress
apt install libgbm1 -y
npm test --prefix main/tests/cypress
apt install libasound2 -y
npm test --prefix main/tests/cypress
open "main/webapp/package.json"
find . -name "README.md"
open "README.md"
./refine
java -version
apt install default-jdk -y
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && ./refine
apt install maven -y
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64 && ./refine
export JAVA_HOME=/usr/lib/jvm/java-11-openjdk-amd64
./refine
./refine &
npm test --prefix main/tests/cypress
tail -f logs/refine.log
fg
ps aux | grep refine
./refine

