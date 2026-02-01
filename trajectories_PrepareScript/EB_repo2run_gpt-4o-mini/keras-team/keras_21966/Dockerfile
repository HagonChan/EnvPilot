FROM python:3.11
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/keras-team/keras_21966.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /keras_21966/. /repo && rm -rf /keras_21966/
RUN rm -rf /keras_21966
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && poetry install
RUN pip install numpy==2.4.2
RUN pip install optree==0.18.0
RUN pip install tensorflow==2.20.0
RUN pip install jax==0.9.0
RUN pip install jax==0.9.0
RUN pip install torch==2.10.0
RUN pip install scikit-learn==1.8.0
RUN pip install orbax-checkpoint==0.11.32
RUN pip install onnxruntime==1.23.2
RUN pip install grain==0.2.15
RUN pip install pandas==3.0.0
RUN pip install tf-keras==2.20.1
RUN pip install keras==3.13.2
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
RUN cd /repo && git apply -R --reject /patch/patch_6.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_7.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_7.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_8.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_8.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_9.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_9.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_10.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_10.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_11.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_11.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_12.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_12.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_13.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_13.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_14.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_14.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_15.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_15.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_16.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_16.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_17.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_17.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_18.diff --allow-empty