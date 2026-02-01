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
RUN pip install -q meson-python>=0.18.0
RUN pip install -q meson==1.10.1
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty
RUN pip install -q ninja>=1.8.2
RUN pip install -q Cython>=3.0.6
RUN pip install -q numpy==2.4.2
ENV PYTHONPATH=$(python -c "import sys; print(':'.join(sys.path))")