<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Control System of Daily Incidence</title>


   <script>
    		function settimetable1()
		{
		var pattern=/[^a-z|^A-Z|^\s]/;
		var id=document.settimetable.id.value;
		
		var fname=document.settimetable.fname.value;
		var lname=document.settimetable.lname.value;
		var email=document.settimetable.email.value;
		var date=document.settimetable.date.value;
		var stime=document.settimetable.stime.value;
		var etime=document.settimetable.etime.value;
		var location=document.settimetable.location.value;
		var offpincode=document.settimetable.offpincode.value;
		var atpos = email.indexOf("@");
		var dotpos = email.lastIndexOf(".");
		
		
		if(id==""){
			 alert("Enter ID");
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


		else if(date=="" || date.length>30){
			 alert("Enter Date");
			  return false;
			}
		else if(stime=""){
			 alert("Enter Start Time");
			  return false;
			}
		else if(etime=""){
			 alert("Enter End Time ");
			  return false;
			}
		else if(location==""){
			 alert("Enter Location");
			  return false;
			}
		else if(offpincode.length<6 || offpincode.length>7){
			 alert("Enter Valid  Pincode");
			  return false;
			}	
		
		else{
			alert("Send TimeTable successfully...!");
		}
		return true;
		}

		
		
		</script>


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
                </li>
                      </ul>
              </li>
                
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
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
            <h1><i class="fa fa-edit"></i>Set TimeTable</h1>
            </div>
          
        </div>
                              
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <div class="row">
                <div class="col-lg-6">
                  <div class="well bs-component">
                    <form class="" action="AdminSetTimetable" method="post" name="settimetable" id="settimetable" onsubmit="return settimetable1()"/>
                   <div class="form-group">
                    <label class="control-label">Your ID</label>
                    <input class="form-control" value="<%=id %>" name="id" id="id" type="text">
                  </div>
                             
				<div class="form-group">
                    <label class="control-label">First Name</label>
                    <input class="form-control" value="<%=fname %>" name="fname" id="fname" type="text">
                  </div>
                  
                  
                   <div class="form-group">
                    <label class="control-label">Last  Name</label>
                    <input class="form-control" value="<%=lname %>" name="lname" id="lname" type="text" >
                  </div>
                  
                   <div class="form-group">
                    <label class="control-label">Email</label>
                    <input class="form-control" value="<%=email %>" name="email" id="email" type="text" >
                  </div>
                     
	                     <div class="form-group">
                          <label class="control-label">Choose Date  </label>
                      <input class="form-control" id="date" name="date" type="date" placeholder="Choose  Date">
                         
                        </div>
                        
                         <div class="form-group">
                          <label class="control-label">Start Time</label>
                           <input class="form-control" id="stime" name="stime" type="time" placeholder="Start Time">
                          
                        </div>
                        
                        
                         <div class="form-group">
                          <label class=" control-label" for="inputEmail">End Time</label>
                	    <input class="form-control" id="etime" name="etime" type="time" placeholder="End Time">
                          </div>
                        <div class="form-group">
                          <label class=" control-label" for="inputEmail">Location</label>
                           <input class="form-control" id="location" name="location" type="text" placeholder="Location">
                          </div>
                        <div class="form-group">
                          <label class=" control-label" for="inputEmail">pincode</label>
                            <input class="form-control" id="offpincode" name="offpincode" value="<%=offpincode %>" type="text" placeholder="pincode">
                          </div>
                        </div>
                       
                       <div class="form-group">
                          <label class=" control-label" for="inputEmail">contact</label>
                            <input class="form-control" id="contact" name="contact" value="<%=mno %>" type="text" placeholder="Contact No">
                          </div>
                        </div>
                       
                       
                          </div>
                        </div>
                       
                        <div class="form-group">
                          <div class="col-lg-10 col-lg-offset-2">
                            <button class="btn btn-default" type="reset">Cancel</button>
                            <button class="btn btn-primary" type="submit">Save & Send</button>
                          </div>
                        </div>
                     
                  </div>
                </div>
               
                 </form>
                </div>
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