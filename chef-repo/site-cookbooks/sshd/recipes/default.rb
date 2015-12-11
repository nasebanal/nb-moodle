#
# Cookbook Name:: sshd
# Recipe:: default
#
# Copyright 2015, NASEBANAL
#
# All rights reserved - Do Not Redistribute
#


## Install openssh-server

package "openssh-server" do
	action :upgrade
	version "5.3"
end


## Install openssh-client

package "openssh-clients" do
	action :upgrade
	version "5.3"
end


## Enable sshd

service "sshd" do
	action [ :enable, :start ]
end
