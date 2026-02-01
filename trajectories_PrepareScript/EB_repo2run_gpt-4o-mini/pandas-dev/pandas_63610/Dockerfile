FROM python:3.11
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/pandas-dev/pandas_63610.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /pandas_63610/. /repo && rm -rf /pandas_63610/
RUN rm -rf /pandas_63610
RUN cd /repo && pip install -e .
RUN pip install pip==25.3
RUN pip install cython==3.2.4
RUN pip install meson-python==0.13.1
RUN pip install pytest==9.0.2
RUN pip install pytest-cov==7.0.0
RUN pip install pytest-xdist==3.8.0
RUN pip install pytest-qt==4.5.0
RUN pip install pytest-localserver==0.10.0
RUN pip install PyQt5==5.15.11
RUN pip install coverage==7.13.2
RUN pip install python-dateutil==2.9.0.post0
RUN pip install numpy==2.4.1
RUN pip install adbc-driver-postgresql==1.10.0
RUN pip install adbc-driver-sqlite==1.10.0
RUN pip install beautifulsoup4==4.14.3
RUN pip install bottleneck==1.6.0
RUN pip install fastparquet==2025.12.0
RUN pip install fsspec==2026.1.0
RUN pip install html5lib==1.1
RUN pip install hypothesis==6.151.4
RUN pip install gcsfs==2026.1.0
RUN pip install jinja2==3.1.6
RUN pip install lxml==6.0.2
RUN pip install matplotlib==3.10.8
RUN pip install numba==0.63.1
RUN pip install numexpr==2.14.1
RUN pip install openpyxl==3.1.5
RUN pip install odfpy==1.4.1
RUN pip install psycopg2-binary==2.9.11
RUN pip install pyarrow==23.0.0
RUN pip install pyiceberg==0.10.0
RUN pip install pymysql==1.1.2
RUN pip install pyreadstat==1.3.3
RUN pip install tables==3.10.2
RUN pip install python-calamine==0.6.1
RUN pip install pytz==2025.2
RUN pip install pyxlsb==1.0.10
RUN pip install s3fs==2026.1.0
RUN pip install scipy==1.17.0
RUN pip install SQLAlchemy==2.0.46
RUN pip install tabulate==0.9.0
RUN pip install xarray==2026.1.0
RUN pip install xlrd==2.0.2
RUN pip install xlsxwriter==3.2.9
RUN pip install zstandard==0.25.0
RUN pip install dask==2026.1.2
RUN pip install seaborn==0.13.2
RUN pip install ipython==9.9.0
RUN pip install moto==5.1.20
RUN pip install asv==0.6.5
RUN pip install flake8==7.1.0
RUN pip install mypy==1.17.1
RUN pip install tokenize-rt==6.2.0
RUN pip install pre-commit==4.5.1
RUN pip install gitpython==3.1.46
RUN pip install natsort==8.4.0
RUN pip install pickleshare==0.7.5
RUN pip install numpydoc==1.10.0
RUN pip install pytest-cython==0.3.1
RUN pip install sphinx==9.0.4
RUN pip install sphinx-design==0.7.0
RUN pip install sphinx-copybutton==0.5.2
RUN pip install scipy-stubs==1.17.0.2
RUN pip install types-python-dateutil==2.9.0.20260124
RUN pip install types-PyMySQL==1.1.0.20251220
RUN pip install types-pytz==2025.2.0.20251108
RUN pip install types-PyYAML==6.0.12.20250915
RUN pip install types-setuptools==80.10.0.20260124
RUN pip install nbconvert==7.17.0
RUN pip install nbsphinx==0.9.8
RUN pip install pandoc==2.4
RUN pip install ipywidgets==8.1.8
RUN pip install nbformat==5.10.4
RUN pip install notebook==7.5.3
RUN pip install ipykernel==7.1.0
RUN pip install markdown==3.10.1
RUN pip install feedparser==6.0.12
RUN pip install pyyaml==6.0.3
RUN pip install requests==2.32.5
RUN pip install pygments==2.19.2
RUN pip install jupyterlite-core==0.7.1
RUN pip install jupyterlite-pyodide-kernel==0.7.0
RUN pip install tzdata==2025.3
RUN pip install ninja==1.13.0
RUN pip install --force-reinstall ninja==1.13.0
RUN ninja --version
RUN pip cache purge
ENV NINJA=$(which ninja)
RUN pip install --force-reinstall ninja==1.13.0
ENV NINJA=$(which ninja)
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
RUN pip install ninja==1.13.0
ENV NINJA=$(which ninja)
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin
ENV NINJA=$(which ninja)
ENV PATH=$PATH:/usr/local/bin
ENV PATH=$PATH:/tmp/pip-build-env-igj6jfzx/normal/bin