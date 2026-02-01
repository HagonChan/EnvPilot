FROM python:3.12
WORKDIR /
COPY search_patch /search_patch
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/django/django_20514.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /django_20514/. /repo && rm -rf /django_20514/
RUN rm -rf /django_20514
RUN cd /repo && git apply --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && poetry install
RUN cd /repo && git apply -R --reject /patch/patch_1.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_2.diff --allow-empty
RUN cd /repo && rm poetry.lock
RUN cd /repo && poetry env remove python
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
RUN cd /repo && git apply -R --reject /patch/patch_22.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_23.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_23.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_24.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_24.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_25.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_25.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_26.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_26.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_27.diff --allow-empty
RUN cd /repo && git apply -R --reject /patch/patch_27.diff --allow-empty
RUN cd /repo && git apply --reject /patch/patch_28.diff --allow-empty
RUN pip install django==6.0.1
RUN pip install asgiref==3.11.0
RUN pip install sqlparse==0.5.5
RUN pip install tzdata==2025.3