FROM bilelmoussaoui/flatpak-github-actions:gnome-3.38

RUN flatpak remote-add --if-not-exists elementary https://flatpak.elementary.io/elementary.flatpakrepo
RUN flatpak install elementary io.elementary.Sdk//daily io.elementary.Platform//daily -y
