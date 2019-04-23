package com;

import java.io.IOException;
import java.io.InputStream;
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
import javax.servlet.http.Part;

import com.DbConnection;

@WebServlet("/AdminRegistration")
public class AdminRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public AdminRegistration() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String fname, mname,lname,adharno,dob,gender, state, district, taluka, mobileno	,email,pincode;
	

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
	
		fname = request.getParameter("fname");
		mname = request.getParameter("mname");
		lname = request.getParameter("lname");
		dob = request.getParameter("dob");
		adharno = request.getParameter("adharno");
		gender = request.getParameter("gender");
		state = request.getParameter("state");
		district = request.getParameter("district");
		taluka = request.getParameter("taluka");
		mobileno = request.getParameter("mobileno");
		email = request.getParameter("email");
		pincode = request.getParameter("pincode");
		
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `controlsystem`.`adminreg` (`fname`, `mname`, `lname`,`dob`, `adharno`,`gender`, `state`, `district`, `taluka`, `mobileno`, `email`, `pincode`) VALUES ( '"
					+ fname
					+ "','"
					+ mname
					+ "', '"
					+ lname
					+ "','"
					+dob
					+"','"
					+ adharno + "','"+gender+"','" + state + "','" + district + "', '" + taluka + "', '" + mobileno + "','" + email + "','" + pincode + "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("AdminLogin.jsp");
   				SendMailSSL SendMail = new SendMailSSL();
				String sub = "Your Registration Successful ";
				String pkey = "Your  Username :"+fname+"  "+lname+"\n Mobile Number :"+mobileno+" Email :"+email+" 	Password :"+pincode+" ";
				SendMail.EmailSending(email, sub, pkey);
			
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
