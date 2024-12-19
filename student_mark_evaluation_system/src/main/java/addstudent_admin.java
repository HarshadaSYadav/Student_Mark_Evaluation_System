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
public class addstudent_admin extends HttpServlet {
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
String phone_no = req.getParameter("phone_no");
String dept = req.getParameter("dept");
String birthday = req.getParameter("birthday");
String email = req.getParameter("email");
String year = req.getParameter("year");
String gender = req.getParameter("gender");
String sem = req.getParameter("sem");
String address= req.getParameter("address");
String event = req.getParameter("submit");

out.println(id);
out.println(roll);
         out.println(PRN);
         out.println(student_name);
         out.println(phone_no);
         out.println(dept);
         out.println(birthday);
         out.println(email);
         out.println(year);
         out.println(sem);
         out.println(address);
         
         if(event.equals("Add")) {
       
        if(roll.equals("") || PRN.equals("") || student_name.equals("") || student_name.equals("") || phone_no.equals("") || dept.equals("") || birthday.equals("") || email.equals("") || year.equals("") || sem.equals("") || address.equals("") ) {
      resp.setContentType("text/html");
       out.println("<script type=\"text/javascript\">");
       out.println("alert('fill the required fields')");
        out.println("location='addstudent_admin.jsp'");
        	out.println("</script>");
     
       
        }
        else
        {
        try
        {
        String sql= "insert into student_info(ROLL_NO, PRN_NO, STUDENT_NAME, EMAIL_ID, PHONE_NO, DEPARTMENT, CLASS, GENDER, SEMESTER, BIRTHDATE, ADDRESS) values ('"+roll+"','"+PRN+"','"+student_name+"','"+email+"','"+phone_no+"','"+dept+"','"+year+"','"+gender+"','"+sem+"','"+birthday+"','"+address+"')";
        String insert = db.Insert(sql);
        out.println(insert);
           
            resp.setContentType("text/html");
           out.println("<script type=\"text/javascript\">");
           out.println("alert('save')");
   
           out.println("location='addstudent_admin.jsp'");
          out.println("</script>");
   
        }
        catch(Exception ex)
     {
     out.println(ex.toString());
     }
}
         }
         if(event.equals("Update")) {
         
          if(id.equals("") || roll.equals("") || PRN.equals("") || student_name.equals("")  || phone_no.equals("") || dept.equals("") || birthday.equals("") || email.equals("") || year.equals("") || sem.equals("") || address.equals("") ) {
          resp.setContentType("text/html");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('fill the required fields')");
          out.println("location='addstudent_admin.jsp'");
          out.println("</script>");
       
         
          }
          else
          {
          try
          {
          String sql= "update student_info set STUDENT_ID='"+id+"',ROLL_NO='"+roll+"',PRN_NO='"+PRN+"',STUDENT_NAME='"+student_name+"',EMAIL_ID='"+email+"',PHONE_NO='"+phone_no+"',DEPARTMENT='"+dept+"',CLASS='"+year+"',GENDER='"+gender+"',SEMESTER='"+sem+"',BIRTHDATE='"+birthday+"',ADDRESS='"+address+"' where STUDENT_ID='"+id+"' ";
          String update = db.update(sql);
          out.println(update);
             
              resp.setContentType("text/html");
                     out.println("<script type=\"text/javascript\">");
             out.println("alert('Updated Successfully!')");
       out.println("location='addstudent_admin.jsp'");  
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
                out.println("location='Student_Info.jsp'");  
                out.println("</script>");    

       }

       else

       {

       try

       {

         String sql ="delete from student_info where STUDENT_ID='"+id+"'";

         String delete = db.delete(sql);

         out.println(delete);

       

     

     resp.setContentType("text/html");

       out.println("<script type=\"text/javascript\">");
                out.println("alert('delete Successful');");
                out.println("location='addstudent_admin.jsp';");
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
