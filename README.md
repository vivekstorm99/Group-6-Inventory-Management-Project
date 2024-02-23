Group 6: Inventory Management System
Employee & Customers
This project implements a backend connection for the Employee and Customer tables, as well 
as endpoints for the User resource. The endpoints are implemented using Spring Boot and 
provide CRUD operations for the User entity.
Endpoints
The following endpoints are available for the User resource:
1. Add User (POST):
2. Endpoint: /api/v1/users
3. Request body: JSON representation of a user
4. Example:
{‘Employee_id’ = “123”, ‘first_name’= “Arun”, ‘last_name’=”Kumar”, 
‘phone_number’=98xxxxxx, ‘adress’= “xxxx M2 Building, Banagalore”, contact_number’= 
98xxxxxxxx, ‘position’=”Manager”}
1. Get User Details (GET):
2. Endpoint: /api/v1/users/{id}
3. Example: /api/v1/users/1
4. Update User (PUT):
5. Endpoint: /api/v1/users/{id}
6. Example: /api/v1/users/1
7. Request body: Updated user details
8. Delete User (DELETE):
9. Endpoint: /api/v1/users/{id}
10. Example: /api/v1/users/1
Logging
Logging is done to keep track of all the events happening in the backend. The logs are 
implemented using SLF4J and Logback.
JwtFilter
JwtFilter provides authentication for the login system. It uses the jjwt library to create and 
verify JWT tokens.
Swagger/OpenAPI
Swagger/OpenAPI is used for documentation of the API. The endpoints are documented 
using annotations and the Swagger UI provides an interactive interface for testing the API.
Running the Application
To run the application, first clone the repository:
git clone https://github.com/username/project.git
Then, navigate to the project directory and run the following command:
mvn spring-boot:run
The application will start up and you can access the endpoints using a tool such as Postman. 
You can also access the Swagger UI by navigating to http://localhost:8080/swaggerui/index.html in your web browser.
Conclusion
This project provides a backend connection for the Employee and Customer tables, as well as 
endpoints for the User resource. It also provides logging, authentication using JWT, and 
documentation using Swagger/OpenAPI. Feel free to customize the endpoints and 
functionality based on your needs.
