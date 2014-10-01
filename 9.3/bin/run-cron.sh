#!/bin/sh

/usr/bin/crontab /etc/cron.d/backup-database
/usr/sbin/cron -f