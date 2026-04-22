# frozen_string_literal: true

provides :cpu_affinity

property :pid, [String, Integer], name_property: true
property :cpu, [String, Integer], required: true

unified_mode true
default_action :set

action :set do
  resolved_pid = findpid(new_resource.pid)

  package 'util-linux'

  execute 'set affinity' do
    command "taskset --cpu-list --pid #{new_resource.cpu} #{resolved_pid}"
    not_if "taskset --cpu-list --pid #{resolved_pid} | grep -F -- 'current affinity list: #{new_resource.cpu}'"
  end
end

action_class do
  include CpuCookbook::Helpers
end
