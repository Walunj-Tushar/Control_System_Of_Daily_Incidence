<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.io.*,java.util.*,java.sql.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql"%>
<%@page import ="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
  String pincode;

  if(request.getParameter("na")!=null){

	  pincode=(String)request.getParameter("na");
	  
  }else{
	  pincode=(String)request.getAttribute("pincode");
	 }
  %>
  
  <%@  page  import="java.sql.*"  %>
			<%
      			String id=request.getParameter("id");
			String lname="", incidenceaddr="",date="",email="",offpincode="", time="", incidencedetails="",mno="";
			    Connection con=null;
      		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");           
            		String query="select * from officerreg where id='"+id+"'";

            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
            		if(rs.next()) 
             		{
            			id=rs.getString("id");
            			
            			offpincode=rs.getString("offpincode");
            			
             		}
           			rs.close(); 
           			stmt.close(); 
           			con.close(); 
        	   }
     		catch(Exception e)
        	{
          	System.out.println(e);
        	}
			%>
  

<!--student deactivation permissiom check condition -->
   <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/controlsystem"
                           user="root"  password="9096605223"/>
                           
	<sql:update dataSource="${dbsource}" var="count">
            UPDATE officerreg SET status=0
            WHERE id ='${param.id}' 
    </sql:update>
    
	<c:if test="${count>=1}">
           	<%        
           	RequestDispatcher dispatcher =request.getRequestDispatcher("AdminViewOfficer.jsp?na="+offpincode+"");
            dispatcher.forward(request,response);
            %>     
    </c:if>
    
</body>
</html>