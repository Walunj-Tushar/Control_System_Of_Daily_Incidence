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
@WebServlet("/AdminSetTimetable")
@MultipartConfig
public class AdminSetTimetable extends HttpServlet 
{
	private static final long serialVersionUID = 1L;
	
	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		try
		{
			 Connection con;
			 Class.forName("com.mysql.jdbc.Driver");
	         con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");  
	            	
	        
				String id = request.getParameter("id");
				String fname = request.getParameter("fname");
				String lname = request.getParameter("lname");
				String email = request.getParameter("email");
		   		String date = request.getParameter("date");
		   		String stime = request.getParameter("stime");
		   		String etime = request.getParameter("etime");
		   		String location = request.getParameter("location");
		   		String pincode = request.getParameter("offpincode");
		   		String contact = request.getParameter("contact");
		   		
			PreparedStatement ps=con.prepareStatement( "insert into adminsettimetable(id,fname,lname,email,date,stime,etime,location,pincode,contact) values(?,?,?,?,?,?,?,?,?,?) ");

			ps.setString(1, id);
			ps.setString(2, fname);
			ps.setString(3, lname);
			ps.setString(4, email);
		    
			ps.setString(5, date);
			ps.setString(6, stime);
		    ps.setString(7,etime);
		    ps.setString(8,location);
		    ps.setString(9,pincode);
		    ps.setString(10,contact);


			ps.executeUpdate();
			request.getRequestDispatcher("AdminSetTimeTable.jsp?na="+pincode+"").forward(request,response);
			
			/*sendSMS obj = new sendSMS();
			obj.sendSms(id, date, stime, etime, location, pincode,contact);*/
			
			SendMailSSL SendMail = new SendMailSSL();
				String sub = "Your Today's Timetable ";
				String pkey = "Your Timetable is '\n' Username :"+fname+" '\t' "+lname+"\n Mobile Number :"+contact+"'\n'Start Time :"+stime+" '\n'End Time :"+etime+" '\n'Incidence Location :"+location+",'\n'Location Pincode :"+pincode+"";
				SendMail.EmailSending(email, sub, pkey);
			
			
		}
	
		catch(Exception e)
		{
			System.out.println(e);
		}
	}
}
