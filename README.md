<div align="center">
  <h1 align="center"><center>flatpak-platform</center></h1>
  <h3 align="center"><center>An elementary OS Flatpak platform</center></h3>
  <br>
  <br>
</div>

<p align="center">
  <img src="https://github.com/elementary/flatpak-platform/workflows/Daily/badge.svg" alt="Daily">
</p>

---

## Building

If you want to build this flatpak platform locally, you will need:

- flatpak-builder
- git

Next, you will need the flathub flatpak repository installed locally. You can follow
instructions for that [here](https://flatpak.org/setup/).

Next, you can run this command to build:

```sh
flatpak-builder --force-clean --install-deps-from=flathub --ccache --repo=elementary --install builddir ./io.elementary.Sdk.json
```

## Publishing

This repository has CI/CD setup. Building and publishing is handled automatically with the help of some amazing GitHub
actions, and takes no human interaction.

### Daily

Every push to the `main` branch will start a build and publish it to our repository under the `daily` branch. This
branch is build frequently and is **not recommended for production**.

### Stable

**TODO**
