

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
 * Servlet implementation class displaymarksstud
 */
public class displaymarksstud extends HttpServlet {
	Connection cn = null;
	Statement st = null;
		protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	
	HttpSession session = req.getSession();	
	PrintWriter out = resp.getWriter();
	Database db = new Database();
	String result = db.Connectdb();
	out.print(result);
	
	
	String no = req.getParameter("total");
	
	int no1 = Integer.parseInt(no);
	
	out.println(no1); 
	
	String subject[] = new String[no1+1];
	String marks[] = new String[no1+1];
	
	for(int i=0; i<=no1; i++)
	{  
		subject[i] = req.getParameter("subject"+i);
		marks[i] = req.getParameter("marks"+i);
		
		out.println(i); 
		out.println(subject[i]);
		out.println(marks[i]);
		
	}
	   
	String event = req.getParameter("submit"); 
	
	out.println(event); 
	
	
	
	if(event.equals("Submit"))
	{ 
		
				try 
				{
	
					String sql= "insert into ca( PRN_NO, STUDENT_NAME, EXAM_TYPE, SEMESTER, SUB1,SUB2,SUB3,SUB4,SUB5,MARKS1,MARKS2,MARKS3,MARKS4,MARKS5) values ('"+session.getAttribute("PRN")+"','"+session.getAttribute("student_name")+"','"+session.getAttribute("exam")+"','"+session.getAttribute("sem")+"','"+subject[0].toString()+"','"+subject[1].toString()+"','"+subject[2].toString()+"','"+subject[3].toString()+"','"+subject[4].toString()+"','"+marks[0].toString()+"','"+marks[1].toString()+"','"+marks[2].toString()+"','"+marks[3].toString()+"','"+marks[4].toString()+"')";
					String insert = db.Insert(sql);
		
					out.println(insert); 
		
					resp.setContentType("text/html");  
					out.println("<script type=\"text/javascript\">"); 
					out.println("alert('save')"); 
					out.println("location='marks_adminfill.jsp'"); 
					out.println("</script>"); 
					
				} 
				catch(Exception ex) 
				{ 
					out.println(ex.toString()); 
				}

			}

	}

}
