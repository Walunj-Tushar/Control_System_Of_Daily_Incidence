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

@WebServlet("/CustomerRegistration")
public class CustomerRegistration extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public CustomerRegistration() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String fname,lname,addr, state, district, taluka, mno,email,password ;
	

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
		lname = request.getParameter("lname");
		mno = request.getParameter("mno");
		addr = request.getParameter("addr");
		email = request.getParameter("email");
		password = request.getParameter("password");
		

		try {
			Statement st = con.createStatement();
			
			
			int r = st.executeUpdate("INSERT INTO `cabshearingsystem`.`customerreg` (`fname`, `lname`, `addr`,`mno`, `email`, `password`) VALUES ( '"
					+ fname
					+ "','"
					+ lname
					+ "','"
					+ addr + "', '" + mno + "','" + email + "','" + password + "');");
			if (r > 0) {
				System.out.println("Data Insert Done");
   				response.sendRedirect("CustomerLogin.jsp");
   				
			}

		} catch (Exception e) {
			System.out.println("Exception is " + e);
		}

	}
}
