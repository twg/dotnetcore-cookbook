# test/integration/package/serverspec/dotnet_spec.rb

require 'spec_helper'

describe package('dotnet') do
    it { should be_installed }
end

describe command('dotnet --version') do
    its(:stdout) { should match /.NET Command Line Tools / }
end