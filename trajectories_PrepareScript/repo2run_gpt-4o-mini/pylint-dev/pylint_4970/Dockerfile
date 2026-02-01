FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/pylint-dev/pylint_4970.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /pylint_4970/. /repo && rm -rf /pylint_4970/
RUN rm -rf /pylint_4970
RUN cd /repo && pip install -e .
RUN cd /repo && pip install -r /repo/requirements_test.txt
RUN pip install pylint==2.10.3.dev0
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN pip install -r /repo/requirements_test_min.txt
RUN git clone https://github.com/PyCQA/astroid.git
RUN cd /astroid && python3 -m pip install -e .
RUN rm -rf astroid
RUN pip uninstall -y astroid
RUN pip install astroid==2.7.3
RUN pip install -r /repo/requirements_test_pre_commit.txt
RUN pip install tox==4.34.1
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty