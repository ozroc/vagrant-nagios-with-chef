name 'monitoring'
description 'Monitoring server'

run_list(
  'recipe[chef-solo-search]',
  'recipe[nagios::server]'
)

default_attributes(
  :nagios => {
    :server_auth_method => 'htauth',
    :url => 'nagios.popanything.net'
  }
)