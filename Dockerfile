FROM bilelmoussaoui/flatpak-github-actions:gnome-3.38

RUN flatpak remote-add --if-not-exists appcenter https://flatpak.elementary.io/repo.flatpakrepo

RUN flatpak install -y appcenter \
  io.elementary.Platform//daily \
  io.elementary.Sdk//daily
