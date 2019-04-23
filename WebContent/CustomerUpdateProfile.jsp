<%@  page  import="java.sql.*"  %>
<!--student data updated and store in db -->
<%
          String id=request.getParameter("id");
          String fname=request.getParameter("fname");
          String lname=request.getParameter("lname");
          String mno=request.getParameter("mno");
          String email=request.getParameter("email");
          
     Connection con=null;
      try
        {
            Class.forName("com.mysql.jdbc.Driver");
            con=DriverManager.getConnection("jdbc:mysql://localhost:3306/cabshearingsystem", "root", "root");           
            String query="Update customerreg set fname='" + fname + "', lname='" + lname + "', mno='" + mno + "' , email='" + email + "' where id= " + id; 
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
<jsp:forward page="CustomerHome.jsp"> 
<jsp:param name="na" value="<%=email %>" /> 
</jsp:forward> 
<script> 
    alert("Record Updated Successfully...");
</script>