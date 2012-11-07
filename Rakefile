require 'bundler'

namespace :start do
  [:production, :test, :development].each do |env|
    task env do
      system("thin -R config.ru -e #{env} start")
    end
  end
end

desc "Run the server"
task :start => ["start:production"]

