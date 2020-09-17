require 'spec_helper'

describe 'package installation' do
  before do
    mock_mixlib_shellout = double('new')
    mock_output_stream = double('output_stream')

    allow(Mixlib::ShellOut).to receive(:new).and_return(mock_mixlib_shellout)

    allow(mock_mixlib_shellout).to receive(:live_stream).and_return(mock_output_stream)
    allow(mock_mixlib_shellout).to receive(:run_command).and_return(mock_mixlib_shellout)
    allow(mock_mixlib_shellout).to receive(:stdout).and_return('100')

    stub_command('cpufreq-info --cpu 0 --governors | grep ondemand').and_return(false)
  end

  describe 'test::default on Ubuntu 16.04' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'ubuntu', version: '16.04').converge('test::default')
    end

    it 'installs cpufrequtils' do
      expect(chef_run).to install_package('cpufrequtils')
    end
  end

  describe 'test::default on CentOS 6' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'centos', version: '6').converge('test::default')
    end

    it 'installs cpufrequtils' do
      expect(chef_run).to install_package('cpufrequtils')
    end
  end

  describe 'test::default on CentOS 7' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'centos', version: '7').converge('test::default')
    end

    it 'does not install cpufrequtils' do
      expect(chef_run).not_to install_package('cpufrequtils')
    end
  end

  describe 'test::default on Fedora' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'fedora', version: '31').converge('test::default')
    end

    it 'does not install cpufrequtils' do
      expect(chef_run).not_to install_package('cpufrequtils')
    end
  end

  describe 'test::default on Amazon Linux' do
    let(:chef_run) do
      ChefSpec::SoloRunner.new(platform: 'amazon', version: '2016.09').converge('test::default')
    end

    it 'installs cpufrequtils' do
      expect(chef_run).to install_package('cpufrequtils')
    end
  end
end
