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
	<!--student activation permissiom check condition -->
    <sql:setDataSource var="dbsource" driver="com.mysql.jdbc.Driver"
                           url="jdbc:mysql://localhost/controlsystem"
                           user="root"  password="9096605223"/>
                           
	<sql:update dataSource="${dbsource}" var="count">
            UPDATE adminreg SET status=1
            WHERE id ='${param.id}' 
    </sql:update>
    
	<c:if test="${count>=1}">
           	<%        
           	RequestDispatcher dispatcher =request.getRequestDispatcher("UserViewAdmin.jsp");
            dispatcher.forward(request,response);
            %>     
    </c:if>
    
</body>
</html>