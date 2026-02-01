FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
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
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN pip install spin==0.17
RUN pip install typing_extensions==4.15.0
RUN pip install types-psutil==7.2.2.20260130
RUN pip install pycodestyle==2.14.0
RUN pip install ruff==0.14.14
RUN pip install cython-lint==0.18.1
RUN pip install pytest==9.0.2
RUN pip install pytest-cov==7.0.0
RUN pip install pytest-timeout==2.4.0
RUN pip install pytest-xdist==3.8.0
RUN pip install asv==0.6.5
RUN pip install mpmath==1.3.0
RUN pip install gmpy2==2.2.2
RUN pip install threadpoolctl==3.6.0
RUN pip install pooch==1.9.0
RUN pip install hypothesis==6.151.4
RUN pip install array-api-strict==2.4.1
RUN pip install cython==3.2.4
RUN pip install meson==1.10.1
RUN pip install ninja==1.13.0
RUN pip index versions click --python-version 3.10
RUN pip index versions mypy --python-version 3.10