FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/pytest-dev/pytest_14089.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /pytest_14089/. /repo && rm -rf /pytest_14089/
RUN rm -rf /pytest_14089
RUN cd /repo && pip install -e .
RUN cd /repo && pip install hypothesis==6.151.4 attrs==25.4.0 xmlschema==4.3.1