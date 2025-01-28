# models/request.rb

class Request
    include Mongoid::Document
    field :name, type: String
    field :contact, type: Hash
    field :query, type: String
    field :status, type: String
  end
  