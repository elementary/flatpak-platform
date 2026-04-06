FROM ubuntu:latest

ARG TARGETARCH

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install flatpak flatpak-builder python3-aiohttp python3-tenacity python3-gi libostree-dev xvfb ccache zstd docker.io && \
    apt-get -y autoremove && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/*

RUN flatpak remote-add --if-not-exists appcenter https://flatpak.elementary.io/repo.flatpakrepo

ADD https://github.com/flatpak/flat-manager/releases/download/0.5.0/flat-manager-client.$TARGETARCH /usr/bin/flat-manager-client
RUN chmod +x /usr/bin/flat-manager-client
