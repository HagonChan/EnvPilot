FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/pytest-dev/pytest_5262.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /pytest_5262/. /repo && rm -rf /pytest_5262/
RUN rm -rf /pytest_5262
RUN pip show pytest
RUN pip install -q pytest==6.2.5
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty
RUN pip install six==1.17.0
RUN pip install hypothesis==6.151.4
RUN pip show pytest
RUN pip install -q pytest==6.2.4
RUN pip install -q pytest==6.2.3
RUN pip install -q pytest==6.2.5
RUN pip install -q pytest==6.2.2
RUN pip install -q pytest==6.2.5
RUN pip install -q pytest==6.2.1
RUN pip install -q pytest==6.2.5
RUN pip install -q pytest==6.1.0
RUN pip install -q pytest==6.2.5
RUN pip install -q pytest==6.0.0
RUN pip install -q pytest==6.2.5
RUN pip install -q pytest==5.4.3
RUN pip install -q pytest==6.2.5