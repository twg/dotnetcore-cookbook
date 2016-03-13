#
# Cookbook Name:: dotnetcore
# Recipe:: _ubuntu
#
# Copyright (C) 2016 Andrew Cornies
#
# All rights reserved - Do Not Redistribute
#

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