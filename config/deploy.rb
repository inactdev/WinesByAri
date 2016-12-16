# config valid only for current version of Capistrano
lock "3.7.0"

set :application, "WinesByAri"
set :repo_url, "git@github.com:aperezmontan/WinesByAri.git"

set :user, "ec2-user"
set :stage, :production

# Default branch is :master
# ask :branch, `git rev-parse --abbrev-ref HEAD`.chomp

# Default deploy_to directory is /var/www/my_app_name
# set :deploy_to, "/var/www/my_app_name"

# Default value for :format is :airbrussh.
# set :format, :airbrussh

# You can configure the Airbrussh format using :format_options.
# These are the defaults.
# set :format_options, command_output: true, log_file: "log/capistrano.log", color: :auto, truncate: :auto

# Default value for :linked_files is []
append :linked_files, "config/secrets.yml"

# Default value for linked_dirs is []
append :linked_dirs, "log", "tmp/pids", "tmp/cache", "tmp/sockets", "public/system"

# Default value for default_env is {}
# set :default_env, { path: "/opt/ruby/bin:$PATH" }

# Default value for keep_releases is 5
# set :keep_releases, 5
set :pty, true

set :ssh_options, {
  forward_agent: true,
  auth_methods: ["publickey"],
  keys: ["/Users/DJAris/Downloads/wines-by-ari-keypair.pem"]
}
