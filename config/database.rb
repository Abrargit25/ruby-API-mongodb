# config/database.rb

require 'mongo'

# MongoDB URI and connection setup
uri = "mongodb+srv://<db-name>:<Enter-password>@cluster0.lxesh.mongodb.net/customer?retryWrites=true&w=majority"

# Create the client and connect to MongoDB
client = Mongo::Client.new(uri)

# Access the collection (e.g., 'customer-details')
DB = client[:'customer-details']
