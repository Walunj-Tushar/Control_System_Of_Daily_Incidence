<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en" ng-app>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Control System OF Daily Incidence</title>

    <meta charset="utf-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Police</title>
  
  
  <script>
  function clearText(field)
  {
      if (field.defaultValue == field.value) field.value = '';
      else if (field.value == '') field.value = field.defaultValue;
  }
  	
	function officer()
	{
	var pattern=/[^a-z|^A-Z|^\s]/;

	var offid=document.offlogin.offid.value;
	var fname=document.offlogin.fname.value;
	var lname=document.offlogin.lname.value;
	var email=document.offlogin.email.value;
	var location=document.offlogin.location.value;
	var offpincode=document.offlogin.offpincode.value;
	var date=document.offlogin.date.value;
	var time=document.offlogin.time.value;
	var incidenttype=document.offlogin.incidenttype.value;
	var atpos = email.indexOf("@");
	var dotpos = email.lastIndexOf(".");
	
	 if(offid==""){
		 alert("Enter  Valid  ID Number ");
		  return false;
		}
	 else if(fname=="" || fname.length>15){
		 alert("Enter Your First name");
		  return false;
		}
		
	else if(document.getElementById("fname").value.match(pattern))
	{
	 alert("Not allowed space, only allowed Character");
	  return false;
	}
	else if(lname=="" || lname.length>15){
		 alert("Enter Your Last name");
		  return false;
		}
		
	else if(document.getElementById("lname").value.match(pattern))
	{
	 alert("Not allowed space, only allowed Character");
	  return false;
	}
	else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
	{
		 alert("Enter Valid Email address");
		  return false;
	}


	else if(location=="" || location.length>15){
		 alert("Enter Incident Location");
		  return false;
		}
	

	else if(offpincode.length<6 || offpincode.length>7){
		 alert("Enter  Valid  Pincode number ");
		  return false;
		}


	else if(date=="" || date.length>30){
		 alert("Enter Date");
		  return false;
		}
	else if(time=""){
		 alert("Enter  Time");
		  return false;
		}	if(incidenttype=="" || incidenttype.length>15){
		 alert("Enter Incident Type");
		  return false;
		}
		
	else if(document.getElementById("incidenttype").value.match(pattern))
	{
	 alert("Not allowed space, only allowed Character");
	  return false;
	}

	
	else{
		alert("Send Alert successfully...!");
	}
	return true;
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
  
   <%@  page  import="java.sql.*"  %>
			<%
      			String id=request.getParameter("id");
			String fname=request.getParameter("fname");
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
            			
            			fname=rs.getString("fname");
            			lname=rs.getString("lname");
            			email=rs.getString("email");
            			mno=rs.getString("mno");
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
  
    <div class="wrapper">
      <!-- Navbar-->
      <header class="main-header hidden-print"><a class="logo" href="index.html">Police</a>
        <nav class="navbar navbar-static-top">
          <!-- Sidebar toggle button--><a class="sidebar-toggle" href="#" data-toggle="offcanvas"></a>
          <!-- Navbar Right Menu-->
          <div class="navbar-custom-menu">
            <ul class="top-nav">
              
              <!-- User Menu-->
                    <li>
                	<a href="UserLogin1.jsp"><i class="fa fa-sign-out fa-fw"></i></a>
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
            <li class="active"><a href="AdminHome.jsp?na=<%=offpincode%>"><i class="fa fa-dashboard"></i><span>Dashboard</span></a></li>
            
            <li class="treeview"><a href="#"><i class="fa fa-edit"></i><span>Forms</span><i class="fa fa-angle-right"></i></a>
              <ul class="treeview-menu">
               <li><a href="AdminViewOfficer.jsp?na=<%=offpincode%>"><i class="fa fa-circle-o"></i>View Officer</a></li>
                <li><a href="AdminSetTimeTable.jsp?na=<%=offpincode%>"><i class="fa fa-circle-o"></i> Set TimeTable</a></li>
                <li><a href="AdminSendAlert.jsp?na=<%=offpincode%>"><i class="fa fa-circle-o"></i> Send Alerts</a></li>
                <li><a href="AdminViewAllerts.jsp?na=<%=offpincode%>"><i class="fa fa-circle-o"></i> View Alerts</a></li>
                 <li><a href="AdminRecieveComplaint.jsp?na=<%=offpincode%>"><i class="fa fa-circle-o"></i>View Complaint</a></li>
                 
                
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
            <h1><i class="fa fa-edit"></i>Send Message To Officer ID <%=id %> <br> Officer Name :<%=fname %>&nbsp;<%=lname %></h1>
           
          </div>
          
        </div>
        
        
       
        
        
        
        <div class="row">
          <div class="col-md-12">
            <div class="card">
             <div class="card-body">
                <form  action="AdminSendAlert" method="post" name="offlogin" id="offlogin" onsubmit="return officer()"/>
            
                  <div class="form-group">
                    <label class="control-label">Officer ID</label>
                    <input class="form-control" name="offid" id="offid" value="<%=id %>" type="text" placeholder="Enter Officer ID">
                  </div>
                  
                  <div class="form-group">
                    <label class="control-label">First Name</label>
                    <input class="form-control" name="fname" id="fname" value="<%=fname %>" type="text" placeholder="Enter First Name">
                  </div>
                   <div class="form-group">
                    <label class="control-label">Last Name</label>
                    <input class="form-control" name="lname" id="lname" value="<%=lname %>" type="text" placeholder="Enter Last Name">
                  </div>
                   <div class="form-group">
                    <label class="control-label">Email</label>
                    <input class="form-control" name="email" id="email" value="<%=email %>" type="text" placeholder="Enter Email">
                  </div>
                   
                   <div class="form-group">
                    <label class="control-label">Location Name</label>
                    <input class="form-control" name="location" id="location" value="" type="text" placeholder="Enter Location">
                  </div>
                   <div class="form-group">
                    <label class="control-label">Location Pincode</label>
                    <input class="form-control" name="offpincode" id="offpincode" value="<%=offpincode %>" type="text" placeholder="Enter Location Pincode">
                  </div>
              
                  <div class="form-group">
                    <label class="control-label">Choose Incident  Date</label>
                    <input class="form-control" name="date" id="date" type="date" placeholder="Choose Today  Date">
                  </div>
                  
                   <div class="form-group">
                    <label class="control-label">Time</label>
                    <input class="form-control" name="time" id="time" type="time" placeholder="Choose Time">
                  </div>
                  
                   <div class="form-group">
                    <label class="control-label">Incident Type</label>
                    <input class="form-control" name="incidenttype" id="incidenttype" type="text" placeholder="Enter Incident Type">
                  </div>
               
                   
                    <div class="form-group">
                    <label class="control-label">Description </label>
                     <textarea  class="form-control" rows="6" cols="50" placeholder="Enter Your Description" name="description" id="description"> </textarea>
                  </div>
                  
                  
                 
               
              </div>
              <div class="card-footer">
                <button class="btn btn-primary icon-btn" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>SEND Alert</button>&nbsp;&nbsp;&nbsp;
                <a class="btn btn-default icon-btn" href="#"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
              </div>
              
            </div>
          </div>
           </form>
         
              </div>
            </div>
          </div>
          
       
    <!-- Javascripts-->
    <script src="js/jquery-2.1.4.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/plugins/pace.min.js"></script>
    <script src="js/main.js"></script>
  </body>
</html>
</body>
</html>