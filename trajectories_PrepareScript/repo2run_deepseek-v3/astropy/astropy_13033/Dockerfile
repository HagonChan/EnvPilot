FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/astropy/astropy_13033.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /astropy_13033/. /repo && rm -rf /astropy_13033/
RUN rm -rf /astropy_13033
RUN pip install -U setuptools==80.10.2
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_3.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_3.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_4.diff --allow-empty
RUN apt-get update -qq
RUN apt-get install -y -qq build-essential python3-dev
RUN pip install numpy==1.24.0
RUN pip install numpy==1.21.0
RUN pip install astropy pytest-astropy==0.11.0
RUN pip uninstall -y astropy
RUN cd /repo && git apply -R --reject /patch/patch_4.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_5.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_5.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_6.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_6.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_7.diff --allow-empty
RUN pip install numpy==1.23.5
RUN pip install astropy pytest-astropy==0.11.0
RUN pip uninstall -y astropy
ENV PYTHONPATH=/repo