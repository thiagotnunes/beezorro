require 'rubygems'
require 'sinatra'
require 'sinatra/base'
require 'sinatra/reloader'
require 'json'

set :root, File.dirname(__FILE__)


class Beezorro < Sinatra::Base
  configure do |config|
    register Sinatra::Reloader
    config.also_reload "lib/**/*.rb"
  end

  before do
    content_type :json
    @beeController = BeeController.new
    @combController = CombController.new
  end


  get '/' do
    content_type :html
    File.open(File.join('public', 'index.html'))
  end

  get '/bees' do
    @beeController.bees.to_json
  end

  get '/combs' do 
    @combController.combs.to_json
  end

end
