FROM postgres:9.3

RUN DEBIAN_FRONTEND=noninteractive apt-get update -qq
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y -qq supervisor daemontools libevent-dev python-all-dev lzop pv postgresql-client python-pip
RUN rm -rf /var/lib/apt/lists/*
RUN sed -i 's/^\(\[supervisord\]\)$/\1\nnodaemon=true/' /etc/supervisor/supervisord.conf
RUN pip install wal-e
RUN pip install --upgrade six
RUN mkdir -p /etc/wal-e.d/env/

ADD supervisor/conf.d /etc/supervisor/conf.d/
ADD bin/ /usr/local/bin
ADD cron.d/ /etc/cron.d/

VOLUME ["/data/postgresql/data/", "/etc/wal-e.d/env/"]

CMD ["supervisord", "-c", "/etc/supervisor/supervisord.conf"]