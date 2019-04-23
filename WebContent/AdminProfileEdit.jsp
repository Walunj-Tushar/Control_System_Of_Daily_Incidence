<%@  page  import="java.sql.*"  %>
<!--student data updated and store in db -->
<%
          String id=request.getParameter("id");
          String fname=request.getParameter("fname");
          String lname=request.getParameter("lname");
          String adharno=request.getParameter("adharno");
          String state=request.getParameter("state");
          String district=request.getParameter("district");
          String taluka=request.getParameter("taluka");
          String mobileno=request.getParameter("mobileno");
          String email=request.getParameter("email");
          String pincode=request.getParameter("pincode");
           
     Connection con=null;
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");           
            String query="Update adminreg set fname='" + fname + "', lname='" + lname + "', adharno='" + adharno + "', state='" + state + "', district='" + district + "', taluka='" + taluka + "', mobileno='" + mobileno + "' , email='" + email + "',pincode='"+pincode+"' where id= " + id; 
            Statement stmt=con.createStatement();
            stmt.executeUpdate(query);

            stmt.close(); 
            con.close(); 
        }
     catch(Exception e)
        {
          System.out.println(e);
        }
%>
<jsp:forward page="AdminProfile.jsp"> 
<jsp:param name="na" value="<%=pincode %>" /> 
</jsp:forward> 
<script> 
    alert("Record Updated Successfully...");
</script>