require 'sqlite3'
require 'sinatra'

require_relative './server'

DB = SQLite3::Database.new "test.db"

run App::Server
