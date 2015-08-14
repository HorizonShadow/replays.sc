require 'sinatra'
require 'sinatra/base'
require 'sinatra/static_assets'
require 'sinatra/cookies'
require 'data_mapper'
require 'haml'
require 'savon'
require 'tassadar'

module Site
	class App < Sinatra::Application
		DataMapper.setup(:default, "sqlite3://#{Dir.pwd}/db/data.db")
		#use Rack::SSL
		Dir['./app/models/*.rb'].each { |file| require file }
		Dir['./app/helpers/*.rb'].each { |file| require file }
		Dir['./app/controllers/*.rb'].each { |file| require file }

		use Routes::Index

		#DataMapper.auto_migrate! #Drops all tables and recreates them
		DataMapper.auto_upgrade! #Tries to create all tables, or update them. Does not modify existing data
		DataMapper.finalize

	end
end