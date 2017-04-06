#
# Cookbook:: test
# Recipe:: default
#

apt_update 'update'

include_recipe 'cpu::governor'
