module Serverspec::Type
  class Rbenv < Base
    attr_reader :rbenv_root_path, :rbenv_user

    def initialize(rbenv_root_path=nil, rbenv_user=nil)
      @name   = 'rbenv'
      @rbenv_root_path = rbenv_root_path
      @rbenv_user = rbenv_user
      @runner = Specinfra::Runner
    end

    def installed?(provider=nil, version=nil)
      @runner.run_command("#{pre_command}; type rbenv").exit_status == 0
    end

    def has_ruby_version?(version)
      @runner.run_command("#{pre_command}; rbenv versions | grep #{version}").
        stdout.include?(version)
    end

    def has_global_ruby_version?(version)
      @runner.run_command("#{pre_command}; rbenv global").stdout.strip == version
    end

    private

    def pre_command
      "export PATH=#{@rbenv_root_path}/bin:$PATH; eval \"$(rbenv init -)\""
    end
  end
end
