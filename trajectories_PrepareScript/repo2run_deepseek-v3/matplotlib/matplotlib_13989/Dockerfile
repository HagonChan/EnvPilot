FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/matplotlib/matplotlib_13989.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /matplotlib_13989/. /repo && rm -rf /matplotlib_13989/
RUN rm -rf /matplotlib_13989
RUN pip install codecov==2.1.13
RUN pip install coverage==7.13.2
RUN pip install cycler==0.12.1
RUN pip install numpy==2.2.6
RUN pip install pillow==12.1.0
RUN pip install pyparsing==3.3.2
RUN pip install pytest==9.0.2
RUN pip install pytest-cov==7.0.0
RUN pip install pytest-faulthandler==2.0.1
RUN pip install pytest-rerunfailures==16.1
RUN pip install pytest-timeout==2.4.0
RUN pip install pytest-xdist==3.8.0
RUN pip install python-dateutil==2.9.0.post0
RUN pip install tornado==6.5.4
RUN pip install tox==4.34.1
RUN pip install kiwisolver==1.4.9
RUN pip install matplotlib==3.0.2+2266.ga3e2897bfa.dirty
RUN cd /repo && apt-get update -qq
RUN cd /repo && apt-get install -y -qq build-essential python3-dev
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
RUN cd /repo && mkdir -p lib/matplotlib/mpl-data
RUN cd /repo && cp matplotlibrc.template lib/matplotlib/mpl-data/matplotlibrc
RUN cd /repo && git apply -R --reject /patch/patch_6.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_7.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_7.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_8.diff --allow-empty
RUN cd /repo && python setup.py build_ext --inplace
RUN cd /repo && pip install -e .