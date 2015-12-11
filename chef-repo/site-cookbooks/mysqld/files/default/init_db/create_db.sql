create database wordpress default character set utf8;
create user wordpressuser@localhost;
set password for wordpressuser@localhost=password("wordpress");
grant all on wordpress.* to wordpressuser@localhost identified by 'wordpress';
flush privileges;
