#
# Cookbook:: test
# Recipe:: affinity
#

cpu_affinity Process.pid do
  cpu 0
end
