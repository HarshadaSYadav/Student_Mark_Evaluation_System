

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
 * Servlet implementation class faculty_login
 */
public class faculty_login extends HttpServlet {
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
	try
	{
	 Class.forName("com.mysql.jdbc.Driver");
	             cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system","root","root");
	             String sql = "select * from FACULTY_REGISTER where USERNAME= '"+USERNAME+"' && FACULTY_PASSWORD ='"+PASSWORD+"' ";
	             st=cn.createStatement();
	             ResultSet rs=st.executeQuery(sql);
	             
	             if(rs.next())
	             {
	             resp.setContentType("text/html");
	             out.println("<script type=\"text/javascript\"> alert('Login Successful'); location='admindash.jsp'; </script>");
	             }
	             else
	             {
	             resp.setContentType("text/html");
	             out.println("<script type=\"text/javascript\"> alert('Login Failed'); location='login_user.jsp'; </script>");
	             }

	}
	catch (Exception ex)
	{
	out.println(ex.toString());
	}
	}

	}
}
