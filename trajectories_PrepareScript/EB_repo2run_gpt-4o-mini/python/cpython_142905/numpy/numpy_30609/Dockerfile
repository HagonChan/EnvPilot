FROM python:3.12
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/numpy/numpy_30609.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /numpy_30609/. /repo && rm -rf /numpy_30609/
RUN rm -rf /numpy_30609
RUN apt-get update -qq
RUN apt-get install pkg-config -y -qq
RUN apt-get install doxygen -y -qq
RUN pip install -q cython==3.2.4 setuptools==65.5.1 ninja==1.13.0 meson-python==0.19.0 spin==0.15 pytest==9.0.2 pytest-cov==7.0.0 pytest-xdist==3.8.0 hypothesis==6.151.4 mypy==1.19.1 orjson==3.11.6 scipy==1.17.0 pandas==3.0.0 matplotlib==3.10.8 towncrier==25.8.0 gitpython==3.1.46 cffi==2.0.0 tzdata==2025.3
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty
RUN mkdir -p /repo/build
RUN cd /repo && git apply -R --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_3.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_3.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_4.diff --allow-empty