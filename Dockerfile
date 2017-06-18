FROM ubuntu:16.04

RUN apt-get update
RUN apt-get install -y vim \
  git \
  zip \
  unzip \
  php-pclzip \
  libmcrypt-dev \
  python3 python3-venv python3-setuptools postgresql-client mysql-client

COPY ./startup.sh /startup.sh

RUN easy_install3 pip
RUN pip install --upgrade pip
RUN python3 -m venv /pg_chameleon
RUN /bin/bash -c "cd /pg_chameleon && source bin/activate && pip install pg_chameleon"

# TODO what do I actually want to run to sync 24/7
# RUN /pg_chameleon/bin/chameleon.py

CMD sleep 100000000000