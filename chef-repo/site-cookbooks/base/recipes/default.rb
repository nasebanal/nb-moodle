#
# Cookbook Name:: base
# Recipe:: default
#
# Copyright 2015, NASEBANAL
#
# All rights reserved - Do Not Redistribute
#


## Install tar

package "tar" do
	action :upgrade
	version "1.23"
end


## Append epel for repository list
yum_repository 'epel' do
	mirrorlist 'http://mirrors.fedoraproject.org/mirrorlist?repo=epel-6&arch=$basearch'
	fastestmirror_enabled true
	gpgkey 'http://dl.fedoraproject.org/pub/epel/RPM-GPG-KEY-EPEL-6'
	action :create
end
