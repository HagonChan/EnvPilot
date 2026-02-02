ls -la
ls -la .github/workflows
open ".github/workflows/actions.yml"
open "requirements.txt"
open "pyproject.toml"
open "README.md"
pip install -r requirements.txt --progress-bar off --upgrade
python -m ensurepip --upgrade
which python3
apt-get update && apt-get install -y python3 python3-pip
python3 -m pip install -r requirements.txt --progress-bar off --upgrade
open "requirements.txt"
python3 -m pip install jax[cpu] --progress-bar off --upgrade
python3 -m pip install -e .
python3 -m pip install .
python3 -m pytest keras/src
python3 -m pip install pytest
python3 -m pytest keras/src
python3 -m pip install optree
python3 -m pytest keras/src
python3 -m pip install tensorflow
python3 -m pytest keras/src
python3 -m pip install orbax torch scikit-learn
python3 -m pytest keras/src
python3 -m pip install onnxruntime pandas grain
python3 -m pytest keras/src
python3 -m pytest keras/src/applications/applications_test.py::ApplicationsTest::test_application_base_InceptionResNetV2_channels_last keras/src/applications/applications_test.py::ApplicationsTest::test_application_base_MobileNetV2_channels_last keras/src/applications/applications_test.py::ApplicationsTest::test_application_base_VGG16_channels_last -v
