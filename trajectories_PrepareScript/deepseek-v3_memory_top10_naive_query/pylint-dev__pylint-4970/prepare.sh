ls -la
ls -la .github/workflows
open ".github/workflows/ci.yaml"
open "requirements_test.txt"
open "requirements_test_min.txt"
apt-get update && apt-get install -y python3 python3-pip
pip install -U -r requirements_test.txt
pytest --version
pytest
