FROM python:3.10
WORKDIR /
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
RUN cd /repo && pip install -r requirements/dev.txt
RUN cd /repo && pip install -r requirements/tests.txt
RUN pip install Flask==2.2.5 Werkzeug>=2.2.2 Jinja2>=3.0 itsdangerous>=2.0 click>=8.0
RUN pip install python-dotenv==1.0.0
RUN pip install --upgrade Flask==2.2.5 Werkzeug==2.2.3
RUN pip install Flask==2.2.5 Werkzeug==2.2.3