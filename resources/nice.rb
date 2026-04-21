# frozen_string_literal: true

provides :cpu_nice

property :pid, [String, Integer], name_property: true
property :priority, Integer, required: true

unified_mode true
default_action :set

action :set do
  resolved_pid = findpid(new_resource.pid)

  execute 'set nice' do
    command "renice #{new_resource.priority} #{resolved_pid}"
    not_if "ps -o ni= -p #{resolved_pid} | tr -d ' ' | grep -x -- #{new_resource.priority}"
  end
end

action_class do
  include CpuCookbook::Helpers
end
