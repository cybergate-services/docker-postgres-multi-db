FROM postgres:11

COPY create-multiple-postgresql-databases.sh /docker-entrypoint-initdb.d/

RUN useradd -m -s /bin/bash signal
RUN chmod +x /docker-entrypoint-initdb.d/create-multiple-postgresql-databases.sh

EXPOSE 5432
