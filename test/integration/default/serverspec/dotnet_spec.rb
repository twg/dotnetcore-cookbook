require 'spec_helper'

case os[:family]
when 'windows'

    describe package('Microsoft Dotnet CLI for Windows (1.0.0.001675 )') do
        it { should be_installed }
    end

when 'ubuntu'

    describe package('dotnet') do
        it { should be_installed }
    end 
    
    describe command('dotnet --version') do
        its(:stdout) { should match /.NET Command Line Tools / }
    end 

end

#Agnostic tests below