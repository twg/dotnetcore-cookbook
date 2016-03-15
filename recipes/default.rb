#
# Cookbook Name:: dotnetcore
# Recipe:: default
#
# Copyright (C) 2016 Andrew Cornies
#
# All rights reserved - Do Not Redistribute
#

include_recipe 'dotnetcore::_platform'

### RESOURCE TEST
# app_dir = '/home/vagrant/myapp'
# directory app_dir

# execute 'dotnet-new-test' do
#     cwd app_dir
#     command 'dotnet new'
#     only_if { !::File.exist?("#{app_dir}/NuGet.Config") }
# end

#dotnet_restore 'test' do
#    nuget_config_file "#{app_dir}/NuGet.Config"
#    user 'root'
#    cwd app_dir
#end

# dotnet 'test' do
#     nuget_config_file "#{app_dir}/NuGet.Config"
#     path app_dir
#     user 'root'
#     cwd app_dir
# end
### END