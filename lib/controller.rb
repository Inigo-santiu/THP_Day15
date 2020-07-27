# require 'bundler'
# Bundler.require

require 'gossip'

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index # <html><body></body></html>
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  post '/gossips/new/' do
    Gossip.new("super_auteur", "super gossip").save
  end
  # run! if app_file == $0
end 