require 'sqlite3'
require 'active_record'
require 'sinatra'

require_relative './student'
require_relative './server'

ActiveRecord::Base.establish_connection(
  :adapter  => 'sqlite3',
  :database => 'test.db'
)

run App::Server
