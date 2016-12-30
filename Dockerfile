FROM alpine:3.5

MAINTAINER James Eckersall <james.eckersall@gmail.com>

RUN \
  apk update && \
  apk add bash curl rsync supervisor && \
  chmod -R 0777 /var/log /run

COPY files /

ENV SUPERVISORD_LOGLEVEL=info

ENTRYPOINT ["/bin/bash", "-e", "/init/entrypoint"]
CMD ["run"]
