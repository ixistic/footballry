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
    'HTTPS_PROXY_REQUEST_FULLURI' => 'false'
}

set :deploy_to, '/home/deploy/web8/footballry'

