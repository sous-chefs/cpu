name 'cpu'
maintainer 'Guilhem Lettron'
maintainer_email 'guilhem@lettron.fr'
license 'Apache-2.0'
description 'Manage CPU Governor on linux'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'
supports 'ubuntu'
supports 'debian'

source_url 'https://github.com/redguide/cpu' if respond_to?(:source_url)
issues_url 'https://github.com/redguide/cpu/issues' if respond_to?(:issues_url)
chef_version '>= 11.0' if respond_to?(:chef_version)
