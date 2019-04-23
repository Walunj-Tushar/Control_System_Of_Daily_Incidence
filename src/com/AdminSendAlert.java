package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DbConnection;

@WebServlet("/AdminSendAlert")
public class AdminSendAlert extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminSendAlert() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String offid,location, date,time , incidenttype , description,offpincode ,fname,lname,email;
	

	public void init(ServletConfig config) throws ServletException {
		try {

			con = DbConnection.getConnection();
			System.out.println("connection is " + con);

		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}

	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
	
		offid = request.getParameter("offid");
		
		fname = request.getParameter("fname");
			lname = request.getParameter("lname");
			email = request.getParameter("email");
			location = request.getParameter("location");
		offpincode = request.getParameter("offpincode");
		date = request.getParameter("date");
		time = request.getParameter("time");
		incidenttype = request.getParameter("incidenttype");
		description = request.getParameter("description");
		

		try {
			Statement st = con.createStatement();
		
			
			
			int r = st.executeUpdate("INSERT INTO `controlsystem`.`usersendallerts` ( `offid`,`fname`,`lname`,`email`, `location`,`offpincode`,`date`, `time`, `incidenttype`, `description`) VALUES ('"
					+ offid
					+ "','"
					+fname
					+"','"
					+lname
					+"', '"
					+email
					+"','"
					+ location
					+ "','"
					+offpincode
					+"','"
					+ date
					+ "', '"
					+ time
					+ "' , '"+incidenttype+"' , '"+description+"');");
			
				System.out.println("Data Insert Done");
				response.sendRedirect("AdminSendAlert.jsp?na='"+offpincode+"'");
				SendMailSSL SendMail = new SendMailSSL();
				String sub = "You Have a New Message about Other Complaint ";
				String pkey = "You have a new complaint is '\n' Username :"+fname+" '\t' "+lname+"'\n'Incidence Time :"+time+" '\n'Incidence Location :"+location+",'\n'Location Pincode :"+offpincode+"";
				SendMail.EmailSending(email, sub, pkey);
			
   				
		}
				
				
				
				
				catch(Exception e){
		        	System.out.println(e);
		        }
		        finally {            
		           System.out.close();
		        }
		    }

   			
   				
		
}