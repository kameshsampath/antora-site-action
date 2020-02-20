FROM docker.io/antora/antora:2.2.0

COPY ./entrypoint.sh /

cd /github

ENTRYPOINT ["/entrypoint.sh"]