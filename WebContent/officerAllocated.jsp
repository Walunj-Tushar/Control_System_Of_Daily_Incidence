<%@  page  import="java.sql.*"  %>
<!--student data updated and store in db -->
<%
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
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");           
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
%>

<script> 
    alert("Officer Allocated Successfully...");
</script>