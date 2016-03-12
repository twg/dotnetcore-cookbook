#
# Cookbook Name:: dotnetcore
# Recipe:: default
#
# Copyright (C) 2016 Andrew Cornies
#
# All rights reserved - Do Not Redistribute
#

if node['platform'] != 'ubuntu' then
    fail 'This cookbook currently only supports Ubuntu.'
end

apt_repository 'dotnetdev' do
    uri node['dotnetcore']['apt_package_source']
    components ['main']
    distribution 'trusty'
    arch 'amd64'
    key node['dotnetcore']['apt_package_source_key']
end

package "dotnet" do
    version node['dotnetcore']['version']
    options '--force-yes'
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