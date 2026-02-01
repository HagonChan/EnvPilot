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
RUN pip install Cython==3.2.4
RUN pip install hypothesis==6.142.2
RUN pip install pytest==7.4.0
RUN pip install pytest-cov==4.1.0
RUN pip install meson==1.10.1
RUN pip install pytest-xdist==3.8.0
RUN pip install pytest-timeout==2.4.0
RUN pip install mypy==1.19.1
RUN pip install pyright==1.1.408
RUN pip install charset-normalizer==3.4.4
RUN pip install tzdata==2025.3
RUN python /repo/numpy/_build_utils/gitversion.py
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_3.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_3.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_4.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_4.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_5.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_5.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_6.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_6.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_7.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_7.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_8.diff --allow-empty