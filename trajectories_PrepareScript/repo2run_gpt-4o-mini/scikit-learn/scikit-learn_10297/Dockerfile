FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/scikit-learn/scikit-learn_10297.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /scikit-learn_10297/. /repo && rm -rf /scikit-learn_10297/
RUN rm -rf /scikit-learn_10297
RUN pip install cython==3.2.4
RUN pip install pytest==9.0.2
RUN pip install wheel==0.45.1
RUN pip install wheelhouse_uploader==0.10.3
RUN pip install pillow==12.1.0
RUN pip install numpy==2.2.6
RUN pip install scipy==1.15.3
RUN pip install scikit-learn==1.7.2
RUN apt-get update -qq
RUN apt-get install build-essential -y -qq
RUN pip install scikit-learn==1.0.2
RUN pip uninstall -y scikit-learn
RUN pip install scikit-learn==1.7.2
RUN pip uninstall -y scikit-learn
RUN pip install scikit-learn==1.0.2
RUN pip install scikit-learn==1.7.2
RUN pip install scikit-learn==1.7.2
RUN pip install scikit-learn==1.7.2
RUN pip install scikit-learn==1.7.2
RUN pip install scikit-learn==1.7.2