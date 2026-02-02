ls -la
ls -la .github/workflows
open ".github/workflows/actions.yml"
open "requirements.txt"
open "requirements-common.txt"
apt-get update && apt-get install -y python3.11 python3.11-venv python3.11-dev
apt-get update && apt-get install -y python3.11 python3.11-venv python3.11-dev
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.11 python3.11-venv python3.11-dev
apt-get install -y software-properties-common
add-apt-repository ppa:deadsnakes/ppa -y && apt-get update && apt-get install -y python3.11 python3.11-venv python3.11-dev
apt-get install -y python3.11 python3.11-venv python3.11-dev
python3.11 -m venv venv
source venv/bin/activate && pip install -r requirements.txt
source venv/bin/activate && pip install pytest numpy
source venv/bin/activate && pip install scipy scikit-learn pillow
source venv/bin/activate && pip install tensorflow-cpu~=2.20.0 tf2onnx
source venv/bin/activate && pip install torch==2.9.1+cpu torch-xla==2.9.0

