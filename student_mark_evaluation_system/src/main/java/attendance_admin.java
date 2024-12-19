
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
 * Servlet implementation class attendance
 */
public class attendance_admin extends HttpServlet {
Connection cn = null;
 Statement st = null;
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
HttpSession session = req.getSession();
   PrintWriter out = resp.getWriter();
   Database db = new Database();
   String result = db.Connectdb();
   out.println(result);
   
String student_name = req.getParameter("student_name");
String PRN = req.getParameter("PRN");
String year = req.getParameter("year");
String month = req.getParameter("month");
String attendance = req.getParameter("attendance");
String event = req.getParameter("submit");

out.println(student_name);
out.println(PRN);
         out.println(year);
         out.println(month);
         out.println(attendance);
         
         
         if(event.equals("Submit")) {
         
          if(student_name.equals("") || PRN.equals("") || year.equals("") || month.equals("") ||attendance.equals("")  ) {
         resp.setContentType("text/html");
         out.println("<script type=\"text/javascript\">");
        	  out.println("alert('fill the required fields')");
          out.println("location='attendance.jsp'");
       out.println("</script>");
       
         
          }
          else
          {
          try
          {
          String sql= "insert into attendance(STUDENT_NAME, PRN_NO, CLASS, MONTH, ATTENDANCE) values ('"+student_name+"','"+PRN+"','"+year+"','"+month+"','"+attendance+"')";
          String insert = db.Insert(sql);
          out.println(insert);
             
             resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
             out.println("alert('save');");
          out.println("location='attendance.jsp'");
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