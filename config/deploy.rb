# most important values
set :application, 'iskandar'
set :user, 'i'
set :server_name, 'scorpius'
set :repository, 'git@github.com:hagenburger/iskandarwidjaja.git'

# server
set :domain, "#{user}.#{server_name}.uberspace.de"
set :deploy_to, "/home/#{user}/#{application}/"
set :use_sudo, false
server "#{domain}", :app, :web, :db, :primary => true

# github
default_run_options[:pty] = true
set :scm, 'git'
set :branch, "rails"
set :deploy_via, :remote_cache

# options
# If you’re using your own private keys for git you might want to tell Capistrano to use agent forwarding with this command. Agent forwarding can make key management much simpler as it uses your local keys instead of keys installed on the server.
ssh_options[:forward_agent] = true

# tasks
namespace :deploy do
  desc 'dummy restart'
  task :restart do
    run "killall -9 ruby -u #{user}"
  end
end

# assets
load "deploy/assets"

# bundler
require 'bundler/capistrano'
set :bundle_cmd, "export HOME=/home/#{user} && . $HOME/.bash_profile && bundle"

after "deploy:update_code" do
  #run "rm -rf /home/#{user}/html/*"
  #run "cp -r #{current_release}/public/* /home/#{user}/html/"
end

# misc

namespace :log do
  task :production, :roles => :app do
    stream "tail -n 300 -f #{shared_path}/log/production.log"
  end
end
