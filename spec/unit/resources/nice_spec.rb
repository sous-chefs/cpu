# frozen_string_literal: true

require 'spec_helper'

describe 'cpu_nice resource' do
  before do
    stub_command("ps -o ni= -p #{Process.pid} | tr -d ' ' | grep -x -- 1").and_return(false)
  end

  let(:chef_run) do
    ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04', step_into: ['cpu_nice']).converge('test::nice')
  end

  it 'sets the process priority' do
    expect(chef_run).to run_execute('set nice').with(
      command: "renice 1 #{Process.pid}"
    )
  end
end
