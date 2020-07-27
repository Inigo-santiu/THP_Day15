# require 'bundler'
# Bundler.require

class ApplicationController < Sinatra::Base
  get '/' do
    erb :index # <html><body></body></html>
  end

  get '/gossips/new/' do
    erb :new_gossip
  end
  # run! if app_file == $0
end 