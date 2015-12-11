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


## Copy Moodle file

cookbook_file node['moodle']['installer_path'] do
	source "moodle-3.0.zip"
	mode  00644
end


## Install Moodle

bash 'install moodle' do
	action :run
	cwd node['moodle']['working_dir']
	code <<-EOH
unzip moodle-3.0.zip
EOH
end
