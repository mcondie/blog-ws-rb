require 'sinatra'
require 'sinatra/activerecord'
require './config/environments'
require 'sinatra/json'
require 'json'
require './models/block'

before do
   content_type :json    
   headers 'Access-Control-Allow-Origin' => '*', 
           'Access-Control-Allow-Methods' => ['OPTIONS', 'GET', 'POST'],
           'Access-Control-Allow-Headers' => 'Content-Type'  
end

get '/' do
	'Hello world!'
end

get '/blocks' do
	content_type :json

	json Block.all
end

post '/blocks' do
	block = Block.new
	block.key = params[:key]
	block.content = params[:content]
	block.save

	json block
end