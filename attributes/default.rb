default['cpu']['governor'] = 'ondemand'

case node['platform_family']
  when 'debian', 'suse'
  default['cpu']['utilities']['affinity'] = 'util-linux'
when 'rhel'
  default['cpu']['utilities']['affinity'] = 'schedutils'
end

default['cpu']['utilities']['governor'] = 'cpufrequtils'

default['cpu']['enable'] = ['governor']

default['cpu']['install_method'] = 'install'
