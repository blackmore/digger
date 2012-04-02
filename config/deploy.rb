# Add RVM's lib directory to the load path.
$:.unshift(File.expand_path('./lib', ENV['rvm_path']))

# Load RVM's capistrano plugin.    
require "rvm/capistrano"

set :rvm_ruby_string, '1.9.2'
set :rvm_type, :user  # Don't use system-wide RVM
default_run_options[:pty] = true

set :user, 'administrator'
set :domain, '10.1.1.201'
set :applicationdir, "digger"
 
set :scm, 'git'
set :repository,  "git@github.com:blackmore/digger.git"
#set :git_enable_submodules, 1 # if you have vendored rails
set :branch, 'master'
set :git_shallow_clone, 1
#set :scm_verbose, true
set :normalize_asset_timestamps, false
 
# roles (servers)
role :web, domain
role :app, domain
role :db,  domain, :primary => true
 
# deploy config
set :deploy_to, "/home/administrator/webapps/#{applicationdir}"
set :deploy_via, :export
 
# additional settings
#ssh_options[:keys] = %w(/home/user/.ssh/id_rsa)            # If you are using ssh_keysset :chmod755, "app config db lib public vendor script script/* public/disp*"set :use_sudo, false
 
# Passenger
namespace :deploy do
  task :start, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end

  task :stop, :roles => :app do
    # nothing set
  end

  desc "Restart Application"
  task :restart, :roles => :app do
    run "touch #{current_release}/tmp/restart.txt"
  end
  
  task :compile_assets do
    run "cd #{release_path}; RAILS_ENV=production rake assets:precompile"
  end
end

#after 'deploy:update_code', 'deploy:compile_assets'

# why does this not work!!!
# after 'deploy:update_code' do
#   run "cd #{release_path} bundle exec rake RAILS_ENV=production assets:precompile"
# end