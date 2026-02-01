FROM python:3.10
WORKDIR /
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
RUN cd /repo && pip install -e .
RUN cd /repo && pip install .[tests]
RUN cd /repo && pip install asgiref==3.11.0 greenlet==3.3.1 pytest==9.0.2 python-dotenv==1.2.1