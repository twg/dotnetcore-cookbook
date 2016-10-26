#
# Cookbook Name:: dotnetcore
# Recipe:: _platform
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
when 'centos', 'amazon', 'oracle'
    include_recipe 'dotnetcore::_tar_install'
else
    fail 'This cookbook currently only supports Debian/Ubuntu, CentOS/Amazon/Oracle, and Windows.'
end
