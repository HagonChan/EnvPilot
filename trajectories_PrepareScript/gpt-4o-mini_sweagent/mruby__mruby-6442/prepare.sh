
find_file '*.yml'
open ".github/workflows/build.yml"
ruby -v
apt update && apt install -y ruby build-essential
apt update --allow-releaseinfo-change && apt install -y ruby build-essential
sed -i.bak 's/^deb http://security.ubuntu.com/ubuntu/#deb http://security.ubuntu.com/ubuntu/' /etc/apt/sources.list && apt update && apt install -y ruby build-essential
sed -i.bak 's|^deb http://security.ubuntu.com/ubuntu|#deb http://security.ubuntu.com/ubuntu|' /etc/apt/sources.list && apt update && apt install -y ruby build-essential
rake -m test:run:serial
