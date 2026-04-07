FROM ubuntu:latest

ARG TARGETARCH

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
    apt-get -y install curl flatpak flatpak-builder python3-aiohttp python3-tenacity python3-gi libostree-dev xvfb ccache zstd docker.io && \
    apt-get -y autoremove && \
    apt-get autoclean && \
    rm -rf /var/lib/apt/lists/*

RUN flatpak remote-add --if-not-exists appcenter https://flatpak.elementary.io/repo.flatpakrepo

RUN curl -L https://github.com/flatpak/flat-manager/releases/download/0.5.0/flat-manager-client.$TARGETARCH -o ./flat-manager-client

RUN SHA256_EXPECTED=$( \
        case $TARGETARCH in \
            amd64) echo "9733a148ac185bc8d7fb0429a43f9ad7d934635760bb71933658642c697f87c9";; \
            arm64) echo "fa9a916badc539ff7319895789f004dc99b81eb8e90a75857232121650335956";; \
        esac \
    ) && \
    SHA256_CALC=$(sha256sum ./flat-manager-client | awk '{ print $1 }') && \
    [ "$SHA256_CALC" = "$SHA256_EXPECTED" ]

RUN mv ./flat-manager-client /usr/bin/flat-manager-client
RUN chmod +x /usr/bin/flat-manager-client
