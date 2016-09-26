#
# Cookbook Name:: dotnetcore
# Recipe:: _tar_install
#
# Copyright (C) 2016 Andrew Cornies
#
# All rights reserved - Do Not Redistribute
#
# Installs dotnetcore using the tar instructions intended for CentOS, Oracle Linux, and Amazon
# https://www.microsoft.com/net/core#centos

package 'libunwind'
package 'libicu'

directory '/opt/dotnet' do
  recursive true
end

tar_extract 'https://go.microsoft.com/fwlink/?LinkID=827529' do
  target_dir '/opt/dotnet'
  creates '/opt/dotnet/dotnet'
end

link '/usr/local/bin/dotnet' do
  to '/opt/dotnet/dotnet'
end
