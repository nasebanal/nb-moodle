#
# Cookbook Name:: mysqld
# Recipe:: default
#
# Copyright 2015, NASEBANL
#
# All rights reserved - Do Not Redistribute
#


## Copy files

directory node['mysqld']['working_dir'] do
	action :create
end

## Install mysql-server

package "mysql-server" do
	action :upgrade
	version "5.1.73"
end


## Enable mysql-server

service "mysqld" do
	action [ :enable, :start ]
end


## Copy files

remote_directory node['mysqld']['init_db_dir'] do
    source 'init_db'
    mode '0777'
end


## Initialize Database

bash "init db" do
	action :run
	cwd node['mysqld']['working_dir']
	code <<-EOH
chmod 755 #{node['mysqld']['init_sh_path']}
#{node['mysqld']['init_sh_path']} #{node['mysqld']['root_password']} #{node['mysqld']['drop_db_path']} #{node['mysqld']['create_db_path']}
EOH
end
