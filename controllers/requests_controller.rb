# controllers/requests_controller.rb

module Controllers
    class RequestsController
      # Create a new request 
      def self.create(data)
        begin
          result = DB.insert_one(data)  # Insert the document
          { message: 'Document created successfully', id: result.inserted_id.to_s }.to_json
        rescue Mongo::Error => e
          { message: "Error creating document: #{e.message}" }.to_json
        end
      end
    
      # List all requests
      def self.index
        begin
          requests = DB.find.to_a  # Get all documents from the collection
          requests.to_json
        rescue Mongo::Error => e
          { message: "Error fetching documents: #{e.message}" }.to_json
        end
      end
    
      # Show a specific request by ID
      def self.show(id)
        begin
          request = DB.find(_id: BSON::ObjectId(id)).first  # Find a document by ID
          if request
            request.to_json
          else
            { message: 'Document not found' }.to_json
          end
        rescue Mongo::Error => e
          { message: "Error fetching document: #{e.message}" }.to_json
        end
      end
    
      # Update a request by ID
      def self.update(id, data)
        begin
          result = DB.find(_id: BSON::ObjectId(id)).update_one('$set' => data)  # Update the document
          if result.modified_count > 0
            { message: 'Document updated successfully' }.to_json
          else
            { message: 'No changes made to the document' }.to_json
          end
        rescue Mongo::Error => e
          { message: "Error updating document: #{e.message}" }.to_json
        end
      end
    
      # Delete a request by ID
      def self.destroy(id)
        begin
          result = DB.find(_id: BSON::ObjectId(id)).delete_one  # Delete the document
          if result.deleted_count > 0
            { message: 'Document deleted successfully' }.to_json
          else
            { message: 'Document not found' }.to_json
          end
        rescue Mongo::Error => e
          { message: "Error deleting document: #{e.message}" }.to_json
        end
      end
    end
  end
  