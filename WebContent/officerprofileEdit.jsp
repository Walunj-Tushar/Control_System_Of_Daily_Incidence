<%@  page  import="java.sql.*"  %>
<!--student data updated and store in db -->
<%
          String id=request.getParameter("id");
          String fname=request.getParameter("fname");
          String lname=request.getParameter("lname");
          String adharno=request.getParameter("adharno");
          String post=request.getParameter("post");
          String state=request.getParameter("state");
          String district=request.getParameter("district");
          String taluka=request.getParameter("taluka");
          String mno=request.getParameter("mno");
          String email=request.getParameter("email");
          
     Connection con=null;
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");           
            String query="Update officerreg set fname='" + fname + "', lname='" + lname + "', adharno='" + adharno + "', post='" + post + "', state='" + state + "', district='" + district + "', taluka='" + taluka + "', mno='" + mno + "' , email='" + email + "' where id= " + id; 
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
<jsp:forward page="OfficerProfile.jsp"> 
<jsp:param name="na" value="<%=id %>" /> 
</jsp:forward> 
<script> 
    alert("Record Updated Successfully...");
</script>