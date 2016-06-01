require "json"
require 'rubygems'
require 'sinatra'
require "sinatra/activerecord"

get '/contacts' do
	content_type :json
	@contacts = Contact.all
	return @contacts.to_json
	erb :index
end

post '/contacts' do
	
end