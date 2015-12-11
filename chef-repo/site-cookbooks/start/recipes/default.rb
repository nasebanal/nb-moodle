#
# Cookbook Name:: start
# Recipe:: default
#
# Copyright 2015, NASEBANAL
#
# All rights reserved - Do Not Redistribute
#


## Start sshd

service "sshd" do
	action :start
end


## Start httpd

service "httpd" do
	action :start
end


## Start mysqld

service "mysqld" do
	action :start
end
