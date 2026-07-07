project('ark-backgrounds',
  version: '0.1.0',
  meson_version: '>= 0.50.0'
)

prefix = get_option('prefix')

datadir = join_paths(prefix, get_option('datadir'))
backgrounddir = join_paths(datadir, 'backgrounds', 'ark')
metadatadir = join_paths(datadir, 'gnome-background-properties')
schemadir = join_paths(datadir, 'glib-2.0', 'schemas')

subdir('backgrounds')
