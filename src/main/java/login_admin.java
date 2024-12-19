

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class login_admin
 */
public class login_admin extends HttpServlet {
Connection cn = null;
Statement st = null;
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

HttpSession session = req.getSession();	
PrintWriter out = resp.getWriter();
Database db = new Database();
String result = db.Connectdb();
out.print(result);

String USERNAME = req.getParameter("username");
String PASSWORD = req.getParameter("password");
String event = req.getParameter("submit");

out.println(USERNAME);
out.println(PASSWORD);

if(event.equals("Login"))

{

if(USERNAME.equals("")||PASSWORD.equals(""))

{

resp.setContentType("text/html");

out.println("<script type=\"text/javascript\"> alert('Some Fields are Empty'); location='admin1.jsp';</script>");

}


else

{

if(USERNAME.equals("admin")&& PASSWORD.equals("1234"))

{

resp.setContentType("text/html");

out.println("<script type=\"text/javascript\"> location='admindash.jsp'; </script>");

}

else

{

resp.setContentType("text/html");

out.println("<script type=\"text/javascript\"> alert('please enter correct information'); location='admin1.jsp';</script>");

}

}

}}}
