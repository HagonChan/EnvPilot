FROM python:3.12
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/django/django_20514.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /django_20514/. /repo && rm -rf /django_20514/
RUN rm -rf /django_20514
RUN cd /repo && pip install -e .
RUN apt-get update -qq
RUN apt-get install -y -qq libmemcached-dev
RUN cd /repo && pip install -r tests/requirements/py3.txt