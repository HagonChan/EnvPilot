
ls -R
open "requirements.txt"
apt-get install -y python3-pip
apt-get update
apt-get install -y python3-pip
pip install -r requirements.txt
python3 -m venv venv
apt-get install -y python3.10-venv
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
pytest
pip show requests
open "test_requests.py"
pip uninstall -y requests && pip install requests==2.25.1
pip uninstall -y requests && pip install requests==2.32.5
pytest
pip install requests==
pip uninstall -y requests && pip install requests==2.26.0
pip uninstall -y requests && pip install requests==2.32.5
pytest --ignore=test_requests.py
ls
open "test_requests.py"
edit 'class RequestsTestCase:' 'class TestRequests:' True
scroll_down
python -m unittest discover
ls /usr/bin/python*
pytest --ignore=test_requests.py
scroll_down
pytest -v
pytest --ignore=test_requests.py
pytest -k test_request_ok_set
