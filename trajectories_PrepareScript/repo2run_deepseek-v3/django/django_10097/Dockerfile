FROM python:3.10
WORKDIR /
COPY search_patch /search_patch
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
RUN cd /repo && pip install -e .
RUN pip install -q pipreqs==0.5.0
RUN cd /repo && pipreqs /repo --force
RUN pip install argon2==0.1.10
RUN pip install bpython==0.26
RUN pip install closure==20191111
RUN pip install cx_Oracle==8.3.0
RUN pip install docutils==0.20.1
RUN pip install ipython==8.12.3
RUN pip install Pillow==12.1.0
RUN pip install psycopg2==2.9.11
RUN pip install pyinotify==0.9.6
RUN pip install pylibmc==1.6.3
RUN pip install python_bcrypt==0.3.2
RUN pip install python_memcached==1.62
RUN pip install pytz==2025.2
RUN pip install PyYAML==6.0.3
RUN pip install setuptools==79.0.1
RUN pip install sqlparse==0.5.5
RUN pip install tblib==3.2.2
RUN pip install mysqlclient==2.1.1 -q
RUN pip install numpy==1.26.4 -q
RUN pip install Sphinx==7.2.6 -q
RUN apt-get update -qq
RUN apt-get install -y -qq libpq-dev postgresql-client
RUN pip install psycopg2-binary==2.9.9 -q
RUN echo "DATABASES = {'default': {'ENGINE': 'django.db.backends.sqlite3', 'NAME': ':memory:'}}" > /repo/tests/test_sqlite.py
RUN mkdir -p /repo/tests/settings
RUN echo "DATABASES = {'default': {'ENGINE': 'django.db.backends.sqlite3', 'NAME': ':memory:'}}" > /repo/tests/settings/test_sqlite.py
RUN touch /repo/tests/settings/__init__.py
RUN touch /repo/tests/__init__.py
RUN touch /repo/tests/settings/__init__.py
RUN echo "DATABASES = {'default': {'ENGINE': 'django.db.backends.sqlite3', 'NAME': ':memory:'}}" > /repo/test_settings.py
RUN echo "DATABASES = {'default': {'ENGINE': 'django.db.backends.sqlite3', 'NAME': ':memory:'}} SECRET_KEY = 'test-key' INSTALLED_APPS = [     'django.contrib.auth',     'django.contrib.contenttypes',     'django.contrib.sessions', ] " > /repo/test_settings.py
RUN echo "DATABASES = {     'default': {         'ENGINE': 'django.db.backends.sqlite3',         'NAME': ':memory:'     } } SECRET_KEY = 'test-key' INSTALLED_APPS = [     'django.contrib.auth',     'django.contrib.contenttypes',     'django.contrib.sessions', ] " > /repo/test_settings.py
RUN echo "DATABASES = {" > /repo/test_settings.py
RUN echo "    'default': {" >> /repo/test_settings.py
RUN echo "        'ENGINE': 'django.db.backends.sqlite3'," >> /repo/test_settings.py
RUN echo "        'NAME': ':memory:'" >> /repo/test_settings.py
RUN echo "    }" >> /repo/test_settings.py
RUN echo "}" >> /repo/test_settings.py
RUN echo "SECRET_KEY = 'test-key'" >> /repo/test_settings.py
RUN echo "INSTALLED_APPS = [" >> /repo/test_settings.py
RUN echo "    'django.contrib.auth'," >> /repo/test_settings.py
RUN echo "    'django.contrib.contenttypes'," >> /repo/test_settings.py
RUN echo "    'django.contrib.sessions'," >> /repo/test_settings.py
RUN echo "]" >> /repo/test_settings.py
RUN echo "import os" > /repo/test_settings.py
RUN echo "" >> /repo/test_settings.py
RUN echo "DATABASES = {" >> /repo/test_settings.py
RUN echo "    'default': {" >> /repo/test_settings.py
RUN echo "        'ENGINE': 'django.db.backends.sqlite3'," >> /repo/test_settings.py
RUN echo "        'NAME': ':memory:'" >> /repo/test_settings.py
RUN echo "    }" >> /repo/test_settings.py
RUN echo "}" >> /repo/test_settings.py
RUN echo "" >> /repo/test_settings.py
RUN echo "SECRET_KEY = 'test-key'" >> /repo/test_settings.py
RUN echo "" >> /repo/test_settings.py
RUN echo "INSTALLED_APPS = [" >> /repo/test_settings.py
RUN echo "    'django.contrib.admin'," >> /repo/test_settings.py
RUN echo "    'django.contrib.auth'," >> /repo/test_settings.py
RUN echo "    'django.contrib.contenttypes'," >> /repo/test_settings.py
RUN echo "    'django.contrib.sessions'," >> /repo/test_settings.py
RUN echo "    'django.contrib.messages'," >> /repo/test_settings.py
RUN echo "    'django.contrib.staticfiles'," >> /repo/test_settings.py
RUN echo "]" >> /repo/test_settings.py
RUN echo "" >> /repo/test_settings.py
RUN echo "MIDDLEWARE = [" >> /repo/test_settings.py
RUN echo "    'django.middleware.security.SecurityMiddleware'," >> /repo/test_settings.py
RUN echo "    'django.contrib.sessions.middleware.SessionMiddleware'," >> /repo/test_settings.py
RUN echo "    'django.middleware.common.CommonMiddleware'," >> /repo/test_settings.py
RUN echo "    'django.middleware.csrf.CsrfViewMiddleware'," >> /repo/test_settings.py
RUN echo "    'django.contrib.auth.middleware.AuthenticationMiddleware'," >> /repo/test_settings.py
RUN echo "    'django.contrib.messages.middleware.MessageMiddleware'," >> /repo/test_settings.py
RUN echo "]" >> /repo/test_settings.py
RUN echo "" >> /repo/test_settings.py
RUN echo "TEMPLATES = [" >> /repo/test_settings.py
RUN echo "    {" >> /repo/test_settings.py
RUN echo "        'BACKEND': 'django.template.backends.django.DjangoTemplates'," >> /repo/test_settings.py
RUN echo "        'DIRS': []," >> /repo/test_settings.py
RUN echo "        'APP_DIRS': True," >> /repo/test_settings.py
RUN echo "        'OPTIONS': {" >> /repo/test_settings.py
RUN echo "            'context_processors': [" >> /repo/test_settings.py
RUN echo "                'django.template.context_processors.debug'," >> /repo/test_settings.py
RUN echo "                'django.template.context_processors.request'," >> /repo/test_settings.py
RUN echo "                'django.contrib.auth.context_processors.auth'," >> /repo/test_settings.py
RUN echo "                'django.contrib.messages.context_processors.messages'," >> /repo/test_settings.py
RUN echo "            ]," >> /repo/test_settings.py
RUN echo "        }," >> /repo/test_settings.py
RUN echo "    }," >> /repo/test_settings.py
RUN echo "]" >> /repo/test_settings.py
RUN echo "" >> /repo/test_settings.py
RUN echo "STATIC_URL = '/static/'" >> /repo/test_settings.py
RUN echo "import os" > /repo/test_settings.py
RUN echo "BASE_DIR = os.path.dirname(os.path.dirname(os.path.abspath(__file__)))" >> /repo/test_settings.py
RUN echo "TEMPLATE_DIRS = [os.path.join(BASE_DIR, 'tests', 'templates')]" >> /repo/test_settings.py
RUN echo "" >> /repo/test_settings.py
RUN echo "DATABASES = {" >> /repo/test_settings.py
RUN echo "    'default': {" >> /repo/test_settings.py
RUN echo "        'ENGINE': 'django.db.backends.sqlite3'," >> /repo/test_settings.py
RUN echo "        'NAME': ':memory:'" >> /repo/test_settings.py
RUN echo "    }" >> /repo/test_settings.py
RUN echo "}" >> /repo/test_settings.py
RUN echo "" >> /repo/test_settings.py
RUN echo "SECRET_KEY = 'test-key'" >> /repo/test_settings.py
RUN echo "" >> /repo/test_settings.py
RUN echo "INSTALLED_APPS = [" >> /repo/test_settings.py
RUN echo "    'django.contrib.admin'," >> /repo/test_settings.py
RUN echo "    'django.contrib.auth'," >> /repo/test_settings.py
RUN echo "    'django.contrib.contenttypes'," >> /repo/test_settings.py
RUN echo "    'django.contrib.sessions'," >> /repo/test_settings.py
RUN echo "    'django.contrib.messages'," >> /repo/test_settings.py
RUN echo "    'django.contrib.staticfiles'," >> /repo/test_settings.py
RUN echo "]" >> /repo/test_settings.py
RUN cd /repo && PYTHONPATH=/repo python tests/runtests.py --settings=test_settings --parallel=1 model_fields