FROM docker.io/antora/antora:2.2.0

WORKDIR /github/workspace

ENTRYPOINT ["antora","--stacktrace"]

CMD ["antora-playbook.yml"]