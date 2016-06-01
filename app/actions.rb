require "json"
require 'rubygems'
require 'sinatra'
require "sinatra/activerecord"

get '/' do
	erb :index
end

get '/contacts' do
	content_type :json
	@contacts = Contact.all
	return @contacts.to_json
end

post '/contacts' do
	content_type :json
	@contact = Contact.new
	@contact.firstname = params[:firstname]
	@contact.lastname = params[:lastname]
	@contact.number = params[:number]
	@contact.save
end

get '/contacts/delete/:id' do
	content_type :json
	@contact = Contact.find_by(params[:id])
	return @contact.to_json
	
end