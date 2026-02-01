FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/pydata/xarray_4629.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /xarray_4629/. /repo && rm -rf /xarray_4629/
RUN rm -rf /xarray_4629
RUN pip install -r /repo/requirements.txt
RUN pip install numpy==1.24.3
RUN pip install pandas==1.5.3