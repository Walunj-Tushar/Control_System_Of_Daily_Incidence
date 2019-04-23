<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page import="java.sql.*,java.util.*" %>
<%@page import="com.DbConnection.*" %>
<%@page import ="java.sql.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Control System OF Daily Incidences</title>
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
              <!-- User Menu-->
 <li class="dropdown notification-menu"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-user"></i></a>
                <ul class="dropdown-menu">
                        <li class="divider"></li>
                        <li><a href="AdminLogin.jsp"><i class="fa fa-sign-out fa-fw"></i></a>
                        </li>
                      </ul>
              </li>               
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Side-Nav-->
      <aside class="main-sidebar hidden-print">
        <section class="sidebar">
          <div class="user-panel">
            <div class="pull-left image"><img class="img-circle" src="images/satyamev.jpg" alt="User Image"></div>
         
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
                 <li><a href="AdminRecieveComplaint.jsp?na=<%=pincode%>"><i class="fa fa-circle-o"></i>View Complaint</a></li>
                 
               
              </ul>
                </li>
              <ul class="treeview-menu">      
              </ul>
            </li>
            <li class="treeview"><a href="OfficerAboutUs.jsp?na=<%=pincode%>"><i class="fa fa-file-text"></i><span>About Us</span><i class=""></i></a>
                <li class="treeview"><a href="OfficerContactUs.jsp?na=<%=pincode%>"><i class="fa fa-file-text"></i><span>Contact Us</span><i class=""></i></a>
                   
             
              </ul>
           
        </section>
      </aside>
      <div class="content-wrapper">
        <div class="page-title">
          <div>
            <h1><i class="fa fa-th-list"></i>Profile</h1>
            <p></p>
          </div>
          
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="card-body">
                  <form action="#" method="post">
    		<%@  page  import="java.sql.*"  %>
			<%
     			Connection con=null;
      		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");           
            		String query="select * from adminreg  WHERE pincode='"+ pincode +"'";
            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
			%>
				<table border="1" align="center" class="table" style="border-color: #009688">
					<tr style="color: #009688">
						<th>ID</th>
						<th>First Name</th>
						<th>Last Name</th>	
						<th>Adhar Number</th>
						<th>State</th>
						<th>District</th>
						<th>Taluka</th>
						<th>Mobile Number</th>
						<th>Email</th>
						<th>Pincode</th>
						<th>Edit</th>
						</tr>
			<%
         			int id=0;
            		while(rs.next()) 
             			{
                			id=rs.getInt("id");
              %>
							<tr style="color: #009688" >
								<td> <%=id %> </td>
								<td> <%=rs.getString("fname") %> </td>
								<td> <%=rs.getString("lname") %> </td>
								<td> <%=rs.getString("adharno") %> </td>
								<td> <%=rs.getString("state") %> </td>
								<td> <%=rs.getString("district") %> </td>
								<td> <%=rs.getString("taluka") %> </td>
								<td> <%=rs.getString("mobileno") %> </td>
								<td> <%=rs.getString("email") %> </td>
								<td> <%=rs.getString("pincode") %> </td>
								<td><button><a href="AdminProfileUpdate.jsp?id=<%=id %>" style="color:green;"><i class="fa fa-edit"></i> Edit</a></button> </td>
								</tr>
			<%
             			}
			%> 
				</table>
			<%
           			rs.close(); 
           			stmt.close(); 
           			con.close(); 
        		}
     		catch(Exception e)
        		{
          			System.out.println(e);
        		}
			%>
		</form> 
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
</html></body>
</html>