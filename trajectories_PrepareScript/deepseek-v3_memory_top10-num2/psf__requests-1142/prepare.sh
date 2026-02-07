ls -la
open ".travis.yml"
open "Makefile"
open "requirements.txt"
apt-get install -y python3-pip
apt-get update
apt-get install -y python3-pip
pip install -r requirements.txt
pip install requests
make test
pip install --upgrade requests
pip install requests==2.31.0
make test
pip install --upgrade urllib3
python3 -m venv venv
apt install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pip install requests
make test
pip install requests==2.25.1
make test
pip install requests==2.31.0
make test
pip install --upgrade urllib3==2.0.0
make test
apt install -y python3.9 python3.9-venv
add-apt-repository ppa:deadsnakes/ppa -y
apt install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y
apt update
apt install -y python3.9 python3.9-venv
python3.9 -m venv venv39
source venv39/bin/activate
pip install -r requirements.txt
pip install requests
make test
pip install requests==2.25.1
make test
pip install --upgrade urllib3==1.26.20
pip install requests==2.22.0
make test
apt install -y python3.7 python3.7-venv
python3.7 -m venv venv37
source venv37/bin/activate
pip install -r requirements.txt
pip install requests
make test

