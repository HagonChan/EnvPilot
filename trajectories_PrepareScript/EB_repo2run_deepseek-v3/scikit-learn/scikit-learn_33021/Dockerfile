FROM python:3.11
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/scikit-learn/scikit-learn_33021.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /scikit-learn_33021/. /repo && rm -rf /scikit-learn_33021/
RUN rm -rf /scikit-learn_33021
RUN cd /repo && pip install -e .
RUN apt-get update -qq
RUN apt-get install -y -qq ninja-build
RUN cd /repo && pip install -e .[tests]
RUN pip install -q cython>=3.1.2
RUN cd /repo && pip install -e .[tests]
RUN pip install -q meson-python>=0.17.1 cython>=3.1.2
RUN cd /repo && pip install --no-build-isolation -e .