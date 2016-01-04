## for directory path
default['mysqld']['working_dir'] = ::File.join(Chef::Config[:file_cache_path], 'mysqld')
default['mysqld']['init_db_dir'] = ::File.join(node['mysqld']['working_dir'], 'init_db')

## for file path
default['mysqld']['init_sh'] = 'init_db.sh'
default['mysqld']['init_sh_path'] = ::File.join(node['mysqld']['init_db_dir'], node['mysqld']['init_sh'])
default['mysqld']['root_password'] = 'moodle'
default['mysqld']['drop_db'] = 'drop_db.sql'
default['mysqld']['drop_db_path'] = ::File.join(node['mysqld']['init_db_dir'], node['mysqld']['drop_db'])
default['mysqld']['create_db'] = 'create_db.sql'
default['mysqld']['create_db_path'] = ::File.join(node['mysqld']['init_db_dir'], node['mysqld']['create_db'])
