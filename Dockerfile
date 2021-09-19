FROM ubuntu:latest

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install flatpak flatpak-builder python3-aiohttp python3-tenacity python3-gi xvfb ccache zstd docker.io && \
    apt-get -y autoremove && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/*

RUN flatpak remote-add --if-not-exists appcenter https://flatpak.elementary.io/repo.flatpakrepo

ADD https://raw.githubusercontent.com/flatpak/flat-manager/master/flat-manager-client /usr/bin
RUN chmod +x /usr/bin/flat-manager-client
