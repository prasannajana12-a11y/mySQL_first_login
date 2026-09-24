# MySQL First Login

A simple Java web application that implements a **Login and Sign Up system using JSP, Java, and MySQL**.

## Features

* User registration / Sign Up
* User Login
* MySQL database connectivity
* JSP-based web pages
* User data validation
* Displaying stored user data
* MySQL Connector/J integration

## Technologies Used

* Java
* JSP (JavaServer Pages)
* HTML
* CSS
* MySQL
* Apache Tomcat
* Eclipse IDE
* MySQL Connector/J
* Git & GitHub

## Project Structure

```text
MySQL-first-login/
│
├── src/
│   └── main/
│       └── webapp/
│           ├── index.html
│           ├── login.jsp
│           ├── sign_up.jsp
│           ├── display.jsp
│           ├── WEB-INF/
│           │   ├── web.xml
│           │   └── lib/
│           │       └── mysql-connector-j.jar
│           └── META-INF/
│
├── .classpath
├── .project
└── README.md
```

## How It Works

1. The user opens the application.
2. The user can create an account using the Sign Up page.
3. User information is stored in a MySQL database.
4. The user can log in using their registered credentials.
5. JSP pages communicate with the MySQL database to verify and retrieve information.

## Requirements

Before running the project, install:

* Java JDK
* Eclipse IDE
* Apache Tomcat
* MySQL Server
* MySQL Connector/J

## Database

Create a MySQL database and configure the database connection details in the JSP files according to your local MySQL setup.

Example:

```text
Database: your_database_name
Username: your_mysql_username
Password: your_mysql_password
```

> Do not upload real database passwords or other sensitive credentials to GitHub.

## Running the Project

1. Clone this repository.
2. Import the project into Eclipse.
3. Configure Apache Tomcat.
4. Configure the MySQL database.
5. Add the required MySQL Connector/J library.
6. Start the application using Tomcat.
7. Open the application in your browser.

## Project Purpose

This project was created to practice **Java web development, JSP, database connectivity, user authentication, and CRUD-related concepts using MySQL**.

## Author

**Prasanna**

---

⭐ If you find this project useful, feel free to explore and modify it.
