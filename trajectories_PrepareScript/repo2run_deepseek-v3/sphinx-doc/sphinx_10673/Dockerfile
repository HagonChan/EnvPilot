FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/sphinx-doc/sphinx_10673.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /sphinx_10673/. /repo && rm -rf /sphinx_10673/
RUN rm -rf /sphinx_10673
RUN cd /repo && pip install -e .
RUN pip install html5lib==1.1
RUN pip install alabaster==0.7.16