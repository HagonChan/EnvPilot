FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/psf/requests_1142.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /requests_1142/. /repo && rm -rf /requests_1142/
RUN rm -rf /requests_1142
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_3.diff --allow-empty
RUN pip install pytest==9.0.2
RUN pip install sphinx==8.1.3
RUN pip install requests==2.25.1
RUN pip install urllib3==1.25.6
RUN pip list
RUN pip install urllib3==1.26.15
RUN pip install requests==2.25.1
RUN pip install requests==2.30.0
RUN pip install requests==2.26.0
RUN pip install requests==2.30.0
RUN pip install urllib3==1.25.11
RUN pip install requests==2.28.0
RUN pip install requests==2.30.0
RUN pip install urllib3==1.24.3
RUN pip install requests==2.27.1
RUN pip install requests==2.30.0
RUN pip install urllib3==1.25.8
RUN pip install urllib3==1.25.6
RUN pip install requests==2.26.0
RUN pip install requests==2.30.0
RUN pip install requests==2.25.1