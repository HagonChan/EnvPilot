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
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty
RUN pip install numpy==2.2.6
RUN pip install codecov==2.1.13
RUN pip install coverage==7.13.2
RUN pip install cycler==0.12.1
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
RUN cd /repo && git apply -R --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_3.diff --allow-empty
RUN apt-get update -qq
RUN apt-get install -y -qq libfreetype6-dev
RUN apt-get install -y -qq libpng-dev
RUN apt-get install -y -qq libjpeg-dev
RUN apt-get install -y -qq libtiff-dev
RUN apt-get install -y -qq libglib2.0-dev
RUN apt-get install -y -qq libfreetype6
RUN apt-get install -y -qq libfreetype-dev
RUN apt-get install -y -qq libfontconfig1-dev
RUN apt-get install -y -qq libxft-dev
RUN apt-get install -y -qq libfreetype6-dev
RUN apt-get install -y -qq libxrender-dev