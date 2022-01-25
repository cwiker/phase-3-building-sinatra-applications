class User < ActiveRecord::Base
  has_many :reviews
  has_many :games, through: :reviews
end

desc "Start the server"
task :server do
  exec "rerun -b 'rackup config.ru'"
end