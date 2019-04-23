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


@WebServlet("/a")
public class a extends HttpServlet {
	private static final long serialVersionUID = 1L;
       

	Connection con ;
	PreparedStatement ps;
	ResultSet rs;

	String email,id;
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
        String id=request.getParameter("id");
        String name=request.getParameter("name");
        String mobno=request.getParameter("mobno");
        String incidenceaddr=request.getParameter("incidenceaddr");
        String pincode=request.getParameter("pincode");
        String date=request.getParameter("date");
        String time=request.getParameter("time");
        String incidencedetails=request.getParameter("incidencedetails");
        String offid=request.getParameter("offid");
   Connection con=null;
    try
      {
          Class.forName("com.mysql.jdbc.Driver");
         // con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");           
          PreparedStatement ps=con.prepareStatement( "insert into officerviewcomplaint(id,name,mobno,incidenceaddr,pincode,date,time,incidencedetails,offid) values(?,?,?,?,?,?,?,?,?) ");

			ps.setString(1, id);
			ps.setString(2, name);
			ps.setString(3, mobno);
		    ps.setString(4,incidenceaddr);
		    ps.setString(5,pincode);
		    ps.setString(6,date);
		    ps.setString(7,time);
		    ps.setString(8,incidencedetails);
		    ps.setString(9,offid);

			ps.executeUpdate();
			
			response.sendRedirect("AdminRecieveComplaint.jsp?na='"+pincode+"'");

          ps.close(); 
          con.close(); 
      }
   catch(Exception e)
      {
        System.out.println(e);
      }
		
	}

}
