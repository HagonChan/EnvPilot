FROM python:3.11
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/scikit-learn/scikit-learn_33021.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /scikit-learn_33021/. /repo && rm -rf /scikit-learn_33021/
RUN rm -rf /scikit-learn_33021
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
RUN cd /repo && git apply -R --reject /patch/patch_18.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_19.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_19.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_20.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_20.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_21.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_21.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_22.diff --allow-empty