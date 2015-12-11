#
# Cookbook Name:: user
# Recipe:: default
#
# Copyright 2015, NASEBANAL
#
# All rights reserved - Do Not Redistribute
#

## Set root password

user 'root' do
	password '$1$KP8L6vGg$OaBeP50WUuquHZzLGV41l0'
	action :manage
end

## Create osdk_admin group

group 'moodle_admin' do
	group_name  'moodle_admin'
	gid 200
	action  :create
end

## Create moodle_admin user

user 'moodle_admin' do
	uid 200
	group   'moodle_admin'
	home    '/home/moodle_admin'
	shell   '/bin/bash'
	password    '$1$2R69c9A/$5JKJ99U60VeRFS0/iIS9D/'
	action  :create
end
