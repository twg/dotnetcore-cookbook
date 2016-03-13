#
# Cookbook Name:: dotnetcore
# Recipe:: _windows
#
# Copyright (C) 2016 Andrew Cornies
#
# All rights reserved - Do Not Redistribute
#

# require 'chef/win32/version'

package 'dotnet' do
    source node['dotnetcore']['windows_source_url']
end

# windows_version = Chef::ReservedNames::Win32::Version.new

# if (windows_version.windows_7? 
#     || windows_version.windows_server_2008_r2?
#     || windows_version.windows_server_2008?
#     || windows_version.windows_server_2012?
#     || windows_version.windows_server_2012_r2?) then   

# end