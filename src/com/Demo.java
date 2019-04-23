package com;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DbConnection;


@WebServlet("/Demo")
public class Demo extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	Connection con ;
	PreparedStatement ps;
	ResultSet rs;

	String email;
	String password;
	PrintWriter out;
	RequestDispatcher rd;
	boolean b;

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
			ps = con.prepareStatement("SELECT * FROM cabshearingsystem.customerreg WHERE email=? and password=? ");
			
			ps.setString(1, email);
			ps.setString(2, password);
			ps.setInt(3,1);
			rs = ps.executeQuery();
			HttpSession session = request.getSession();
		
			System.out.println("Login successfully");
			if (rs.next()) 
			{
				session.setAttribute("email",email);
				
				request .setAttribute("email", email);
				System.out.println("email"+email);
				request.setAttribute("password",password);
				
				
				
				System.out.println("Success login");
				
				rd=request.getRequestDispatcher("CustomerHome.jsp?na=email");
				rd.forward(request, response);
			}
			
			
			

			else {
				System.out.println("Login failed");

				response.sendRedirect("CustomerLogin.jsp");
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}


	
		
	}

}
