require 'sinatra'
require 'bundler'
Bundler.require

$:.unshift File.expand_path("./../lib", __FILE__)  # Added to remove the need to .lib
require 'controller'            # require the file "controller"
run ApplicationController