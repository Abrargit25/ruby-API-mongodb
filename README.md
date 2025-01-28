# Ruby API with MongoDB

This project implements a Ruby-based API that interacts with a MongoDB Atlas cluster. It includes basic CRUD (Create, Read, Update, Delete) operations for managing documents in a MongoDB collection.

## Features

- **Create**: Add a new document to the MongoDB collection.
- **Read**: Retrieve all documents from the collection or a single document by its ID.
- **Update**: Modify an existing document by its ID.
- **Delete**: Delete a document by its ID.

## Requirements

To run this project, you need:

- Ruby (preferably version 3.0+)
- MongoDB Atlas account (for cloud-hosted database)
- Mongo gem (for interacting with MongoDB)

## Setup Instructions

Follow these steps to set up the project on your local machine:

1. **Install Ruby**: Ensure Ruby is installed. You can check this by running the following command in your terminal:

    ```
    ruby -v
    ```

    If Ruby is not installed, download and install it from the official [Ruby website](https://www.ruby-lang.org/). 

2. **Install MongoDB Client Gem**: To interact with MongoDB, you need to install the `mongo` gem. Run the following command in your terminal:

    ```
    gem install mongo
    ```

    Alternatively, if you are using Bundler, you can add it to your `Gemfile`:

    ```ruby
    gem 'mongo'
    ```

    Then run the following command to install the gem:

    ```
    bundle install
    ```

3. **Set up MongoDB Atlas**:
   - Sign up or log in to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas).
   - Create a new cluster (choose the free tier for testing).
   - Set up your database user (with username and password).
   - Whitelist your IP address so your local machine can access the MongoDB cluster.

4. **Configure the Database Connection**:
    - In your project, configure the database connection by updating the connection URI with your MongoDB Atlas credentials. Here is an example of how to configure it in your code:

    ```ruby
    uri = "mongodb+srv://<username>:<password>@<cluster-url>/<dbname>?retryWrites=true&w=majority"
    client = Mongo::Client.new(uri)
    ```

    Make sure to replace `<username>`, `<password>`, `<cluster-url>`, and `<dbname>` with your MongoDB Atlas details. These details will be available when you create your MongoDB cluster and set up your user.

5. **Running the Application**:
   - Once everything is set up, you can start the Sinatra server by running the following command in the project directory:

    ```
    ruby app.rb
    ```

    This will start the Sinatra application. You can now make requests to the API by sending HTTP requests to the appropriate endpoints.

6. **API Endpoints**:
   - The following are the available endpoints for interacting with the API:

      - **POST /create**: Adds a new document to the MongoDB collection. 
      - **GET /requests**: Retrieves all documents from the collection.
      - **GET /requests/:id**: Retrieves a specific document by its ID.
      - **PUT /requests/:id**: Updates a document by its ID.
      - **DELETE /requests/:id**: Deletes a document by its ID.

7. **Test Your API**:
    - To test your API, you can use any HTTP client, such as Postman or cURL. Here's how you can test each of the endpoints:

    - **POST /create**: Send a POST request to create a new document. Example payload:

    ```json
    {
        "name": "John Doe",
        "email": "johndoe@example.com",
        "phone": "123-456-7890"
    }
    ```

    - **GET /requests**: Send a GET request to retrieve all documents from the collection.

    - **GET /requests/:id**: Send a GET request to retrieve a specific document by its ID. Replace `:id` with the actual document ID.

    - **PUT /requests/:id**: Send a PUT request to update a document. Example payload:

    ```json
    {
        "name": "Jane Doe",
        "email": "janedoe@example.com"
    }
    ```

    - **DELETE /requests/:id**: Send a DELETE request to remove a document by its ID.

## Troubleshooting

If you encounter issues while setting up or running the project, here are a few things to check:

- **MongoDB Atlas Cluster Connectivity**: Make sure your IP address is whitelisted in your MongoDB Atlas dashboard.
- **Database URI**: Double-check the MongoDB URI for any typos or missing credentials.
- **Sinatra Server Issues**: Ensure that Sinatra is correctly installed and configured. If there are errors when running `ruby app.rb`, try reinstalling Sinatra using:# Ruby API with MongoDB

This project implements a Ruby-based API that interacts with a MongoDB Atlas cluster. It includes basic CRUD (Create, Read, Update, Delete) operations for managing documents in a MongoDB collection.

## Features

- **Create**: Add a new document to the MongoDB collection.
- **Read**: Retrieve all documents from the collection or a single document by its ID.
- **Update**: Modify an existing document by its ID.
- **Delete**: Delete a document by its ID.

## Requirements

To run this project, you need:

- Ruby (preferably version 3.0+)
- MongoDB Atlas account (for cloud-hosted database)
- Mongo gem (for interacting with MongoDB)

## Setup Instructions

Follow these steps to set up the project on your local machine:

1. **Install Ruby**: Ensure Ruby is installed. You can check this by running the following command in your terminal:

    ```
    ruby -v
    ```

    If Ruby is not installed, download and install it from the official [Ruby website](https://www.ruby-lang.org/). 

2. **Install MongoDB Client Gem**: To interact with MongoDB, you need to install the `mongo` gem. Run the following command in your terminal:

    ```
    gem install mongo
    ```

    Alternatively, if you are using Bundler, you can add it to your `Gemfile`:

    ```ruby
    gem 'mongo'
    ```

    Then run the following command to install the gem:

    ```
    bundle install
    ```

3. **Set up MongoDB Atlas**:
   - Sign up or log in to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas).
   - Create a new cluster (choose the free tier for testing).
   - Set up your database user (with username and password).
   - Whitelist your IP address so your local machine can access the MongoDB cluster.

4. **Configure the Database Connection**:
    - In your project, configure the database connection by updating the connection URI with your MongoDB Atlas credentials. Here is an example of how to configure it in your code:

    ```ruby
    uri = "mongodb+srv://<username>:<password>@<cluster-url>/<dbname>?retryWrites=true&w=majority"
    client = Mongo::Client.new(uri)
    ```

    Make sure to replace `<username>`, `<password>`, `<cluster-url>`, and `<dbname>` with your MongoDB Atlas details. These details will be available when you create your MongoDB cluster and set up your user.

5. **Running the Application**:
   - Once everything is set up, you can start the Sinatra server by running the following command in the project directory:

    ```
    ruby app.rb
    ```

    This will start the Sinatra application. You can now make requests to the API by sending HTTP requests to the appropriate endpoints.

6. **API Endpoints**:
   - The following are the available endpoints for interacting with the API:

      - **POST /create**: Adds a new document to the MongoDB collection. 
      - **GET /requests**: Retrieves all documents from the collection.
      - **GET /requests/:id**: Retrieves a specific document by its ID.
      - **PUT /requests/:id**: Updates a document by its ID.
      - **DELETE /requests/:id**: Deletes a document by its ID.

7. **Test Your API**:
    - To test your API, you can use any HTTP client, such as Postman or cURL. Here's how you can test each of the endpoints:

    - **POST /create**: Send a POST request to create a new document. Example payload:

    ```json
    {
        "name": "John Doe",
        "email": "johndoe@example.com",
        "phone": "123-456-7890"
    }
    ```

    - **GET /requests**: Send a GET request to retrieve all documents from the collection.

    - **GET /requests/:id**: Send a GET request to retrieve a specific document by its ID. Replace `:id` with the actual document ID.

    - **PUT /requests/:id**: Send a PUT request to update a document. Example payload:

    ```json
    {
        "name": "Jane Doe",
        "email": "janedoe@example.com"
    }
    ```

    - **DELETE /requests/:id**: Send a DELETE request to remove a document by its ID.

## Troubleshooting

If you encounter issues while setting up or running the project, here are a few things to check:

- **MongoDB Atlas Cluster Connectivity**: Make sure your IP address is whitelisted in your MongoDB Atlas dashboard.
- **Database URI**: Double-check the MongoDB URI for any typos or missing credentials.
- **Sinatra Server Issues**: Ensure that Sinatra is correctly installed and configured. If there are errors when running `ruby app.rb`, try reinstalling Sinatra using:# Ruby API with MongoDB

This project implements a Ruby-based API that interacts with a MongoDB Atlas cluster. It includes basic CRUD (Create, Read, Update, Delete) operations for managing documents in a MongoDB collection.

## Features

- **Create**: Add a new document to the MongoDB collection.
- **Read**: Retrieve all documents from the collection or a single document by its ID.
- **Update**: Modify an existing document by its ID.
- **Delete**: Delete a document by its ID.

## Requirements

To run this project, you need:

- Ruby (preferably version 3.0+)
- MongoDB Atlas account (for cloud-hosted database)
- Mongo gem (for interacting with MongoDB)

## Setup Instructions

Follow these steps to set up the project on your local machine:

1. **Install Ruby**: Ensure Ruby is installed. You can check this by running the following command in your terminal:

    ```
    ruby -v
    ```

    If Ruby is not installed, download and install it from the official [Ruby website](https://www.ruby-lang.org/). 

2. **Install MongoDB Client Gem**: To interact with MongoDB, you need to install the `mongo` gem. Run the following command in your terminal:

    ```
    gem install mongo
    ```

    Alternatively, if you are using Bundler, you can add it to your `Gemfile`:

    ```ruby
    gem 'mongo'
    ```

    Then run the following command to install the gem:

    ```
    bundle install
    ```

3. **Set up MongoDB Atlas**:
   - Sign up or log in to [MongoDB Atlas](https://www.mongodb.com/cloud/atlas).
   - Create a new cluster (choose the free tier for testing).
   - Set up your database user (with username and password).
   - Whitelist your IP address so your local machine can access the MongoDB cluster.

4. **Configure the Database Connection**:
    - In your project, configure the database connection by updating the connection URI with your MongoDB Atlas credentials. Here is an example of how to configure it in your code:

    ```ruby
    uri = "mongodb+srv://<username>:<password>@<cluster-url>/<dbname>?retryWrites=true&w=majority"
    client = Mongo::Client.new(uri)
    ```

    Make sure to replace `<username>`, `<password>`, `<cluster-url>`, and `<dbname>` with your MongoDB Atlas details. These details will be available when you create your MongoDB cluster and set up your user.

5. **Running the Application**:
   - Once everything is set up, you can start the Sinatra server by running the following command in the project directory:

    ```
    ruby app.rb
    ```

    This will start the Sinatra application. You can now make requests to the API by sending HTTP requests to the appropriate endpoints.

6. **API Endpoints**:
   - The following are the available endpoints for interacting with the API:

      - **POST /create**: Adds a new document to the MongoDB collection. 
      - **GET /requests**: Retrieves all documents from the collection.
      - **GET /requests/:id**: Retrieves a specific document by its ID.
      - **PUT /requests/:id**: Updates a document by its ID.
      - **DELETE /requests/:id**: Deletes a document by its ID.

7. **Test Your API**:
    - To test your API, you can use any HTTP client, such as Postman or cURL. Here's how you can test each of the endpoints:

    - **POST /create**: Send a POST request to create a new document. Example payload:

    ```json
    {
        "name": "John Doe",
        "email": "johndoe@example.com",
        "phone": "123-456-7890"
    }
    ```

    - **GET /requests**: Send a GET request to retrieve all documents from the collection.

    - **GET /requests/:id**: Send a GET request to retrieve a specific document by its ID. Replace `:id` with the actual document ID.

    - **PUT /requests/:id**: Send a PUT request to update a document. Example payload:

    ```json
    {
        "name": "Jane Doe",
        "email": "janedoe@example.com"
    }
    ```

    - **DELETE /requests/:id**: Send a DELETE request to remove a document by its ID.

## Troubleshooting

If you encounter issues while setting up or running the project, here are a few things to check:

- **MongoDB Atlas Cluster Connectivity**: Make sure your IP address is whitelisted in your MongoDB Atlas dashboard.
- **Database URI**: Double-check the MongoDB URI for any typos or missing credentials.
- **Sinatra Server Issues**: Ensure that Sinatra is correctly installed and configured. If there are errors when running `ruby app.rb`, try reinstalling Sinatra using: gem install sinatra




## Conclusion

This Ruby API with MongoDB provides a basic structure for interacting with a MongoDB Atlas cluster. It covers essential CRUD operations and can be expanded upon for more complex applications.


