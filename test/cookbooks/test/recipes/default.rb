#
# Cookbook:: test
# Recipe:: default
#

apt_update 'update' if platform_family?('debian')

test_pid_file = '/tmp/cpu_test.pid'

execute 'start cpu test process' do
  command "sh -c 'sleep 600 >/dev/null 2>&1 & echo $! > #{test_pid_file}'"
  not_if "test -f #{test_pid_file} && kill -0 $(cat #{test_pid_file})"
end

cpu_governor 'ondemand'

cpu_affinity test_pid_file do
  cpu 0
end

cpu_nice test_pid_file do
  priority 1
end
