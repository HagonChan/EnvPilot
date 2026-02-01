FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/astropy/astropy_13033.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /astropy_13033/. /repo && rm -rf /astropy_13033/
RUN rm -rf /astropy_13033
RUN pip install -q --upgrade setuptools==76.0.0
RUN pip install -q setuptools==57.5.0
RUN pip install -q setuptools==58.0.4
RUN pip install -q setuptools==59.5.0
RUN pip install -q setuptools==60.0.0
RUN pip install -q setuptools==61.0.0
RUN pip install -q setuptools==62.0.0
RUN pip install -q setuptools==63.0.0
RUN pip install -q setuptools==64.0.0
RUN pip install -q setuptools==65.0.0
RUN pip install -q setuptools==66.0.0
RUN pip install -q setuptools==67.0.0
RUN pip install -q setuptools==68.0.0
RUN pip install -q setuptools==69.0.0
RUN pip install -q setuptools==70.0.0
RUN pip install -q setuptools==71.0.0
RUN pip install -q setuptools==72.0.0
RUN pip install -q setuptools==73.0.0
RUN pip install -q setuptools==74.0.0
RUN pip install -q setuptools==75.0.0
RUN pip install -q setuptools==76.0.0