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

@WebServlet("/ContactUs")
public class ContactUs extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public ContactUs() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String name,email,subject,message ,mno;
	

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
		mno = request.getParameter("mno");
		email = request.getParameter("email");
		subject = request.getParameter("subject");
		message = request.getParameter("message");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `cabshearingsystem`.`contactus` (`name`,`mno`,`email`, `subject`,`message`) VALUES ( '"
					+ name
					+ "','"
					+ mno
					+ "','"
					+ email
					+ "','"
					+ subject + "', '" + message + "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("index.jsp");
   				
   				SendMailSSL SendMail = new SendMailSSL();
   				String sub = "Contatct Receive";
   				String pkey = "Your Complaint is recived @Username :"+name+"\n Mobile Number :"+mno+"\n Subject :"+subject+"\n Your Message :"+message+"";
   				SendMail.EmailSending(email, sub, pkey);

   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
