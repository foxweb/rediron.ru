require 'mina/git'

set :domain, '37.139.12.234'
set :user, 'foxweb'
set :deploy_to, '/home/foxweb/www/rediron.ru'
set :repository, 'git@github.com:foxweb/rediron.ru.git'
set :branch, 'master'
set :keep_releases, 5

desc "Deploys the current version to the server."
task :deploy => :environment do
  deploy do
    invoke :'git:clone'
    invoke :'deploy:cleanup'
  end
end
