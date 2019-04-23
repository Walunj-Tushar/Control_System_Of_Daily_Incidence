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

@WebServlet("/OfficerReg")
public class OfficerReg extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public OfficerReg() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String fname, mname,lname,adharno,dob,doj,post,gender, state, district, taluka, mno	,email,offpincode ,password ;
	

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
		
		adharno = request.getParameter("adharno");
		dob = request.getParameter("dob");
		gender = request.getParameter("gender");
		post = request.getParameter("post");
		doj = request.getParameter("doj");
		state = request.getParameter("state");
		district = request.getParameter("district");
		taluka = request.getParameter("taluka");
		mno = request.getParameter("mno");
		offpincode = request.getParameter("offpincode");
		
		email = request.getParameter("email");
		password = request.getParameter("password");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `controlsystem`.`officerreg` (`fname`, `mname`, `lname`, `adharno`,`dob`,`gender`,`post`,`doj`, `state`, `district`, `taluka`, `mno`,`offpincode`, `email`, `password`) VALUES ( '"
					+ fname
					+ "','"
					+ mname
					+ "', '"
					+ lname
					+ "','"
					+ adharno + "','"+dob+"','"+gender+"','"+post+"','"+doj+"','" + state + "','" + district + "', '" + taluka + "', '" + mno + "','" + offpincode + "','" + email + "','" + password + "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("OfficerLogin.jsp");
   				SendMailSSL SendMail = new SendMailSSL();
				String sub = "Your Registration Successful ";
				String pkey = "Your  Username :"+fname+" '\t' "+lname+"\n Mobile Number :"+mno+" Email :"+email+"'\n'Post :"+post+" '\n'Password :"+password+" ";
				SendMail.EmailSending(email, sub, pkey);
			
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
