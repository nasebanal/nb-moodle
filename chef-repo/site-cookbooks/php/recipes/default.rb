#
# Cookbook Name:: php
# Recipe:: default
#
# Copyright 2015, NASEBANAL
#
# All rights reserved - Do Not Redistribute
#


## Create work directory

directory node['php']['working_dir'] do
	action :create
end


## Install RPM

package "epel-rpm" do
        action :install
        source "http://dl.fedoraproject.org/pub/epel/6/x86_64/epel-release-6-8.noarch.rpm"
        provider Chef::Provider::Package::Rpm
end

package "remi-rpm" do
        action :install
        source "http://rpms.famillecollet.com/enterprise/remi-release-6.rpm"
        provider Chef::Provider::Package::Rpm
end


## Uninstall php

package "php" do
	action :remove
end


## Install php

bash "Install php" do
        code <<-EOC
yum install -y php --enablerepo=remi-php55
yum install -y phpMyAdmin --enablerepo=remi-php55
        EOC
end


## Copy conf file

template node['php']['conf_file_path'] do
	source node['php']['conf_file']
	mode '0666'
end
