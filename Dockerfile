FROM docker.io/antora/antora:3.0.0

COPY ./entrypoint.sh /entrypoint.sh

# install extra antora generator for documentation search
RUN npm install @antora/lunr-extension

ENTRYPOINT ["/entrypoint.sh"]
