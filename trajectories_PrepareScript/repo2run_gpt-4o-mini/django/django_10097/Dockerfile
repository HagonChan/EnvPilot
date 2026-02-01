FROM python:3.10
WORKDIR /
COPY code_edit.py /code_edit.py
RUN apt-get update && apt-get install -y curl
RUN curl -sSL https://install.python-poetry.org | python -
ENV PATH="/root/.local/bin:$PATH"
RUN pip install pytest pytest-xdist
RUN pip install pipdeptree
RUN git clone https://github.com/django/django_10097.git
RUN mkdir /repo
RUN git config --global --add safe.directory /repo
RUN cp -r /django_10097/. /repo && rm -rf /django_10097/
RUN rm -rf /django_10097
RUN pip install django==5.2.10
RUN pip install bcrypt==5.0.0
RUN pip install argon2-cffi==25.1.0
RUN pip install docutils==0.22.4
RUN pip install geoip2==5.2.0
RUN pip install jinja2==3.1.6
RUN pip install numpy==2.2.6
RUN pip install pillow==12.1.0
RUN pip install python-memcached==1.62
RUN pip install pytz==2025.2
RUN pip install pyyaml==6.0.3
RUN pip install selenium==4.40.0
RUN pip install sqlparse==0.5.5
RUN pip install psycopg2-binary==2.9.11
RUN pip install mysqlclient==2.2.7
RUN pip install cx_oracle==8.3.0
RUN pip install tblib==3.2.2