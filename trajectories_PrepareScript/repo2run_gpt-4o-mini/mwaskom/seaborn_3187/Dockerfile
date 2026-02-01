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
RUN pip install flit==3.12.0
ENV FLIT_ROOT_INSTALL=1
RUN pip install -e /repo
RUN pip show pytest
RUN pip install pytest==8.2.1
RUN pip install numpy==1.23.5 seaborn==0.11.2
RUN pip show numpy seaborn
RUN pip install matplotlib==3.9.0
RUN pip install numpy==1.21.6
RUN pip install numpy==2.2.6
RUN pip install seaborn==0.11.2 matplotlib==3.4.3
RUN pip install numpy==1.22.4
RUN pip list
RUN pip install numpy==1.23.5