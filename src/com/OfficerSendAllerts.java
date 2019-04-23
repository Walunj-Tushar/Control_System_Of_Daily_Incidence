package com;

import java.io.IOException;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.Date;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.DbConnection;

@WebServlet("/OfficerSendAllerts")
public class OfficerSendAllerts extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public OfficerSendAllerts() {
        super();
       
    }

    Connection con = null;
	PreparedStatement ps;
	ResultSet rs;
	String name,id, mno,location, pincode,date,time , incidenttype , description ;
	

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
	
		id = request.getParameter("id");
	
		location = request.getParameter("location");
		pincode = request.getParameter("pincode");
		date = request.getParameter("date");
		time = request.getParameter("time");
		incidenttype = request.getParameter("incidenttype");
		description = request.getParameter("description");
		

		try {
			Statement st = con.createStatement();
		
			
			
			int r = st.executeUpdate("INSERT INTO `controlsystem`.`officersendallerts` ( `id`, `location`,`pincode`,`date`, `time`, `incidenttype`, `description`) VALUES ('"
					+ id
					+ "', '"
					+ location
					+ "','"
					+ pincode 
					+"','"
					+ date
					+ "', '"
					+ time
					+ "' , '"+incidenttype+"' , '"+description+"');");
			
				System.out.println("Data Insert Done");
				response.sendRedirect("OfficerSendAllerts.jsp");
   				
				
		}		        catch(Exception e){
		        	System.out.println(e);
		        }
		        finally {            
		           System. out.close();
		        }
		    }

   			
   				
		
}