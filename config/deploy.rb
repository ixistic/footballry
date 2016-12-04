# config valid only for current version of Capistrano
lock '3.6.1'

set :application, 'footballry'
set :repo_url, 'https://github.com/ixistic/footballry.git'
set :passenger_restart_with_touch, true
set :rbenv_ruby, '2.3.1'

set :default_env, {
    'http_proxy' => '192.41.170.23:3128',
    'https_proxy' => '192.41.170.23:3128',
    'ftp_proxy' => '192.41.170.23:3128',
    'HTTPS_PROXY_REQUEST_FULLURI' => 'false',
    'RAILS_RELATIVE_URL_ROOT' => '/'
}

set :deploy_to, '/home/deploy/web8/footballry'

# Add this in config/deploy.rb
# and run 'cap production deploy:seed' to seed your database
namespace :deploy do
  desc 'Runs rake db:seed'
  task :seed => [:set_rails_env] do
    on primary fetch(:migration_role) do
      within release_path do
        with rails_env: fetch(:rails_env) do
          execute :rake, "db:seed"
        end
      end
    end
  end
end

# cap production sake:invoke task="db:migrate"
namespace :sake do
  desc "Run a task on a remote server."
  # run like: cap staging sake:invoke task="a_certain_task"
  task :invoke do
    on roles(:all) do |h|
      execute "cd #{fetch(:deploy_to)}/current && bundle exec rake #{ENV['task']} RAILS_ENV=#{fetch(:rails_env)}"
    end
  end
end

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, '/var/www/my_app_name'

# Default value for :scm is :git
# set :scm, :git

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: 'log/capistrano.log', color: :auto, truncate: :auto

# Default value for :pty is false
# set :pty, true

# Default value for :linked_files is []
# append :linked_files, 'config/database.yml', 'config/secrets.yml'

# Default value for linked_dirs is []
# append :linked_dirs, 'log', 'tmp/pids', 'tmp/cache', 'tmp/sockets', 'public/system'

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
