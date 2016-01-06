#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2015, NASEBANAL
#
# All rights reserved - Do Not Redistribute
#


## Download repo path

remote_file "/etc/yum.repos.d/epel-httpd24.repo" do
	source "http://repos.fedorapeople.org/repos/jkaluza/httpd24/epel-httpd24.repo"
	mode 00644
end


## Install httpd

bash "Install httpd" do
        code <<-EOC
yum install -y httpd24.x86_64
        EOC
end


## Enable Service

#service "httpd" do
#	action [ :enable, :start ]
#end
