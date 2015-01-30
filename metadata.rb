name 'cpu'
maintainer 'Jonathan Bogaty'
maintainer_email 'jon@jonbogaty.com'
license 'Apache v2.0'
description 'Manage CPU Governor on supported Linux systems'
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version '0.3.0'

[
  'ubuntu',
  'debian',
  'suse',
  'redhat',
  'centos'
].each do |os|
  supports os
end
