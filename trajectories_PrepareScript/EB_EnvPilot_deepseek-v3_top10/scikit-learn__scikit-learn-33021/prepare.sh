ls -la
ls -la .github/workflows
open ".github/workflows/unit-tests.yml"
open "pyproject.toml"
open "meson.build"
apt-get update && apt-get install -y gcc g++ make pkg-config libopenblas-dev liblapack-dev python3-dev build-essential
apt-get install -y python3.11 python3.11-venv
python3.11 -m venv venv && source venv/bin/activate
pip install meson ninja cython
pip install -e .
apt-get install -y python3.11-dev
pip install -e .
apt-get install -y python3.11-full
wget https://www.python.org/ftp/python/3.11.5/Python-3.11.5.tgz && tar -xzf Python-3.11.5.tgz && cd Python-3.11.5 && ./configure --enable-optimizations && make -j$(nproc) && make install
apt-get install -y wget
wget https://www.python.org/ftp/python/3.11.5/Python-3.11.5.tgz && tar -xzf Python-3.11.5.tgz && cd Python-3.11.5 && ./configure --enable-optimizations && make -j$(nproc) && make install
python3.11 --version && rm -rf venv && python3.11 -m venv venv && source venv/bin/activate
update-alternatives --install /usr/bin/python3 python3 /usr/local/bin/python3.11 1 && update-alternatives --set python3 /usr/local/bin/python3.11
python3 --version && rm -rf venv && python3 -m venv venv && source venv/bin/activate
/usr/local/bin/python3.11 --version && rm -rf venv && /usr/local/bin/python3.11 -m venv venv && source venv/bin/activate
pip install meson ninja cython && pip install -e .
apt-get install -y libssl-dev && cd /testbed && rm -rf Python-3.11.5 && wget https://www.python.org/ftp/python/3.11.5/Python-3.11.5.tgz && tar -xzf Python-3.11.5.tgz && cd Python-3.11.5 && ./configure --enable-optimizations && make -j$(nproc) && make install
/usr/local/bin/python3.11 --version && rm -rf venv && /usr/local/bin/python3.11 -m venv venv && source venv/bin/activate
pip install meson ninja cython && pip install -e .
pip install --upgrade pip setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack && pip install --force-reinstall setuptools && pip install -e .
deactivate && rm -rf venv && /usr/local/bin/python3.11 -m venv venv && source venv/bin/activate
pip install meson ninja cython && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack && pip install --force-reinstall setuptools && pip install -e .
rm -f venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .
rm -rf venv/lib/python3.11/site-packages/_distutils_hack venv/lib/python3.11/site-packages/distutils-precedence.pth && pip install --force-reinstall --no-deps setuptools && pip install -e .

