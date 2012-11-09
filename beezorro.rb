require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'sinatra-initializers'
require 'json'
require 'neography'
require 'neoid'

set :root, File.dirname(__FILE__)

class Beezorro < Sinatra::Base

  register Sinatra::Initializers

  configure do |c|
    register Sinatra::Reloader
    c.also_reload "lib/**/*.rb"
  end

  before do
    content_type :json
    @beeController = BeeController.new
  end


  get '/' do
    content_type :html
    File.open(File.join('public', 'index.html'))
  end

  get '/bees' do
    content_type :json
    @beeController.bees.to_json
  end

end
