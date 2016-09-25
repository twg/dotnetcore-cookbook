#
# Cookbook Name:: dotnetcore
# Attribute:: default
#
# Copyright (C) 2016 Andrew Cornies
#
# All rights reserved - Do Not Redistribute
#

default['dotnetcore']['package']['name'] = 'dotnet-dev-1.0.0-preview2-003131'
default['dotnetcore']['package']['source_url'] = 'https://dotnetcli.blob.core.windows.net/dotnet/beta/Installers/1.0.0.001675/dotnet-win-x64.1.0.0.001675.exe'

default['dotnetcore']['apt_package_source'] = 'http://apt-mo.trafficmanager.net/repos/dotnet'
default['dotnetcore']['apt_package_source_key'] = "http://apt-mo.trafficmanager.net/repos/dotnet/dists/trusty/Release.gpg"
