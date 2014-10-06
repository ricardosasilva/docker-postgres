# docker-postgres

Postgres 9.3 with wal-e and supervisor

TODO: Add rsyslog

## run example

    docker run \
    --name my-postgres \
    -v /data/postgresql/data/:/data/postgresql/data/ \
    -v /data/wal-e.d/env/:/etc/wal-e.d/env/ \
    -e PGDATA=/data/postgresql/data \
    -e LC_ALL=C.UTF-8 \
    -d \
    salamandra/postgres:9.3

    
## AMI Policy example
    
    {
      "Statement": [
        {
          "Sid": "Stmt1533040121212",
          "Action": [
            "s3:GetObject",
            "s3:ListBucket",
            "s3:PutObject",
            "s3:GetObjectVersion"
          ],
          "Effect": "Allow",
          "Resource": [
            "arn:aws:s3:::bucket-name",
            "arn:aws:s3:::bucket-name/*"
          ]
        }
      ]
    }