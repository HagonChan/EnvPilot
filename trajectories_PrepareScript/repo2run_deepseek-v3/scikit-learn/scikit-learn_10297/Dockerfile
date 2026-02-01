FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/scikit-learn/scikit-learn_10297.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /scikit-learn_10297/. /repo && rm -rf /scikit-learn_10297/
RUN rm -rf /scikit-learn_10297
RUN pip install numpy==2.2.6
RUN pip install cython==0.29.36
RUN apt-get update -qq
RUN apt-get install -y -qq libblas-dev liblapack-dev
RUN pip uninstall -y scikit-learn
ENV PYTHONPATH=/repo