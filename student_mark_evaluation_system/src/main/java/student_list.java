import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

import java.io.FileInputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

@WebServlet("/student_list")
public class student_list extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();
        
        String STUDENT_ID = req.getParameter("STUDENT_ID");
        String PRN_NO = req.getParameter("PRN_NO");
        String event = req.getParameter("submit");

        if (event.equals("View")) {
            if (STUDENT_ID == null || STUDENT_ID.isEmpty()) {
                sendAlert(resp, "Something went wrong...!");
            } else {
                session.setAttribute("STUDENT_ID", STUDENT_ID);
                resp.sendRedirect("view_student.jsp");
            }
        }

        if (event.equals("Download")) {
            if (STUDENT_ID == null || STUDENT_ID.isEmpty()) {
                sendAlert(resp, "Something went wrong...!");
            } else {
                downloadFile(resp, PRN_NO);
            }
        }
    }

    private void sendAlert(HttpServletResponse resp, String message) throws IOException {
        resp.setContentType("text/html");
        resp.getWriter().println("<script type=\"text/javascript\">"); 
        resp.getWriter().println("alert('" + message + "');"); 
        resp.getWriter().println("location='student_list.jsp';"); 
        resp.getWriter().println("</script>");
    }

    private void downloadFile(HttpServletResponse resp, String PRN_NO) throws IOException {
        try (Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/student_mark_evaluation_system", "root", "root");
             Statement st = cn.createStatement()) {

            Class.forName("com.mysql.jdbc.Driver");
            String sql = "SELECT result_file FROM result WHERE prn_no='" + PRN_NO + "'";
            ResultSet rs = st.executeQuery(sql);

            if (rs.next()) {
                String filename = rs.getString("result_file");
                String filepath = "results\\" + filename; // Ensure the path is correct and accessible

                resp.setContentType("application/octet-stream");
                resp.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");

                try (FileInputStream fileInputStream = new FileInputStream(filepath);
                     OutputStream outputStream = resp.getOutputStream()) {

                    byte[] buffer = new byte[4096];
                    int bytesRead;

                    while ((bytesRead = fileInputStream.read(buffer)) != -1) {
                        outputStream.write(buffer, 0, bytesRead);
                    }
                } catch (IOException e) {
                    resp.getWriter().println("Error reading/writing file: " + e.getMessage());
                }
            } else {
                resp.getWriter().println("File not found for the provided PRN_NO.");
            }
        } catch (Exception ex) {
            resp.getWriter().println("Exception: " + ex.toString());
        }
    }
}
