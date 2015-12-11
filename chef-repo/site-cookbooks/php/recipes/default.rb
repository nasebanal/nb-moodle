#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2015, NASEBANAL
#
# All rights reserved - Do Not Redistribute
#

## Install php

package "php" do
	action :upgrade
	version "5.5"
end


## Install php-mysql

package "php-mysql" do
	action :upgrade
	version "5.5"
end


## Install php-mbstring

package "php-mbstring" do
	action :upgrade
	version "5.5"
end


## Install phpMyAdmin

package "phpMyAdmin" do
	action :upgrade
	version "4.0.10"
end


## Copy conf file

template node['php']['conf_file_path'] do
	source node['php']['conf_file']
	mode '0666'
end
