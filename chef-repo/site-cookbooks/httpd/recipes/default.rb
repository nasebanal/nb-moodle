#
# Cookbook Name:: httpd
# Recipe:: default
#
# Copyright 2015, NASEBANAL
#
# All rights reserved - Do Not Redistribute
#

## Install httpd

package "httpd" do
	action :upgrade
	version "2.4"
end

## Enable Service

service "httpd" do
	action [ :enable, :start ]
end
