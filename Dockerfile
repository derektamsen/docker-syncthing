FROM alpine:3.5

# create regular user
RUN addgroup -S -g 5000 syncthing ;\
  adduser -S -H -s /sbin/nologin -G syncthing -D -u 5000 syncthing

# install the services
RUN apk update && apk --update add \
  syncthing \
  && rm -rf /tmp/* /var/cache/apk/*

EXPOSE 8384 22000 21027/udp

USER syncthing

ENTRYPOINT ["syncthing"]
CMD ["-logfile", "/data/syncthing.log", "-home", "/data", "-gui-address", "0.0.0.0:8384"]
