require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'json'

set :root, File.dirname(__FILE__)

class Beezorro < Sinatra::Base
  configure do
    register Sinatra::Reloader
  end


  get '/' do
    File.read(File.join('public', 'index.html'))
  end

  get '/bees' do
    content_type :json
    controller = BeeController.new
    controller.bees.to_json
  end

end
