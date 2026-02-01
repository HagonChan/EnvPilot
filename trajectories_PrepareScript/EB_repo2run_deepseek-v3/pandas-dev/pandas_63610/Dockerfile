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
RUN cd /repo && pip install -r /repo/requirements-dev.txt
RUN apt-get update -qq
RUN apt-get install ninja-build -y -qq
RUN cd /repo && pip uninstall pandas -y
RUN cd /repo && pip install .
RUN cd /repo && pip install -e .
RUN cd /repo && pip install -r requirements-dev.txt
RUN cd /repo && pip uninstall -y pandas
RUN cd /repo && pip install .
RUN cd /repo && pip uninstall -y pandas
RUN cd /repo && pip install -v .
RUN cd /repo && pip uninstall -y pandas
RUN cd /repo && pip install pandas==3.0.0