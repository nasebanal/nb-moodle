## for directory path
default['php']['conf_dir'] = '/etc/httpd/conf.d'

## for file path
default['php']['conf_file'] = 'phpMyAdmin.conf'
default['php']['conf_file_path'] = ::File.join(node['php']['conf_dir'], node['php']['conf_file'])
