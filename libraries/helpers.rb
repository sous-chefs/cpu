module CpuCookbook
  module Helpers
    def findpid(pid_or_file)
      if ::File.file?(pid_or_file)
        if ::File.readable?(pid_or_file)
          pid = ::File.read(pid_or_file).to_i
        else
          Chef::Log.error("File #{pid_or_file} isn't readable")
        end
      else
        pid = pid_or_file.to_i
      end
      # Test if pid exist
      begin
        Process.getpgid(pid)
      rescue Errno::ESRCH
        Chef::Log.error("Pid #{pid} not found")
      end
      pid
    end
  end
end
