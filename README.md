# Student Mark Evaluation System  

The Student Mark Evaluation System is a web-based application built with Java, JSP, CSS, MySQL, and JDBC. It enables efficient management of student records, mark entry, and automated grade calculation. The system also generates performance reports, offering insights into student progress. With secure MySQL data storage and a user-friendly interface, it simplifies academic record management for institutions.

## Features  
- Add, update, and delete student records.  
- Enter marks and calculate total, percentage, and grades.  
- Generate performance reports for analysis.  
- Secure data storage with MySQL.  
- User-friendly and responsive interface using JSP and CSS.  

## Technologies Used  
- **Backend**: Java  
- **Frontend**: JSP, CSS  
- **Database**: MySQL  
- **Connectivity**: JDBC Driver  

## Prerequisites  
- JDK installed (version 8 or higher)  
- Apache Tomcat server  
- MySQL database setup  

## Installation  
1. Clone the repository:  
   ```bash
   git clone https://github.com/your-username/student-mark-evaluation-system.git
   ```
2. **Import the project into your IDE**  
   - Open your preferred IDE (e.g., IntelliJ, Eclipse).  
   - Import the project as a Maven/Gradle project or a regular Java project based on its structure.  

3. **Configure the MySQL database**  
   - Create a database named `student_management` in your MySQL server:  
     ```sql
     CREATE DATABASE student_management;
     ```  
   - Import the provided `schema.sql` file into the database:  
     ```bash
     mysql -u [username] -p student_management < path/to/schema.sql
     ```  

4. **Update database credentials**  
   - Open the project configuration file (e.g., `dbConfig.java` or equivalent).  
   - Update the database connection details:  
     ```java
     String url = "jdbc:mysql://localhost:3306/student_management";
     String username = "your-username";
     String password = "your-password";
     ```  

5. **Deploy the project on Apache Tomcat server**  
   - Configure the Apache Tomcat server in your IDE.  
   - Deploy the project by adding it to the Tomcat server.  
   - Start the server.  

## Usage  

1. Open your browser and navigate to the application:
2. Use the interface to:  
- Manage student records (add, update, delete).  
- Enter marks and calculate totals, percentages, and grades.  

3. View performance reports for insights and analysis.  


