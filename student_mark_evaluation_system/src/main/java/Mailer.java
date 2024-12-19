import java.util.Properties;  
import javax.mail.*;  
import javax.mail.internet.*;  
 
public class Mailer {  


 public static void  send(String to,String subject,String msg){  
 
  String host="smtp.gmail.com";  
  final String user="prathameshkiramate@gmail.com";  
  final String password="gurbtduezboubtcs";  
   
   
   Properties props = new Properties();  
   props.put("mail.smtp.host",host);  
   props.put("mail.smtp.auth", "true");  
   props.put("mail.smtp.starttls.enable", "true");
   props.put("mail.smtp.port", "587");
     
   Session session = Session.getDefaultInstance(props, new javax.mail.Authenticator()
   {  
      protected PasswordAuthentication getPasswordAuthentication()
      {  
     return new PasswordAuthentication(user,password);  
      }
     
   });  
   
    try
    {  
	    MimeMessage message = new MimeMessage(session);  
	    message.setFrom(new InternetAddress(user));  
	    message.addRecipient(Message.RecipientType.TO,new InternetAddress(to));  
	    message.setSubject(subject);  
	    message.setText(msg);  
	     
	   
	    Transport.send(message);  
	    System.out.println("message sent successfully...");  
   
     }
     catch (MessagingException e)
     {
    	 System.out.println("message sent Error...");
    	 e.printStackTrace();
     }  
 }  
}  