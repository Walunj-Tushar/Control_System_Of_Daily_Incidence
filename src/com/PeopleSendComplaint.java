
package com;

import java.io.IOException;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DbConnection;

@WebServlet("/PeopleSendComplaint")
public class PeopleSendComplaint extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public PeopleSendComplaint() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String name,email, mobno, pincode,incidenceaddr,date,time, incidencedetails  ;
	
	
	

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
		
		name = request.getParameter("name");
		email = request.getParameter("email");

		mobno = request.getParameter("mobno");
		incidenceaddr = request.getParameter("incidenceaddr");
		pincode = request.getParameter("pincode");
		date = request.getParameter("date");
		time = request.getParameter("time");
		incidencedetails = request.getParameter("incidencedetails");
		

		try {
			Statement st = con.createStatement();
		
			
			
			int r = st.executeUpdate("INSERT INTO `controlsystem`.`sendpeoplecomplaint` ( `name`,`email`, `mobno`, `incidenceaddr`,`pincode`,`date`,`time`, `incidencedetails`) VALUES ('"
					+ name
					+ "','"+email+"', '"
					+ mobno
					+ "', '"
					+ incidenceaddr
					+ "','"
					+ pincode
					+ "','"+date+"','"+time+"', '"
					+ incidencedetails
					+ "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("index.jsp");
   				
   				SendMailSSL SendMail = new SendMailSSL();
   				String sub = "Complaint Received";
   				String pkey = "Your Complaint is recived @"+time+"\n  Username :"+name+"\n Mobile Number :"+mobno+"\n Incidence details :"+incidencedetails;
   				SendMail.EmailSending(email, sub, pkey);
   				

   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
