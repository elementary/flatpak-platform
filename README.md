# flatpak-platform

The elementary OS and AppCenter Flatpak platform

![Daily](https://github.com/elementary/flatpak-platform/workflows/Daily/badge.svg)

## Building

To build locally, you will need the Flathub Flatpak repository installed. You can follow the
[Flatpak setup instructions](https://flatpak.org/setup/).

Next, you will need:

- A lot of space (~ 15 Gb)
- `flatpak-builder`
- `git`

When building locally, you may wish to reduce the build time and disk space required by commenting out the `.Sdk.Debug`
line in the manifest. You'll only need to include this line if you're debugging an app crash.

And finally, to build and install:

```sh
flatpak-builder --force-clean --install-deps-from=flathub --ccache --repo=elementary --install builddir ./io.elementary.Sdk.json
```

## Publishing

This repository has CI/CD set up. Building and publishing is handled automatically with the help of some amazing GitHub
actions, and takes no human interaction.

### Daily

Every push to the `main` branch will start a build and publish it to our repository under the `daily` branch. This
branch is built frequently and is **not recommended for production**.

### Stable

To release a new stable version of the platform, simply open up a PR and add the `Release` label to it. Once it is merged,
a new stable `io.elementary.Platform` version `6` will be created and published.

> **NOTE** If you want to change the version, like release `io.elementary.Platform` version `7`, you will need to make
> changes in the `release.yml` GitHub action.
