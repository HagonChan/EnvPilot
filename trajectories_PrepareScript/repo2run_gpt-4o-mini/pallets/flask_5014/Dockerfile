FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/pallets/flask_5014.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /flask_5014/. /repo && rm -rf /flask_5014/
RUN rm -rf /flask_5014
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && poetry install
RUN pip list
RUN pip install -q Flask==2.2.2
RUN pip install -q python-dotenv==1.2.1 tomli==2.4.0
RUN pip install -q Werkzeug==2.2.3 click==8.0.4
RUN pip show Werkzeug
RUN pip uninstall -y Werkzeug
RUN pip install -q Werkzeug==2.2.3
RUN pip uninstall -y Flask
RUN pip install -q Flask==2.2.2
RUN pip list
RUN pip uninstall -y Werkzeug
RUN pip install -q Werkzeug==2.2.3
RUN pip list
RUN pip uninstall -y Flask
RUN pip install -q Flask==2.2.2
RUN pip list
RUN pip uninstall -y Flask Werkzeug
RUN pip install -q Flask==2.2.2 Werkzeug==2.2.3
RUN pip list
RUN pip install -q --upgrade Click==8.0.4 pytest==9.0.2
RUN pip uninstall -y Click pytest
RUN pip install -q Click==8.0.4 pytest==9.0.2
RUN pip uninstall -y Click
RUN pip install -q Click==8.0.4