#
# Cookbook:: test
# Recipe:: nice
#

cpu_nice Process.pid do
  priority 1
end
