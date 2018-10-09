ENV['SINATRA_ENV'] ||= "development"

require 'sinatra/activerecord/rake'

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

configure :development do
  set :database, 'sqlite3:db/database.db'
end

require './app'
