<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Control System OF Daily Incidence</title>




  <script>
  function clearText(field)
  {
      if (field.defaultValue == field.value) field.value = '';
      else if (field.value == '') field.value = field.defaultValue;
  }
  	
	function officer()
	{
	var pattern=/[^a-z|^A-Z|^\s]/;

	var id=document.offlogin.id.value;
	var location=document.offlogin.location.value;
	var pincode=document.offlogin.pincode.value;
	var date=document.offlogin.date.value;
	var time=document.offlogin.time.value;
	var incidenttype=document.offlogin.incidenttype.value;
	
	 if(id==""){
		 alert("Enter  Valid  ID Number ");
		  return false;
		}
		if(location=="" || location.length>15){
		 alert("Enter Incident Location");
		  return false;
		}
		
	else if(document.getElementById("location").value.match(pattern))
	{
	 alert("Not allowed space, only allowed Character");
	  return false;
	}

	else if(pincode.length<6 || pincode.length>7){
		 alert("Enter  Valid  Pincode number ");
		  return false;
		}

	else if(date=""){
		 alert("Enter Incidence Date  ");
		  return false;
		}
	if(incidenttype=="" || incidenttype.length>15){
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
  String id;

  if(request.getParameter("na")!=null){

	  id=(String)request.getParameter("na");

  }else{
	  id=(String)request.getAttribute("id");
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
              
              </li>
              <!-- User Menu-->
             
             <li class="dropdown notification-menu"><a class="dropdown-toggle" href="#" data-toggle="dropdown" aria-expanded="false"><i class="fa fa-user"></i></a>
                <ul class="dropdown-menu">
                <li><a href="OfficerProfile.jsp?na=<%=id%>"><i class="fa fa-user fa-fw"></i>User Profile</a>
                        </li>
                        <li class="divider"></li>
                        <li><a href="OfficerLogin.jsp"><i class="fa fa-sign-out fa-fw"></i>Logout</a>
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
            <div class="pull-left info">
              <p>Home</p>
              <p class="designation"></p>
            </div>
          </div>
          <!-- Sidebar Menu-->
          <ul class="sidebar-menu">
            <li class="active"><a href="OfficerHome.jsp?na=<%=id%>"><i class="fa fa-dashboard"></i><span>Dashboard</span></a></li>
           
           
           
              <li class="treeview"><a href="#"><i class="fa fa-edit"></i><span>Forms</span><i class="fa fa-angle-right"></i></a>
          <ul class="treeview-menu">
               <li><a href="OfficerViewTimeTable.jsp?na=<%=id%>"><i class="fa fa-circle-o"></i> View TimeTable</a></li>
                <li><a href="OfficerSendAllerts.jsp?na=<%=id%>"><i class="fa fa-circle-o"></i> Send Alerts</a></li>
                <li><a href="OfficerViewAllerts.jsp?na=<%=id%>"><i class="fa fa-circle-o"></i> View Alerts</a></li>
                <li><a href="OfficerGetComplaint.jsp?na=<%=id%>"><i class="fa fa-circle-o"></i> View Complaint</a></li>
                
              </ul>
                </li>  <ul class="treeview-menu">      
              </ul>
            </li>
           <li class="treeview"><a href="OfficerAboutUs.jsp?na=<%=id%>"><i class="fa fa-file-text"></i><span>About Us</span><i class=""></i></a>
                <li class="treeview"><a href="OfficerContactUs.jsp?na=<%=id%>"><i class="fa fa-file-text"></i><span>Contact Us</span><i class=""></i></a>
                    
             
              </ul>
           
        </section>
      </aside>
      <div class="content-wrapper">
        <div class="page-title">
          <div>
            <h1><i class="fa fa-edit"></i> SEND ALERTS</h1>
            
          </div>
          
        </div>
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <h3 class="card-title">Enter Details</h3>
              <div class="card-body">
                <form action="OfficerSendAllerts" method="post" name="offlogin" id="offlogin" onsubmit="return officer()"/>
                
                  <div class="form-group">
                    <label class="control-label">Your ID</label>
                    <input class="form-control" name="id" id="id" value=<%=id %> type="text" placeholder="">
                  </div>
                  
                  
                   <div class="form-group">
                    <label class="control-label">Location Name</label>
                    <input class="form-control" name="location" id="location" type="text" placeholder="Enter Location">
                  </div>
              
              <div class="form-group">
                    <label class="control-label">Location Pincode</label>
                    <input class="form-control" name="pincode" id="pincode" type="text" placeholder="Enter Location Pincode">
                  </div>
              
              
                  <div class="form-group">
                    <label class="control-label">Choose Incident  Date</label>
                    <input class="form-control" name="date" id="date" type="date" placeholder="Choose Today  Date" >
                  </div>
                  
                   <div class="form-group">
                    <label class="control-label">Time</label>
                    <input class="form-control" name="time" id="time" type="time" placeholder="Choose Time" >
                  </div>
                  
                   <div class="form-group">
                    <label class="control-label">Incident Type</label>
                    <input class="form-control" name="incidenttype" id="incidenttype" type="text" placeholder="Enter Incident Type">
                  </div>
               
                   
                    <div class="form-group">
                    <label class="control-label">Description </label>
                     <textarea  class="form-control"  placeholder="Enter Your Description" name="description" required> </textarea>
                  </div>
                  
                  
                 
               
              </div>
              <div class="card-footer">
                <button class="btn btn-primary icon-btn" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>SEND Alert</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-default icon-btn" href="#"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
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