# NASEBANAL Wordpress

This is Chef Recipe to create docker image for NASEBANAL Wordpress
You can get Docker image from https://hub.docker.com/r/syatsuzuka/nb-wordpress/

[Component]
* epel 6
* tar 1.23
* sshd 5.3
* httpd 2.2.15
* mysql-server 5.1.73
* php 5.3.3
* php-mysql 5.3.3
* php-mbstring 5.3.3
* php-gd 5.3.3
* phpMyAdmin 4.0.10
* wordpress 4.1


[How to Use]

Step.1) Prepare working directory

	$ mkdir work

Step.2) Download the recipe

	$ git clone https://github.com/nasebanal/nb-wordpress.git

Step.3) Execute the following command to create docker image

	$ cd nb-wordpress
	$ sudo docker build -t <Docker Image Name> .

Step.4) Run Docker

    # docker run -p 0.0.0.0:80:80 --priviledged -it --name <Docker container> <Docker image> /bin/bash

Step.5) Start services

    $ cd /var/chef-repo
    $ chef-solo -c solo.rb -j nodes/start.json

Step.6) Access the following URL

	http://<IP address>/wordpress/
