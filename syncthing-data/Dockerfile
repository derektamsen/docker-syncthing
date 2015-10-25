FROM debian:jessie

RUN useradd --system --no-create-home --user-group --shell /bin/false user

RUN mkdir -p /data && \
  chown -R user:user /data

USER user

ENTRYPOINT ["/bin/true"]
