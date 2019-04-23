<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*,java.util.*" %>
<%@page import="com.DbConnection.*" %>
<%@page import ="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Control System OF Daily Incidence</title>
</head>
<body>

  <head>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Police</title>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!--if lt IE 9
    script(src='https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')
    script(src='https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')
    -->
    <script>
            function confirmGo(m,u) {
                if ( confirm(m) ) {
                    window.location = u;
                }
            }
     </script>
  </head>
  <body class="sidebar-mini fixed">
   <%
  String pincode;

  if(request.getParameter("na")!=null){

	  pincode=(String)request.getParameter("na");
	  
  }else{
	  pincode=(String)request.getAttribute("pincode");
	 }
  %>
    <div class="wrapper">
      <!-- Navbar-->
      <header class="main-header hidden-print"><a class="logo" href="index.html">Police</a>
        <nav class="navbar navbar-static-top">
          <!-- Sidebar toggle button--><a class="sidebar-toggle" href="#" data-toggle="offcanvas"></a>
          <!-- Navbar Right Menu-->
          <div class="navbar-custom-menu">
            <ul class="top-nav">
                       <li>
                	<a href="UserLogin1.jsp"><i class="fa fa-sign-out fa-fw"></i></a>
                </li>                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Side-Nav-->
      <aside class="main-sidebar hidden-print">
        <section class="sidebar">
          <div class="user-panel">
            <div class="pull-left image"><img class="img-circle" src="images/satyamev.jpg" alt="User Image"></div> -->
           
          </div>
          <!-- Sidebar Menu-->
           <ul class="sidebar-menu">
            <li class="active"><a href="AdminHome.jsp?na=<%=pincode%>"><i class="fa fa-dashboard"></i><span>Dashboard</span></a></li>
            
            <li class="treeview"><a href="#"><i class="fa fa-edit"></i><span>Forms</span><i class="fa fa-angle-right"></i></a>
              <ul class="treeview-menu">
             <li><a href="AdminViewOfficer.jsp?na=<%=pincode%>"><i class="fa fa-circle-o"></i>View Officer</a></li>
                <li><a href="AdminSetTimeTable.jsp?na=<%=pincode%>"><i class="fa fa-circle-o"></i> Set TimeTable</a></li>
                <li><a href="AdminSendAlert.jsp?na=<%=pincode%>"><i class="fa fa-circle-o"></i> Send Alerts</a></li>
                <li><a href="AdminViewAllerts.jsp?na=<%=pincode%>"><i class="fa fa-circle-o"></i> View Alerts</a></li>
                  
                
              </ul>
            </li>
          
            </li>
            <li class="treeview"><a href="UserAboutUs.jsp"><i class="fa fa-file-text"></i><span>About Us</span><i class=""></i></a>
                <li class="treeview"><a href="UserContactUs.jsp"><i class="fa fa-file-text"></i><span>Contact Us</span><i class=""></i></a>
                 </ul>
           
        </section>
      </aside>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
        <div class="content-wrapper">
        <div class="page-title">
          <div>
            <h1><i class="fa fa-th-list"></i> Complaint Details In <%=pincode %>	Area</h1>
            <p></p>
          </div>
          <div>
            
          </div>
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
               <form role="form">
                          <sql:setDataSource
        					var="dbsource" 
        					driver="com.mysql.jdbc.Driver"
        					url="jdbc:mysql://localhost:3306/controlsystem"
        					user="root"
        					password="9096605223" />
        
        <sql:query dataSource="${dbsource}" var="result">
        		Select *  from sendpeoplecomplaint where pincode=<%=pincode %>
        </sql:query>
                <table class="table table-hover table-bordered" id="sampleTable">
                  <thead>
                    <tr>
                                <th>Complaint ID</th>
                               <th>Name</th>
                               <th>Mobile No</th>
                               <th>Address</th>
                               <th>Pincode</th>
                               <th>Date</th>
                               <th>Time</th>
                               <th>Details</th>
                              	<th>Status</th>
                              	
                              	<th>Allocate Officer</th>
                              	
                              	   									
                          </tr>
                  </thead>
                   <c:forEach var="rows" items="${result.rows}">
        	<tr  style="color: black">
        		<td><c:out value="${rows.id}" /></td>
        		<td><c:out value="${rows.name}" /></td>
        	
        		<td><c:out value="${rows.mobno}" /></td>
        		
        		<td><a target=blank href="https://www.google.co.in/maps?q==<c:out value="${rows.incidenceaddr}"/>"><c:out value="${rows.incidenceaddr}" /></td>
        		<td><a target=blank href="https://www.google.co.in/maps?q=<c:out value="${rows.pincode}"/>"><c:out value="${rows.pincode}" /></a></td>
        		<td><c:out value="${rows.date}" /></td>
        		<td><c:out value="${rows.time}" /></td>
        		<td><c:out value="${rows.incidencedetails}" /></td>
        		
        	  
        		
        		 <td><c:choose>
    				<c:when test="${rows.status=='1'}">
        			<font  color="#008710">	Solved</font>	<br />
    				</c:when>    
    				<c:otherwise>
         			<font  color="red">	InProgress</font>
    				</c:otherwise>
					</c:choose>
				</td>
        		<td><c:choose>
    				<c:when test="${rows.status=='0'}">
        			<button display:"none"><a href="AdminAllocateOfficer.jsp?id=<c:out value="${rows.id}" />" style="color:green;"><i class="fa fa-"></i> Allocate Officer </a></button> </td>
        		</c:when>    
    				<c:otherwise>
         			<font  color="black">Complaint is Solved</font>	<br />
    				
        		</c:otherwise>
					</c:choose>
				
        		
        	</tr>     
        </c:forEach>                             
                  <tbody>
                  
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- Javascripts-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/pace.min.js"></script>
    <script src="js/main.js"></script>
    <!-- Data table plugin-->
    <script type="text/javascript" src="js/plugins/jquery.dataTables.min.js"></script>
    <script type="text/javascript" src="js/plugins/dataTables.bootstrap.min.js"></script>
    <script type="text/javascript">$('#sampleTable').DataTable();</script>
  </body>
</html>
</body>
</html>