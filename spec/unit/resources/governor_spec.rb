# frozen_string_literal: true

require 'spec_helper'

describe 'cpu_governor resource' do
  context 'on Ubuntu 20.04' do
    before do
      stub_command('cpufreq-info --cpu 0 --governors | grep -w -- ondemand').and_return(true)
      stub_command("cpufreq-info --cpu 0 --policy | grep -F -- 'The governor \"ondemand\"'").and_return(false)
    end

    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '20.04', step_into: ['cpu_governor']) do |node|
        node.automatic['cpu']['total'] = 1
      end.converge('test::governor')
    end

    it 'installs cpufrequtils' do
      expect(chef_run).to install_package('cpufrequtils')
    end

    it 'sets the governor for cpu 0' do
      expect(chef_run).to run_execute('set governor for CPU 0').with(
        command: 'cpufreq-set --cpu 0 --governor ondemand'
      )
    end
  end

  context 'on CentOS 7' do
    before do
      allow(Chef::Log).to receive(:warn)
    end

    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'centos', version: '7', step_into: ['cpu_governor']) do |node|
        node.automatic['cpu']['total'] = 1
      end.converge('test::governor')
    end

    it 'warns and skips package installation' do
      expect(Chef::Log).to receive(:warn).with(/cpu_governor resource does not support centos 7/i)

      chef_run

      expect(chef_run).not_to install_package('cpufrequtils')
    end
  end

  context 'on Fedora' do
    before do
      allow(Chef::Log).to receive(:warn)
    end

    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'fedora', step_into: ['cpu_governor']) do |node|
        node.automatic['cpu']['total'] = 1
      end.converge('test::governor')
    end

    it 'warns and skips package installation' do
      expect(Chef::Log).to receive(:warn).with(/cpu_governor resource does not support fedora/i)

      chef_run

      expect(chef_run).not_to install_package('cpufrequtils')
    end
  end
end
