FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/sympy/sympy_12096.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /sympy_12096/. /repo && rm -rf /sympy_12096/
RUN rm -rf /sympy_12096
RUN cd /repo && pip install -e .
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