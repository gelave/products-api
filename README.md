# README

Products API
This is a Ruby on Rails API application that manages products and users to get access to. It allows to create users and to create, read, update, and delete (CRUD) products. The API is designed to be RESTful and is built with security in mind, including authentication using JWT tokens.

Features
* JWT Authentication: Secure user authentication using JSON Web Tokens.
* Product Management: Full CRUD operations on products.
* Validation: Ensure data integrity with model validations.
* RESTful Design: Follow REST principles for API design.
* Error Handling: Consistent error responses for API clients.

Installation
1. Clone the repository:
bash
git clone https://github.com/your-username/ruby104.git

2. Install dependencies:
bash
bundle install

3. Set up the local database:
bash
rails db:migrate

4. Run the Rails server:
bash
rails server

The API will be available at http://localhost:3000.