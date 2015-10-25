FROM debian:jessie

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl

RUN curl -fSL "https://syncthing.net/release-key.txt" | apt-key add -
RUN echo "deb http://apt.syncthing.net/ syncthing release" | tee /etc/apt/sources.list.d/syncthing-release.list
RUN apt-get update && apt-get install -y syncthing

RUN apt-get purge -y --auto-remove curl

EXPOSE 8384 22000 21025 21026

ENTRYPOINT ["syncthing"]
CMD ["-logfile", "/data/syncthing.log", "-home", "/data", "-gui-address", "0.0.0.0:8384"]
