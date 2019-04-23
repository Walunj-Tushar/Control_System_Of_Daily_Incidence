package com;

import java.io.IOException; 
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DbConnection;


@WebServlet("/AdminLogin")
public class AdminLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	Connection con ;
	PreparedStatement ps;
	ResultSet rs;

	String email;
	String password;

	public void init(ServletConfig config) throws ServletException {
		try {
			con = DbConnection.getConnection();
			System.out.println("connection is " + con);
		} catch (Exception e1) {
			e1.printStackTrace();
		}

	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException 
	{
		try {

			email = request.getParameter("email");
			password = request.getParameter("password");

			System.out.println("username value. . . .. " + email);
			System.out.println("password value. . . .. " + password);
			ps = con.prepareStatement("SELECT * FROM cabshearingsystem.adminlogin WHERE email=? and password=?");
			
			ps.setString(1, email);
			ps.setString(2, password);
			rs = ps.executeQuery();
			HttpSession session = request.getSession();
			session.setAttribute("email", email);
			System.out.println("Login successfully");
			if (rs.next()) 
			{	
				System.out.println("Success login");
				
				System.out.println("Login successfully");

				
				response.sendRedirect("AdminHome.jsp");
			}

			else {
				System.out.println("Login failed");

				response.sendRedirect("AdminLogin.jsp");
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}


	
		
	}

}
