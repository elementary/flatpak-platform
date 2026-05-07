# Base on the official Docker image for CI by Flathub to use patched version of AppStream
# that propagates all custom tags in .metainfo files.
# See https://github.com/flatpak/flatpak-builder/pull/735
FROM ghcr.io/flathub-infra/flatpak-github-actions:gnome-50

RUN flatpak remote-add --if-not-exists appcenter https://flatpak.elementary.io/repo.flatpakrepo
