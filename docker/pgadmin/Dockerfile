FROM dpage/pgadmin4:8.9
  
USER root  
  
RUN mv /entrypoint.sh /entrypoint.orig.sh  
COPY ./docker/pgadmin/entrypoint.sh /entrypoint.sh  
RUN chmod +x /entrypoint.sh \
    && touch /pgadmin4/servers.json \
    && chown pgadmin:root /pgadmin4/servers.json \  
    && touch /pgpass && chown pgadmin:root /pgpass  
  
USER pgadmin

ENTRYPOINT [ "/entrypoint.sh" ]