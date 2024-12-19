

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class faculty_signup
 */
public class faculty_signup extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		PrintWriter out = resp.getWriter();
		Database db = new Database();
	    String result = db.Connectdb();
	    out.println(result);

		String NAME = req.getParameter("Name");
		String USERNAME = req.getParameter("username");
		String PASSWORD = req.getParameter("password");
        String event = req.getParameter("submit");
        
		out.println(NAME);
		out.println(USERNAME);
		out.println(PASSWORD);
		
		if(event.equals("sign_up")) {
			if(NAME.equals("")|| USERNAME.equals("") || PASSWORD.equals("")) 
				resp.setContentType("text/html");
			    out.println("<script type=\"text/javascript\"> alert('Some Fields are Empty'); location='signup_user.jsp';  </script>");    
		    }
			else
			{
				try
				{
					 String sql ="insert into FACULTY_REGISTER (FACULTY_NAME, USERNAME, FACULTY_PASSWORD) values ('"+NAME+"', '"+USERNAME+"','"+PASSWORD+"')";
					    String insert = db.Insert(sql);
					    out.println(insert);
					   
					    resp.setContentType("text/html");
					    out.println("<script type=\"text/javascript\"> alert('Signup Successful'); location='login_user.jsp'; </script>");
					   
					    }
					    catch(Exception ex)
					    {
					    out.println(ex.toString());
				}
			}
		}
	}

	
	

