project(
    'io.elementary.Platform',
    meson_version: '>=0.56.0',
)

config_data = configuration_data()
config_data.set('libdir', get_option('prefix') / get_option('libdir'))
config_data.set('branch', get_option('branch'))
config_data.set('source_dir', meson.current_source_dir())
configure_file(
    input: 'io.elementary.Sdk.json.in',
    output: '@BASENAME@',
    configuration: config_data,
)
