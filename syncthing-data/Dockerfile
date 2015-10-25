FROM debian:jessie
RUN groupadd -r user && useradd -r -g user user
USER user
RUN mkdir -p /data
ENTRYPOINT ["/bin/true"]
