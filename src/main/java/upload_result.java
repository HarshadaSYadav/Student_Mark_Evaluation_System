

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class upload_result
 */
public class upload_result extends HttpServlet {
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		PrintWriter out = resp.getWriter();
	    Database db = new Database();
	    String result = db.Connectdb();
	    out.println(result);
 
	    String result_file =req.getParameter("filename");
	    String event  = req.getParameter("submit");
	    
	    out.println(result_file);
	    out.println(event);

	    
	    if(event.equals("upload")) 
	    {
	         
	          if(event.equals("")) 
	          {
	        	  resp.setContentType("text/html");
	        	  out.println("<script type=\"text/javascript\">");
	        	  out.println("alert('fill the required fields')");
	        	  out.println("location='studdash.jsp'");
	        	  out.println("</script>");         
	          }
	          else
	          {
	        	  try
	        	  {
	        	  		String sql= "insert into result(prn_no, result_file) values ('"+session.getAttribute("PRN")+"','"+result_file+"')";
	        	  		String insert = db.Insert(sql);
	        	  		out.println(insert);
	             
	        	  		resp.setContentType("text/html");
	        	  		out.println("<script type=\"text/javascript\">");
	        	  		out.println("alert('save');");
	        	  		out.println("location='studdash.jsp'");
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


