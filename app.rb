# app.rb
require 'sinatra'
require 'json'
require './config/database'  # Include the database configuration
require './controllers/requests_controller'  # Include the controller
require './routes/routes'  # Include routes file

class MyApp < Sinatra::Base
  include Routes  # Make sure this line includes the routes
  
  # Start the Sinatra application
  run! if app_file == $0
end
