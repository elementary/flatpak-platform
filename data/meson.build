i18n.merge_file(
    input: 'platform.appdata.xml.in',
    output: 'io.elementary.Platform.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po'),
    type: 'xml',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo'),
)

i18n.merge_file(
    input: 'sdk.appdata.xml.in',
    output: 'io.elementary.Sdk.appdata.xml',
    po_dir: join_paths(meson.source_root(), 'po'),
    type: 'xml',
    install: true,
    install_dir: join_paths(get_option('datadir'), 'metainfo'),
)
