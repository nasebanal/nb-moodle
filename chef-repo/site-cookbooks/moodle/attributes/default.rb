## for directory path
default['moodle']['working_dir'] = ::File.join(Chef::Config[:file_cache_path],'moodle')
default['moodle']['install_dir'] = '/var/www/html/moodle'
default['moodle']['data_dir'] = '/var/www/moodledata'

## for file path
default['moodle']['installer_path'] = ::File.join(node['moodle']['working_dir'],'moodle-3.0.zip')
