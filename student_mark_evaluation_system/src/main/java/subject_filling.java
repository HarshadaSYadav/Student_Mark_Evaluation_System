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
 * Servlet implementation class subject_filling
 */
public class subject_filling extends HttpServlet {
Connection cn = null;
 Statement st = null;
@Override
protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
HttpSession session = req.getSession();
 PrintWriter out = resp.getWriter();
 Database db = new Database();
 String result = db.Connectdb();
 out.print(result);
 
 String department= req.getParameter("department");
   String  semester= req.getParameter("semester");
String subject = req.getParameter("subject");
String ID=req.getParameter("ID");
String exam=req.getParameter("exam");

String event = req.getParameter("submit");

out.println(department);
out.println(semester);
out.println(exam);

         out.println(subject);
         out.println(ID);
         
         if(event.equals("Submit"))
         {
         
          if(department.equals("") || semester.equals("") || subject.equals("") || exam.equals(""))
          {
          resp.setContentType("text/html");
          out.println("<script type=\"text/javascript\">");
          out.println("alert('select the each field');");
          out.println("location='subject_filling.jsp';");
          out.println("</script>");          
          }
          else
          {
          try
          {
          String sql= "insert into subject_add(DEPARTMENT, SEMESTER, EXAM, SUBJECT) values ('"+department+"','"+semester+"','"+exam+"','"+subject+"')";
          String insert = db.Insert(sql);
          out.println(insert);
             
          resp.setContentType("text/html");
            out.println("<script type=\"text/javascript\">");
            out.println("alert('save');");
            out.println("location='subject_filling.jsp';");
            out.println("</script>");
     
          }
          catch(Exception ex)
          {
          out.println(ex.toString());
          }
          }
         }
         
         
         
          if(event.equals("Update"))
          {              
              if(department.equals("") || semester.equals("") || subject.equals("") ||exam.equals(""))
              {
              resp.setContentType("text/html");
              out.println("<script type=\"text/javascript\">");
              out.println("alert('fill the required fields');");
              out.println("location='subject_filling.jsp');");
              out.println("</script>");
           
             
              }
              else
              {
              try
              {
              String sql= "update subject_add set DEPARTMENT='"+department+"',SEMESTER='"+semester+"',EXAM='"+exam+"',SUBJECT='"+subject+"' where SUBJECT_ID='"+ID+"' ";
              String update = db.update(sql);
              out.println(update);
                 
                 resp.setContentType("text/html");
                         out.println("<script type=\"text/javascript\">");
                 out.println("alert('Updated Successfully!');");
           out.println("location='subject_filling.jsp';");  
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
         if(ID.equals(""))
         {

                  resp.setContentType("text/html");
                       out.println("<script type=\"text/javascript\">");
                       out.println("alert('Some Fields are Empty');");
                       out.println("location='subject_filling.jsp');");  
                       out.println("</script>");    

            }
            else
         {

               try

               {
                  String sql ="delete from subject_add where SUBJECT_ID='"+ID+"'";
                  String delete = db.delete(sql);
                  out.println(delete);

            resp.setContentType("text/html");

               out.println("<script type=\"text/javascript\">");
                       out.println("alert('delete Successful');");
                       out.println("location='subject_filling.jsp';");
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
