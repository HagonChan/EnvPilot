FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/pylint-dev/pylint_4970.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /pylint_4970/. /repo && rm -rf /pylint_4970/
RUN rm -rf /pylint_4970
RUN cd /repo && pip install -e .
RUN pip install coveralls==3.3.1
RUN pip install coverage==5.5
RUN pip install tbump==6.3.2
RUN pip install pyenchant==3.3.0
RUN pip install pytest-cov==2.12.1
RUN pip install pytest-profiling==1.8.1
RUN pip install pytest-xdist==2.5.0
RUN pip install types-pkg_resources==0.1.3
RUN pip install types-toml==0.1.5
RUN pip install astroid==2.7.3
RUN pip install pytest==6.2.5
RUN pip install pytest-benchmark==3.4.1
RUN pip install flake8==3.9.2
RUN pip install isort==5.9.3
RUN pip install mypy==0.910