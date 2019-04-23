package com;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
@WebServlet("/UserSetTimeTable")
@MultipartConfig
public class UserSetTimeTable extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			 Connection con;
			 Class.forName("com.mysql.jdbc.Driver");
	         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");  
	            	
	        
				String id = request.getParameter("id");
		   	
		   		String date = request.getParameter("date");
		   		String stime = request.getParameter("stime");
		   		String etime = request.getParameter("etime");
		   		String location = request.getParameter("location");
		   		String pincode = request.getParameter("pincode");
		   		String contact = request.getParameter("contact");
		   		
			PreparedStatement ps=con.prepareStatement( "insert into usersettimetable(id,date,stime,etime,location,pincode,contact) values(?,?,?,?,?,?,?) ");

			ps.setString(1, id);
			ps.setString(2, date);
			ps.setString(3, stime);
		    ps.setString(4,etime);
		    ps.setString(5,location);
		    ps.setString(6,pincode);
		    ps.setString(7,contact);


			ps.executeUpdate();
			request.getRequestDispatcher("UserSetTimeTable.jsp").forward(request,response);
			
			sendSMS obj = new sendSMS();
			obj.sendSms(id, date, stime, etime, location, pincode,contact);
			
		}
	
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}