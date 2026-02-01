FROM python:3.11
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/keras-team/keras_21966.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /keras_21966/. /repo && rm -rf /keras_21966/
RUN rm -rf /keras_21966
RUN cd /repo && pip install -e .
RUN cd /repo && pip install -r requirements.txt
RUN pip install -q tensorflow==2.20.0
ENV PYTHONPATH=/repo:$PYTHONPATH
ENV PYTHONPATH=/repo/keras/src:$PYTHONPATH
RUN pip install -q tf-keras==2.20.1