FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/pallets/flask_5818.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /flask_5818/. /repo && rm -rf /flask_5818/
RUN rm -rf /flask_5818
RUN cd /repo && poetry install
RUN pip list
RUN cd /repo && poetry install
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && poetry install
RUN pip list
RUN pip install flask==3.1.2
RUN pip install python-dotenv==1.2.1
RUN pip install flask==3.1.2
RUN pip install werkzeug==3.1.5
RUN pip install jinja2==3.1.6
RUN pip install markupsafe==3.0.3
RUN pip install itsdangerous==2.2.0
RUN pip install blinker==1.9.0
RUN pip install click==8.3.1