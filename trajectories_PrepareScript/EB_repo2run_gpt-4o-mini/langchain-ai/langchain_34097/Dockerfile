FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/langchain-ai/langchain_34097.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /langchain_34097/. /repo && rm -rf /langchain_34097/
RUN rm -rf /langchain_34097
RUN cd /repo/libs/core && poetry install
ENV PYTHONPATH=/repo/libs
RUN python /repo/libs/cli/langchain_cli/integration_template/scripts/check_imports.py
RUN pip install langchain-cli==0.0.37