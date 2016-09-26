#
# Cookbook Name:: dotnetcore
# Recipe:: _tar_install
#
# Copyright (C) 2016 Andrew Cornies
#
# All rights reserved - Do Not Redistribute
#

package 'libunwind'
package 'libicu'

directory '/opt/dotnet' do
  recursive true
end

tar_extract 'https://go.microsoft.com/fwlink/?LinkID=827529' do
  target_dir '/opt/dotnet'
  creates '/opt/dotnet/dotnet'
end

link '/opt/dotnet/dotnet' do
  to '/usr/local/bin/dotnet'
end
