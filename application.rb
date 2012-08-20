require 'rubygems'
require 'sinatra'
require 'sinatra/reloader'
Dir[File.join(File.dirname(__FILE__), 'lib', '**', '*.rb')].each do |f|
  require f
end

get '/' do
  File.read(File.join('public', 'index.html'))
end
