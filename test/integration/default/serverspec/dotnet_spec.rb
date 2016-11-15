require 'spec_helper'

case os[:family]
when 'windows'

    describe package('Microsoft Dotnet CLI for Windows (1.0.0.001675 )') do
        it { should be_installed }
    end

when 'ubuntu'

    describe package('dotnet-dev-1.0.0-preview2-003131') do
        it { should be_installed }
    end

    describe command('dotnet --help') do
        its(:stdout) { should contain('.NET Command Line Tools') }
    end
when 'centos', 'amazon', 'oracle'
  describe command('dotnet --help') do
      its(:stdout) { should contain('.NET Command Line Tools') }
  end
end

#Agnostic tests below
