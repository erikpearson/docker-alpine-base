FROM alpine:latest

MAINTAINER James Eckersall <james.eckersall@gmail.com>

RUN \
  apk update && \
  apk add bash curl rsync supervisor

COPY files /

ENV SUPERVISORD_LOGLEVEL=info

ENTRYPOINT ["/bin/bash", "-e", "/init/entrypoint"]
CMD ["run"]
