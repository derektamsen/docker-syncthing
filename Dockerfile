FROM debian:jessie

RUN useradd --create-home user

RUN apt-get update && apt-get install -y ca-certificates --no-install-recommends && rm -rf /var/lib/apt/lists/*

RUN set -x \
  && apt-get update && apt-get install -y curl --no-install-recommends && rm -rf /var/lib/apt/lists/* \
  && curl -fSL https://syncthing.net/release-key.txt | apt-key add -
  && apt-get purge -y --auto-remove curl \
  && echo deb http://apt.syncthing.net/ syncthing release | tee /etc/apt/sources.list.d/syncthing-release.list \
  && apt-get update && apt-get install -y syncthing

USER user
ENTRYPOINT ["syncthing"]
