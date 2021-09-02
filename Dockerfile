FROM docker.io/antora/antora:2.3.4

COPY ./entrypoint.sh /entrypoint.sh

# install extra antora generator for documentation search
RUN npm i -g antora-site-generator-lunr

ENTRYPOINT ["/entrypoint.sh"]
