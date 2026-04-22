#
# Cookbook:: test
# Recipe:: governor
#

apt_update 'update' if platform_family?('debian')

cpu_governor 'ondemand'
