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


@WebServlet("/OfficerLogin")
public class OfficerLogin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	Connection con ;
	PreparedStatement ps;
	ResultSet rs;

	String email;
	String password,id;
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
			id = request.getParameter("id");


			System.out.println("username value. . . .. " + email);
			System.out.println("password value. . . .. " + password);
			System.out.println("id value. . . .. " + id);
			ps = con.prepareStatement("SELECT * FROM controlsystem.officerreg WHERE email=? and password=?  and id=? and status=?");
			
			ps.setString(1, email);
			ps.setString(2, password);
			
			ps.setString(3, id);
			ps.setInt(4,1);
			
			
			
			rs = ps.executeQuery();
			HttpSession session = request.getSession();
			
			System.out.println("Login successfully");
			if (rs.next()) 
			{
				session.setAttribute("email",email);
				
				request .setAttribute("email", email);
				System.out.println("email"+email);
				request.setAttribute("password",password);
				
				
				session.setAttribute("id",id);
				
				request .setAttribute("id", id);
				System.out.println("id"+id);
				
				System.out.println("Success login");
				
				rd=request.getRequestDispatcher("OfficerHome.jsp");
				rd.forward(request, response);
			}
			
			
			

			else {
				System.out.println("Login failed");

				response.sendRedirect("OfficerLogin.jsp");
			}
			ps.close();
		} catch (Exception e) {
			e.printStackTrace();
		}

		
	}

}
