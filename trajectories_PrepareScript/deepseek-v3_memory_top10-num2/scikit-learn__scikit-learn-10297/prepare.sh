ls -la
open ".travis.yml"
open "setup.py"
apt-get update && apt-get install -y libblas-dev liblapack-dev python3-dev build-essential
apt-get install -y python3-pip
python3 -m pip install --upgrade pip && python3 -m pip install numpy scipy
python3 -m pip install pytest
python3 -m pip install -e .
open "setup.py"
edit 'extra_setuptools_args = dict()' 'from setuptools import find_packages

extra_setuptools_args = dict(
    packages=find_packages(),
)'
python3 -m pip install -e .
edit 'import sys
import os
import shutil
from distutils.command.clean import clean as Clean
from pkg_resources import parse_version
import traceback' 'import sys
import os
import shutil
from distutils.command.clean import clean as Clean
from pkg_resources import parse_version
import traceback
from setuptools import find_packages'
goto 8
edit 'import traceback' 'import traceback
from setuptools import find_packages'
edit 'from setuptools import find_packages' '' True
edit 'import traceback' 'import traceback
from setuptools import find_packages'
python3 -m pip install -e .
edit 'else:
    

extra_setuptools_args = dict(' 'else:
    extra_setuptools_args = dict('
python3 -m pip install -e .
edit 'extra_setuptools_args = dict(
    packages=find_packages(),
)' 'extra_setuptools_args = dict(
    packages=['"'"'sklearn'"'"', '"'"'build_tools'"'"'],
)'
python3 -m pip install -e .
edit 'extra_setuptools_args = dict(
    packages=['"'"'sklearn'"'"', '"'"'build_tools'"'"'],
)' 'extra_setuptools_args = dict(
    packages=find_packages(exclude=['"'"'build_tools*'"'"']),
)'
python3 -m pip install -e .
python3 -m pip install .
edit 'extra_setuptools_args = dict(
    packages=find_packages(exclude=['"'"'build_tools*'"'"']),
)' 'extra_setuptools_args = dict(
    packages=['"'"'sklearn'"'"', '"'"'sklearn.utils'"'"', '"'"'sklearn.datasets'"'"', '"'"'sklearn.ensemble'"'"', '"'"'sklearn.tree'"'"', '"'"'sklearn.neighbors'"'"', '"'"'sklearn.svm'"'"', '"'"'sklearn.linear_model'"'"', '"'"'sklearn.cluster'"'"', '"'"'sklearn.decomposition'"'"', '"'"'sklearn.metrics'"'"', '"'"'sklearn.model_selection'"'"', '"'"'sklearn.preprocessing'"'"', '"'"'sklearn.feature_extraction'"'"', '"'"'sklearn.feature_selection'"'"', '"'"'sklearn.externals'"'"', '"'"'sklearn.gaussian_process'"'"', '"'"'sklearn.neural_network'"'"', '"'"'sklearn.covariance'"'"', '"'"'sklearn.mixture'"'"', '"'"'sklearn.semi_supervised'"'"', '"'"'sklearn.isotonic'"'"', '"'"'sklearn.cross_decomposition'"'"', '"'"'sklearn.kernel_approximation'"'"', '"'"'sklearn.manifold'"'"', '"'"'sklearn.dummy'"'"', '"'"'sklearn.multiclass'"'"', '"'"'sklearn.multioutput'"'"', '"'"'sklearn.naive_bayes'"'"', '"'"'sklearn.pipeline'"'"', '"'"'sklearn.random_projection'"'"', '"'"'sklearn.tests'"'"', '"'"'build_tools'"'"'],
)'
python3 -m pip install -e .
ls -la
ls -la sklearn
python3 -m pytest sklearn/tests
python3 setup.py build
python3 -m pip install Cython
python3 setup.py build
python3 -m pip install Cython==0.29.36
python3 setup.py build
python3 -m pytest sklearn/tests
python3 -m pip install --upgrade numpy scipy
python3 -m pip install .
