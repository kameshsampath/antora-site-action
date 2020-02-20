FROM docker.io/antora/antora:2.2.0

COPY ./entrypoint.sh /

ENTRYPOINT ["/entrypoint.sh"]