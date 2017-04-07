#
# Cookbook:: test
# Recipe:: default
#

apt_update 'update'

include_recipe 'cpu::governor'

# we need something that will be running on every system
chef_pid = shell_out('pidof chef-client').run_command.stdout

cpu_affinity chef_pid do
  cpu 0
end

cpu_nice chef_pid do
  priority 1
end
