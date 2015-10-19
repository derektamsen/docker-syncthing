FROM debian:jessie

RUN useradd --create-home user

RUN apt-get update && apt-get install -y --no-install-recommends \
  ca-certificates \
  curl \

RUN curl -fSL https://syncthing.net/release-key.txt | apt-key add -
RUN echo "deb http://apt.syncthing.net/ syncthing release" | tee /etc/apt/sources.list.d/syncthing-release.list
RUN apt-get update && apt-get install -y syncthing

RUN apt-get purge -y --auto-remove curl

USER user
ENTRYPOINT ["syncthing"]
