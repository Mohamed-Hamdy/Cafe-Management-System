<h1 align="center">Cafe Management System</h1>


<!-- ABOUT THE PROJECT -->
## About The Project
<h3>Purpose of project</h3> 

The purpose of this project is to facilitate the management of the cafeteria and the cafeteria through a system that allows the owner of the place to easily create invoices, modify and print them, and easily add items and products to the system, as well as the ability to control users.

<h4>Project Vedio</h4>
<p align="center"><a href="https://github.com/Mohamed-Hamdy/Cafe-Management-System/blob/master/images/project%20vedio.mp4">See Project Vedio</a></p>


## Key features
### Admin Features
* Admin Dashboard
* Manage Category [Add Category - Edit Category - Filter Products]
* Manage Product [Add Product - Edit Product - Delete Product - Filter Products]
* Manage Order [Add Order]
* Manage Bills [View Bill Details - Download Bill - Cancel Bill - Filter Products]
* Manage Users [Ping User - Filter User]  
* Change Password

### User Features
* Login & SignUp
* User Dashboard
* Manage Order [Add Order]
* Manage Bills [View Bill Details - Download Bill - Cancel Bill - Filter Products]
* Update profile
* Change Password


### Built With

* Java [Spring Boot - Rest Api] , Angular , MYSQL Database


<!-- GETTING STARTED -->
## How To Run 

<h4>Angular Part</h4>
in terminal using vs code you will need this commands<br>
- $env:NODE_OPTIONS = "--openssl-legacy-provider"
<br>- ng s
<br>- Then use this url in your broswer -> localhost:4200

<h4>spring boot Part</h4>
with url localhost:8081 and  
<a href="https://www.apidog.com/utm_source=google_search&utm_medium=ads_sa&utm_campaign=18544428894&utm_content=141031187734&utm_term=postman&gclid=CjwKCAiAxP2eBhBiEiwA5puhNTsU_tGODxYHjQKxChzH-PERviJ2AKbDvDT9I0KBzHALZ9RM16JOFBoCv3sQAvD_BwE">Postman API Platform</a> to run the backend urls but first run the signup then login to take the token of user that will help you in some features and be careful there is some features work with admin role only and you can check this features in <a href="https://github.com/Mohamed-Hamdy/Cafe-Management-System/tree/master/com.inn.cafe/src/main/java/com/inn/cafe/serviceImpl">Serviceimpl folder</a> check the service that you need to check then check function implementation.

## Note
<p>This project is an educational project for me, and I programmed this project according to an educational course on YouTube</p>
