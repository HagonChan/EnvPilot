FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/mwaskom/seaborn_3187.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /seaborn_3187/. /repo && rm -rf /seaborn_3187/
RUN rm -rf /seaborn_3187
RUN cd /repo && pip install -e .
RUN cd /repo && pip install -q pytest==8.4.2 pytest-cov==7.0.0 pytest-xdist==3.8.0 flake8==7.3.0 mypy==1.19.1 pandas-stubs==2.3.3.260113 pre-commit==4.5.1 flit==3.12.0
RUN pip install -q pytest<9.0
RUN pip install -q numpy<2.0 pandas<2.0 matplotlib<3.10
RUN pip install -q numpy==1.23.5 pandas==1.5.3 matplotlib==3.6.3