ls -la
open ".travis.yml"
open "Makefile"
apt-get update && apt-get install -y gcc g++ cmake make libssl-dev libyaml-dev
open "requirements.txt"
pip install -r requirements.txt
apt-get install -y python3-pip
pip3 install -r requirements.txt
make test
pip3 install --upgrade requests
ls -la
rm -rf requests
make test
open "test_requests.py"
edit 'def hook(resp):
        resp.hook_working = True
        return resp' 'def hook(resp, **kwargs):
        resp.hook_working = True
        return resp'
search_file test_prepared_request_hook test_requests.py
goto 264
edit 'def hook(resp):
            resp.hook_working = True
            return resp' 'def hook(resp, **kwargs):
            resp.hook_working = True
            return resp'
make test
