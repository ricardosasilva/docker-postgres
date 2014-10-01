FROM postgres:9.3

RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq daemontools libevent-dev python-all-dev lzop pv postgresql-client python-pip
RUN pip install wal-e
RUN pip install --upgrade six
RUN mkdir -p /etc/wal-e.d/env/

VOLUME ["/etc/cron.d/", "/etc/wal-e.d/env"]