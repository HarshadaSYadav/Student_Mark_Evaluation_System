

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class signup_user
 */
public class signup_user extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
		PrintWriter out = resp.getWriter();
		    Database db = new Database();
		    String result = db.Connectdb();
		    out.println(result);
		    
		String PRN = req.getParameter("PRN");
		String NAME = req.getParameter("name");
		String USERNAME = req.getParameter("username");
		String PASSWORD = req.getParameter("password");
		String event = req.getParameter("submit");

		out.println(PRN);
		out.println(NAME);
		out.println(USERNAME);
		out.println(PASSWORD);
		
		if(event.equals("Sign up")) {
		if(PRN.equals("")|| NAME.equals("")||USERNAME.equals("")||PASSWORD.equals("")) {
			resp.setContentType("text/html");
			out.println("<script type=\"text/javascript\">");

			out.println("alert('fill the required fields')");

			out.println("location='signup_user.jsp'");

			out.println("</script>");   
	    }
		else
		{
			try
			{
				 String sql ="insert into student_register(PRN, STUDENT_NAME, USERNAME, STUDENT_PASSWORD) values ('"+PRN+"', '"+NAME+"', '"+USERNAME+"','"+PASSWORD+"')";
				    String insert = db.Insert(sql);
				    out.println(insert);
				   
				    resp.setContentType("text/html");
   			    out.println("<script type=\"text/javascript\">");

					out.println("alert('SignUp Successful')");

					out.println("location='login_user.jsp'");

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
