FROM debian:jessie

RUN groupadd -r user && useradd -r -g user user

RUN mkdir -p /data && \
  chown -R user:user /data

USER user

ENTRYPOINT ["/bin/true"]
