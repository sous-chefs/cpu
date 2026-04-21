# frozen_string_literal: true

provides :cpu_governor
unified_mode true

property :governor, String,
         name_property: true,
         regex: [/\A[\w-]+\z/]
property :cpus, [Array, Integer],
         coerce: proc { |value| Array(value) },
         default: lazy { (0...node['cpu']['total']).to_a }
property :package_name, String,
         default: 'cpufrequtils',
         desired_state: false

default_action :set

action :set do
  if unsupported_platform?
    Chef::Log.warn("The cpu_governor resource does not support #{node['platform']} #{node['platform_version']}. Skipping.")
    return
  end

  package new_resource.package_name

  new_resource.cpus.each do |cpu|
    execute "set governor for CPU #{cpu}" do
      command "cpufreq-set --cpu #{cpu} --governor #{new_resource.governor}"
      only_if "cpufreq-info --cpu #{cpu} --governors | grep -w -- #{new_resource.governor}"
      not_if "cpufreq-info --cpu #{cpu} --policy | grep -F -- 'The governor \"#{new_resource.governor}\"'"
    end
  end
end

action_class do
  def unsupported_platform?
    (platform_family?('rhel') && node['platform_version'].to_i == 7) || platform?('fedora')
  end
end
