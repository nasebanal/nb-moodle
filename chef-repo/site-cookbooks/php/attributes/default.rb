## for directory path
default['php']['working_dir'] = ::File.join(Chef::Config[:file_cache_path],'php')
default['php']['conf_dir'] = '/etc/httpd/conf.d'

## for file path
default['php']['rpm_file'] = 'latest.rpm'
default['php']['rpm_file_path'] = ::File.join(node['php']['working_dir'], node['php']['rpm_file'])
default['php']['conf_file'] = 'phpMyAdmin.conf'
default['php']['conf_file_path'] = ::File.join(node['php']['conf_dir'], node['php']['conf_file'])
