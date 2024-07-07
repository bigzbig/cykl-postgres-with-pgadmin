FROM docker.io/postgres:16.1-alpine3.19

COPY ./docker/postgres/maintenance /usr/local/bin/maintenance
RUN chmod +x /usr/local/bin/maintenance/* \
    && cp -r /usr/local/bin/maintenance/* /usr/local/bin/ \
    && rm -rf /usr/local/bin/maintenance