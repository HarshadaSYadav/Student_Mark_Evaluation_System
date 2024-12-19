

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
 * Servlet implementation class marks_admindash
 */
public class marks_admindash extends HttpServlet {
	
	Connection cn = null;
	Statement st = null;
		
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException 
	{
	
		HttpSession session = req.getSession();	
		PrintWriter out = resp.getWriter();
		Database db = new Database();
		String result = db.Connectdb();
		out.println(result);
	
		String PRN = req.getParameter("PRN");
		String student_name = req.getParameter("student_name");
		String exam= req.getParameter("exam");
		String  sem= req.getParameter("sem");
		String event = req.getParameter("submit");
		
		
         out.println(PRN);
         out.println(student_name);
         out.println(exam);
		 out.println(sem);
 		 out.println(event);
		
		 if(event.equals("submit")) 
		 {
		       
		        if(sem.equals("") ) 
		        {
			        resp.setContentType("text/html");
			        out.println("<script type=\"text/javascript\">");
			        out.println("alert('fill the required fields')");
			        out.println("location='marks_admindash.jsp'");
			        out.println("</script>");	 
		        }
		        else
		        {
				        try
				        {  
				        	
				        	session.setAttribute("PRN", PRN);
				        	session.setAttribute("student_name", student_name);
				        	session.setAttribute("exam", exam);
				        	session.setAttribute("sem", sem);
				        	
				        	if(exam.equals("CA"))
				        	{
				        		resp.sendRedirect("displaymarksstud.jsp");
				        	}
				        	else if(exam.equals("MIDSEM"))
				        	{ 
				        		resp.sendRedirect("marks_adminfill.jsp");
				        	}
				        	else if(exam.equals("ENDSEMESTER")) 
				        	{
				        		resp.sendRedirect("endsemarks.jsp");
				        	}
				   
				        }
			        	 catch(Exception ex)
					     {
					     out.println(ex.toString());
					     }
		        }
	
		
	}

}
}