#
# Cookbook Name:: moodle
# Recipe:: default
#
# Copyright 2015, NASEBANAL
#
# All rights reserved - Do Not Redistribute
#

## Create work directory

directory node['moodle']['working_dir'] do
	action :create
end


## Prepare Moodle directory

remote_directory node['moodle']['install_dir'] do
	source "moodle"
	owner "apache"
	group "apache"
	mode 00755
end

