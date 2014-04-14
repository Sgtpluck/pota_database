# Simple Role Syntax
# ==================
# Supports bulk-adding hosts to roles, the primary
# server in each group is considered to be the first
# unless any hosts have the primary property set.
# Don't declare `role :all`, it's a meta role
role :app, %w{ubuntu@ec2-54-187-74-129.us-west-2.compute.amazonaws.com}
role :web, %w{ubuntu@ec2-54-187-74-129.us-west-2.compute.amazonaws.com}
role :db,  %w{ubuntu@ec2-54-187-74-129.us-west-2.compute.amazonaws.com}

# Extended Server Syntax
# ======================
# This can be used to drop a more detailed server
# definition into the server list. The second argument
# something that quacks like a hash can be used to set
# extended properties on the server.
server 'ec2-54-187-74-129.us-west-2.compute.amazonaws.com', user: 'ubuntu', roles: %w{web app}, my_property: :my_value

server 'ec2-54-187-74-129.us-west-2.compute.amazonaws.com',
  user: 'ubuntu',
  roles: %w{web app},
  ssh_options: {
    keys: %w(/Users/Scwshoes/.ssh/potadb.pem),
    forward_agent: false,
    auth_methods: %w(publickey)
  }

namespace :figaro do
  desc "SCP transfer figaro configuration to the shared folder"
  task :setup do
    on roles(:app) do
      upload! "config/application.yml", "#{shared_path}/application.yml", via: :scp
    end
  end
 
  desc "Symlink application.yml to the release path"
  task :symlink do
    on roles(:app) do
      execute "ln -sf #{shared_path}/application.yml #{current_path}/config/application.yml"
    end
  end
end

after "deploy:started", "figaro:setup"
after "deploy:symlink:release", "figaro:symlink"