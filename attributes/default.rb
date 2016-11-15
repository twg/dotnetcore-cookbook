#
# Cookbook Name:: dotnetcore
# Attribute:: default
#
# Copyright (C) 2016 Andrew Cornies
#
# All rights reserved - Do Not Redistribute
#

default['dotnetcore']['package']['name'] = 'dotnet-dev-1.0.0-preview2-003131'
default['dotnetcore']['package']['source_url'] = 'https://download.microsoft.com/download/0/A/3/0A372822-205D-4A86-BFA7-084D2CBE9EDF/DotNetCore.1.0.1-SDK.1.0.0.Preview2-003133-x64.exe'

default['dotnetcore']['apt_package_source'] = 'http://apt-mo.trafficmanager.net/repos/dotnet-release'
default['dotnetcore']['apt_package_source_key'] = "http://apt-mo.trafficmanager.net/repos/dotnet-release/dists/#{node['lsb']['codename']}/Release.gpg"
