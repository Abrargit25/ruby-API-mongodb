# routes/routes.rb

module Routes
    def self.included(base)
      # Route to create a new request
      base.post '/create' do
        data = JSON.parse(request.body.read)  # Parse incoming JSON data
        Controllers::RequestsController.create(data)  # Pass data to controller
      end
  
      # Route to get all requests
      base.get '/requests' do
        Controllers::RequestsController.index
      end
  
      # Route to get a specific request by ID
      base.get '/requests/:id' do
        Controllers::RequestsController.show(params[:id])
      end
  
      # Route to update a request by ID
      base.put '/requests/:id' do
        data = JSON.parse(request.body.read)
        Controllers::RequestsController.update(params[:id], data)
      end
  
      # Route to delete a request by ID
      base.delete '/requests/:id' do
        Controllers::RequestsController.destroy(params[:id])
      end
    end
  end
  