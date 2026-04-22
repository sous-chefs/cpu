# frozen_string_literal: true

require 'spec_helper'

describe 'cpu_affinity resource' do
  before do
    stub_command("taskset --cpu-list --pid #{Process.pid} | grep -F -- 'current affinity list: 0'").and_return(false)
  end

  let(:chef_run) do
    ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04', step_into: ['cpu_affinity']).converge('test::affinity')
  end

  it 'installs util-linux' do
    expect(chef_run).to install_package('util-linux')
  end

  it 'sets the cpu affinity' do
    expect(chef_run).to run_execute('set affinity').with(
      command: "taskset --cpu-list --pid 0 #{Process.pid}"
    )
  end
end
