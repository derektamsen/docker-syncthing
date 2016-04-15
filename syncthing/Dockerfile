FROM debian:jessie

RUN wget -qO- "https://syncthing.net/release-key.txt" | apt-key add - && \
  echo "deb http://apt.syncthing.net/ syncthing release" | tee /etc/apt/sources.list.d/syncthing-release.list

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  syncthing

EXPOSE 8384 22000
EXPOSE 21025/udp 21026/udp

RUN useradd --system --no-create-home --user-group --shell /bin/false user
USER user

ENTRYPOINT ["syncthing"]
CMD ["-logfile", "/data/syncthing.log", "-home", "/data", "-gui-address", "0.0.0.0:8384"]
