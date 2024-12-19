import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;

/**
 * Servlet implementation class student_info
 */
public class parents_msg extends HttpServlet {
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
   String  roll= req.getParameter("roll");
	String PRN = req.getParameter("PRN");
	String student_name = req.getParameter("student_name");
	String dept = req.getParameter("dept");
	String parent_email = req.getParameter("parent_email");
	String year = req.getParameter("year");
	String sem = req.getParameter("sem");
	String cgpa = req.getParameter("cgpa");
	String attendance = req.getParameter("attendance");
	String event = req.getParameter("submit");

         out.println(id);
         out.println(roll);
         out.println(PRN);
         out.println(student_name);
         out.println(dept);
         out.println(parent_email);
         out.println(year);
         out.println(sem);
         out.println(cgpa);
         out.println(attendance);
         
         if(event.equals("Add")) {
       
        if(roll.equals("") || PRN.equals("") || student_name.equals("") || dept.equals("") || parent_email.equals("") || year.equals("") || sem.equals("") || cgpa.equals("") || attendance.equals("") ) {
      resp.setContentType("text/html");
       out.println("<script type=\"text/javascript\">");
       out.println("alert('fill the required fields')");
        out.println("location='parents_msg.jsp'");
        	out.println("</script>");
     
       
        }
        else
        {
        try
        {
        String sql= "insert into parents(STUDENT_ID, ROLL_NO, PRN_NO, STUDENT_NAME, EMAIL_ID, DEPARTMENT, CLASS, SEMESTER, CGPA, ATTENDANCE) values ('"+id+"','"+roll+"','"+PRN+"','"+student_name+"','"+parent_email+"','"+dept+"','"+year+"','"+sem+"','"+cgpa+"','"+attendance+"')";
        String insert = db.Insert(sql);
        out.println(insert);
           
           Mailer.send(parent_email,"Regarding your child's acdemic report", "Hii Mr/Mrs. " +parent_email+ "here is yours child's result 1!!" +" CGPA "+cgpa+" attendance"+attendance );
           resp.setContentType("text/html");
           out.println("<script type=\"text/javascript\">");
           out.println("alert('save')");
          
           out.println("location='parents_msg.jsp'");
           out.println("</script>");
   
        }
        catch(Exception ex)
     {
     out.println(ex.toString());
     }
}
         }
         if(event.equals("Update")) {
         
          if(roll.equals("") || PRN.equals("") || student_name.equals("") || dept.equals("") || parent_email.equals("") || year.equals("") || sem.equals("") || cgpa.equals("") || attendance.equals("")) {
          resp.setContentType("text/html");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('fill the required fields')");
          out.println("location='parents_msg.jsp'");
          out.println("</script>");
       
         
          }
          else
          {
          try
          {
          String sql= "update parents set STUDENT_ID='"+id+"',ROLL_NO='"+roll+"',PRN_NO='"+PRN+"',STUDENT_NAME='"+student_name+"',EMAIL_ID='"+parent_email+"',DEPARTMENT='"+dept+"',CLASS='"+year+"',SEMESTER='"+sem+"',CGPA='"+cgpa+"',ATTENDANCE='"+attendance+"' where STUDENT_ID='"+id+"' ";
          String update = db.update(sql);
          out.println(update);
             
          resp.setContentType("text/html");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('Updated Successfully!')");
          out.println("location='parents_msg.jsp'");  
          out.println("</script>");
     
          }
          catch(Exception ex)
       {
       out.println(ex.toString());
       }
  }
           }
         if(event.equals("Delete"))

       {

       if(id.equals(""))

       {

       resp.setContentType("text/html");
                out.println("<script type=\"text/javascript\">");
                out.println("alert('Some Fields are Empty'");
                out.println("location='parents_msg.jsp'");  
                out.println("</script>");    

       }

       else

       {

       try

       {

         String sql ="delete from parents where STUDENT_ID='"+id+"'";

         String delete = db.delete(sql);

         out.println(delete);

       

     

     resp.setContentType("text/html");

       out.println("<script type=\"text/javascript\">");
                out.println("alert('delete Successful');");
                out.println("location='parents_msg.jsp';");
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
