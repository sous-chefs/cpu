# frozen_string_literal: true

control 'cpu-default-resources' do
  impact 1.0
  title 'default test recipe applies the cpu resources'
  test_pid = file('/tmp/cpu_test.pid').content.to_i

  describe file('/tmp/cpu_test.pid') do
    it { should exist }
  end

  describe command('which taskset') do
    its('exit_status') { should eq 0 }
  end

  describe command('which renice') do
    its('exit_status') { should eq 0 }
  end

  describe command("taskset --cpu-list --pid #{test_pid}") do
    its('stdout') { should match(/current affinity list: 0/) }
  end

  describe command("ps -o ni= -p #{test_pid} | tr -d ' '") do
    its('stdout') { should cmp "1\n" }
  end

  next if os.redhat? && os.release.to_i == 7

  describe command('which cpufreq-set') do
    its('exit_status') { should eq 0 }
  end
end
