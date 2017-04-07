name 'cpu'
maintainer 'Guilhem Lettron'
maintainer_email 'guilhem@lettron.fr'
license 'Apache-2.0'
description 'Manage CPU Governor on linux'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '1.0.0'
supports 'ubuntu'
supports 'debian'
supports 'redhat'
supports 'fedora'
supports 'scientific'
supports 'oracle'
supports 'amazon'

source_url 'https://github.com/redguide/cpu'
issues_url 'https://github.com/redguide/cpu/issues'
chef_version '>= 12.5' if respond_to?(:chef_version)
