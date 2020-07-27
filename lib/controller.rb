# require 'bundler'
# Bundler.require

require 'gossip'

class ApplicationController < Sinatra::Base
  # get '/' do
  #   erb :index # index is the file that replaces the HTML content here, this line for example: <html><body></body></html>
  # end

  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do
    erb :new_gossip
  end
  
  # get '/gossips/:id' do
  #   # matches "GET /hello/foo" and "GET /hello/bar"
  #   # params['name'] is 'foo' or 'bar'
  #   "This is gossip # #{params['id']}!"
  # end

  get '/gossips/:id' do
    erb :show, locals: {gossips: Gossip.find(params["id"])}
  end

  post '/gossips/new/' do
    Gossip.new(params["gossip_author"],params["gossip_description"]).save
    redirect '/'
  end

  # post '/gossips/new/' do
  #   puts "Salut, je suis dans le serveur"
  #   puts "This the content of the PARAMS hash : #{params}"
  #   puts "This comes was added by user in gossip_author : #{params["gossip_author"]}"
  #   puts "User added to gossip_content : #{params["gossip_content"]}"
  #   puts "That's it.  All done!"
  # end


  # run! if app_file == $0
end