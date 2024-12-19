

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.Statement;

/**
 * Servlet implementation class editprofile_student
 */
public class editprofile_student extends HttpServlet {
	 Connection cn = null;
	  Statement st = null;
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	 HttpSession session = req.getSession();
	    PrintWriter out = resp.getWriter();
	    Database db = new Database();
	    String result = db.Connectdb();
	    out.println(result);
	    
	    String id= req.getParameter("id");
	    String name = req.getParameter("name");
		String username = req.getParameter("username");
		String password = req.getParameter("password");
		String event = req.getParameter("submit");
		
		 out.println(id);
		  out.println(name);
          out.println(username);
          out.println(password);
        
          if(event.equals("Update")) {
       	   
       	   if(id.equals("") || name.equals("") || username.equals("") || password.equals("") ) {
       		   resp.setContentType("text/html");
       		   out.println("<script type=\"text/javascript\">");
       		   out.println("alert('fill the required fields')");
       		   out.println("location='editprofile.jsp'");
       		   out.println("</script>");
       		
       		   
       	   }
       	   else 
       	   {
       		   try 
       		   {
       			   	String sql= "update student_register set STUDENT_ID='"+id+"',STUDENT_NAME='"+name+"',USERNAME='"+username+"',STUDENT_PASSWORD='"+password+"' where STUDENT_ID='"+id+"' ";
       			   	String update = db.update(sql);
       			   	out.println(update);
             
		  	             resp.setContentType("text/html");
  	  	                out.println("<script type=\"text/javascript\">");
		  	            out.println("alert('Updated Successfully!')");
		  	 	   	    out.println("location='editprofile.jsp'");  
       			   	out.println("</script>");
  		   
       		   }
       		   catch(Exception ex)
 	  		    {
 	  		    out.println(ex.toString());
 	  		    }
 }
          }
	
}
}
