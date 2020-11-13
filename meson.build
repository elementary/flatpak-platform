project('io.elementary.Sdk', version: '0.1.0')

data = configuration_data()
data.set('SDK_BRANCH', meson.project_version())
data.set('GNOME_VERSION', '3.38')

sdk_json = configure_file(
    input: 'io.elementary.Sdk.json.in',
    output: '@BASENAME@',
    configuration: data
)

flatpak_builder = find_program('flatpak-builder')
custom_target(
    'sdk',
    command: [
        flatpak_builder,
        'builddir',
        sdk_json,
        '--install-deps-from=flathub',
        '--force-clean',
        '--repo='+join_paths(meson.current_build_dir(), 'repo'),
        '--ccache'
    ],
    console: true,
    output: 'io.elementary.Sdk',
    build_by_default: true
)
