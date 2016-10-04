FROM alpine:latest

MAINTAINER James Eckersall <james.eckersall@gmail.com>

RUN \
  apk update && \
  apk add bash curl supervisor

COPY files /

ENTRYPOINT ["/bin/bash", "-e", "/init/entrypoint"]
CMD ["run"]
