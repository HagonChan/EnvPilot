FROM python:3.12
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/scipy/scipy_24310.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /scipy_24310/. /repo && rm -rf /scipy_24310/
RUN rm -rf /scipy_24310
RUN cd /repo && poetry install
RUN apt-get update -qq
RUN apt-get install gfortran -y -qq
RUN apt-get install git -y -qq
RUN cd /repo && git submodule update --init
RUN apt-get install libopenblas-dev -y -qq
RUN cd /repo && pip install -e .
RUN apt-get install ninja-build -y -qq
RUN apt-get install meson -y -qq
RUN pip install ninja==1.13.0
RUN mkdir -p /tmp/pip-build-env-wioabhh6/normal/bin
RUN ln -s /usr/bin/ninja /tmp/pip-build-env-wioabhh6/normal/bin/ninja
RUN mkdir -p /tmp/pip-build-env-wioabhh6/overlay/bin
RUN ln -s /usr/bin/meson /tmp/pip-build-env-wioabhh6/overlay/bin/meson