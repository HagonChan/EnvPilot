FROM python:3.12
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/ansible/ansible_86370.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /ansible_86370/. /repo && rm -rf /ansible_86370/
RUN rm -rf /ansible_86370
RUN pip install jinja2==3.1.6
RUN pip install PyYAML==6.0.3
RUN pip install cryptography==46.0.4
RUN pip install packaging==26.0
RUN pip install resolvelib==1.2.1
RUN cd /repo && pip install -e .
RUN pip install passlib==1.7.4
RUN pip install pexpect==4.9.0
RUN pip install pywinrm==0.5.0
RUN pip install -q bcrypt<5