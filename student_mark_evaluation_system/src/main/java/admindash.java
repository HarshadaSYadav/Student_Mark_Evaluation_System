

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class admindash
 */
public class admindash extends HttpServlet {


	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		PrintWriter out = resp.getWriter();
	    Database db = new Database();
	    String result = db.Connectdb();
	    out.println(result);
		    
		String year = req.getParameter("year");
		 
		String event = req.getParameter("submit");

 
		 
		
		if(event.equals("Submit")) 
		{
			if(year.equals("") ) 
			{
				resp.setContentType("text/html");
				out.println("<script type=\"text/javascript\">"); 
				out.println("alert('Something went wrong...!')"); 
				out.println("location='admindash.jsp'"); 
				out.println("</script>");   
		    }
			else
			{
				session.setAttribute("year", year);
				resp.sendRedirect("student_list.jsp");
			}
		}

	}
}