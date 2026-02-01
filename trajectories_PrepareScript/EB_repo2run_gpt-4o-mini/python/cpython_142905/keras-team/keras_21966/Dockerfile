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
RUN pip install tf2onnx==1.16.1
RUN pip install ai-edge-litert==1.3.0
RUN pip install flax==0.12.2
RUN pip install pre-commit==4.5.1
RUN pip install namex==0.1.0
RUN pip install ruff==0.14.14
RUN pip install pytest==9.0.2
RUN pip install numpy==1.24.3
RUN pip install scipy==1.15.3
RUN pip install scikit-learn==1.8.0
RUN pip install pillow==12.1.0
RUN pip install pandas==3.0.0
RUN pip install absl-py==2.4.0
RUN pip install requests==2.32.5
RUN pip install h5py==3.15.1
RUN pip install ml-dtypes==0.5.4
RUN pip install protobuf==3.19.6
RUN pip install tensorboard-plugin-profile==2.21.5
RUN pip install rich==14.3.1
RUN pip install build==1.4.0
RUN pip install optree==0.18.0
RUN pip install pytest-cov==7.0.0
RUN pip install packaging==26.0
RUN pip install dm_tree==0.1.9
RUN pip install coverage==7.13.2
RUN pip install onnxruntime==1.23.2
RUN pip install onnxscript==0.6.0
RUN pip install openvino==2025.4.1
RUN pip install grain==0.2.15
RUN pip install orbax-checkpoint==0.11.32
RUN pip install tensorflow-tpu==2.19.1
RUN pip install jax==0.3.15
RUN pip install tensorflow-cpu==2.20.0
RUN pip install torch==2.10.0
RUN pip show typing_extensions
RUN pip install --upgrade typing_extensions==4.5.0
RUN pip install typing_extensions==4.5.0
RUN pip show keras numpy protobuf
RUN pip install keras==2.10.0
RUN pip install numpy==1.26.0
RUN pip install protobuf==5.28.0
RUN pip install keras==3.10.0
RUN pip install numpy==1.24.3
RUN pip install protobuf==5.28.3
RUN pip install tensorflow==2.12.1
RUN pip show tensorboard jax
RUN pip install tensorboard==2.10.0
RUN pip install jax==0.3.15