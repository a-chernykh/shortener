require 'rubygems'
require 'sinatra'
 
set :env, :production
disable :run

require 'shortener'
run Sinatra::Application