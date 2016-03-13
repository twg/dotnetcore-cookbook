#
# Cookbook Name:: dotnetcore
# Recipe:: default
#
# Copyright (C) 2016 Andrew Cornies
#
# All rights reserved - Do Not Redistribute
#

case node['platform']
when 'windows'
    include_recipe 'dotnetcore::_windows'
when 'debian', 'ubuntu'
    include_recipe 'dotnetcore::_ubuntu'
else
    fail 'This cookbook currently only supports Debian/Ubuntu and Windows.'
end

### RESOURCE TEST
# app_dir = '/home/vagrant/myapp'
# directory app_dir

# execute 'dotnet-new-test' do
#     cwd app_dir
#     command 'dotnet new'
#     only_if { !::File.exist?("#{app_dir}/NuGet.Config") }
# end

# dotnet_restore 'test' do
#     nuget_config_file "#{app_dir}/NuGet.Config"
#     user 'root'
#     cwd app_dir
# end

# dotnet_run 'test' do
#     path app_dir
#     user 'root'
# end
### END