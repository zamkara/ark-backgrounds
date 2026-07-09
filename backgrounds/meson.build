backgrounds = [
  'grid.heic',
]

install_data(backgrounds, install_dir: backgrounddir)


dataconf = configuration_data()
dataconf.set('BACKGROUNDDIR', backgrounddir)
dataconf.set('datadir', datadir)

foreach metadata : [
  'grid.xml',
]
  configure_file(
    input: metadata + '.in',
    output: metadata,
    configuration: dataconf,
    install: true,
    install_dir: metadatadir
  )
endforeach
