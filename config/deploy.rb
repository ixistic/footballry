# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'footballry-v001'
set :repo_url, 'https://github.com/ixistic/footballry.git'
set :passenger_restart_with_touch, true
set :rbenv_ruby, '2.3.1'

set :default_env, {
    'http_proxy' => '192.41.170.23:3128',
    'https_proxy' => '192.41.170.23:3128',
    'ftp_proxy' => '192.41.170.23:3128',
    'HTTPS_PROXY_REQUEST_FULLURI' => 'false',
    'SECRET_KEY_BASE' => 'b2dcc37e0b0ceb395b978e0439d1d5bb751c58de02d38a62c0760f06ab2bc1c6dd671e8fc9faec8fbb630d3c42e84e2ac736df5bb9fc5437ec4dcc085fcf3e7c'
}

set :deploy_to, '/home/deploy/web8/footballry'

