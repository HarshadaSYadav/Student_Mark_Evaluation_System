

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class studdash
 */
public class studdash extends HttpServlet {
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		PrintWriter out = resp.getWriter();
	    Database db = new Database();
	    String result = db.Connectdb();
	    out.println(result);
	    
	    String year = req.getParameter("year");
	    String exam = req.getParameter("exam");
		String event = req.getParameter("submit");
		
		
		 out.println(year);
		 out.println(exam);
 		
		
		if(event.equals("Continuous Assessment"))
		{
			try
			{
				session.setAttribute("year", year);
				session.setAttribute("exam", exam);
				

				resp.sendRedirect("CAStud.jsp");
		    }
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
			
		}
		else if(event.equals("Mid Term"))
		{
			try
			{
				session.setAttribute("year", year);
				session.setAttribute("exam", exam);
				

				resp.sendRedirect("midsemstud.jsp");

		    }
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
			
		}
		else if(event.equals("End Semester"))
		{
			try
			{
				session.setAttribute("year", year);
				session.setAttribute("exam", exam);
				

				resp.sendRedirect("endsem.jsp");

		    }
			catch(Exception ex)
			{
				out.println(ex.toString());
			}
		}
		
		 
	    
 }
}