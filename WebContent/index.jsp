<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Control System OF Daily Incidence</title>
</head>
<body>







<!DOCTYPE html>
<html lang="en" ng-app>
  <head>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title> Control System of Daily Incidence</title>
    
    <script>
	function complaint()
	{
	var pattern=/[^a-z|^A-Z|^\s]/;

	var name=document.people.name.value;
	var email=document.people.email.value;
	var atpos = email.indexOf("@");
	var dotpos = email.lastIndexOf(".");
	
	var mobno=document.people.mobno.value;
	var incidenceaddr=document.people.incidenceaddr.value;
	var pincode=document.people.pincode.value;
	var date=document.people.date.value;
	var time=document.people.time.value;
	var incidencedetails=document.people.incidencedetails.value;
	
	if(name=="" || name.length>15){
		 alert("Enter Your name");
		  return false;
		}
		
	else if(document.getElementById("name").value.match(pattern))
	{
	 alert("Not allowed space, only allowed Character");
	  return false;
	}
	else if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
	{
		 alert("Enter Valid Email address");
		  return false;
	}
	

	else if(mobno.length<10 || mobno.length>10){
		 alert("Enter your Valid  mobile number ");
		  return false;
		}
	else if(incidenceaddr=="" || incidenceaddr.length>30){
		 alert("Enter Incidence Address");
		  return false;
		}
	else if(pincode.length<6 || pincode.length>7){
		 alert("Enter Valid Address Pincode");
		  return false;
		}
	else if(date=""){
		 alert("Enter Date ");
		  return false;
		}
	else if(time=""){
		 alert("Enter Incidence Time ");
		  return false;
		}
	else if(incidencedetails=="" || incidencedetails.length>50){
		 alert("Enter Incidence Details");
		  return false;
		}
		
	else if(document.getElementById("incidencedetails").value.match(pattern))
	{
	 alert("Only allowed Character");
	  return false;
	}
	else{
		alert("Send Complaint successfully...!");
	}
	return true;
	}
		
		
		</script>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
		
		
		
		
</script>
    
  </head>
  <body class="sidebar-mini fixed">
    <div class="wrapper">
      <!-- Navbar-->
      <header class="main-header hidden-print"><a class="logo" href="index.html">Police</a>
        <nav class="navbar navbar-static-top">
          <!-- Sidebar toggle button--><a class="sidebar-toggle" href="#" data-toggle="offcanvas"></a>
          <!-- Navbar Right Menu-->
          <div class="navbar-custom-menu">
            <ul class="top-nav">
              <!-- User Menu-->
                
                
               
                </ul>
              </li>
            </ul>
          </div>
        </nav>
      </header>
      <!-- Side-Nav-->
      < <aside class="main-sidebar hidden-print">
        <section class="sidebar">
          <div class="user-panel">
           <div class="pull-left image"><img class="img-circle" src="images/satyamev.jpg" alt="User Image"></div> -->
            
          </div>
          <!-- Sidebar Menu-->
          <ul class="sidebar-menu">
            <li class="active"><a href="index.jsp"><i class="fa fa-dashboard"></i><span>Dashboard</span></a></li>
          
           
           
              <ul class="treeview-menu">
                <li><a href="form-components.html"><i class="fa fa-circle-o"></i> Form Components</a></li>
                <li><a href="form-custom.html"><i class="fa fa-circle-o"></i> Custom Components</a></li>
                <li><a href="form-samples.html"><i class="fa fa-circle-o"></i> Form Samples</a></li>
                <li><a href="form-notifications.html"><i class="fa fa-circle-o"></i> Form Notifications</a></li>
              </ul>
            </li>
            </li>
            <li class="treeview"><a href="AdminLogin.jsp"><i class="fa fa-user fa-lg"></i><span>Admin Login</span><i class=""></i></a>
            <li class="treeview"><a href="OfficerLogin.jsp"><i class="fa fa-user fa-lg"></i><span>Officer Login</span><i class=""></i></a>
            <li class="treeview"><a href="AboutUs.jsp"><i class="fa fa-file-text"></i><span>About Us</span><i class=""></i></a>
                <li class="treeview"><a href="ContactUs.jsp"><i class="fa fa-file-text"></i><span>Contact Us</span><i class=""></i></a>
                
              </ul>
           
        </section>
      </aside>
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      
      <div class="content-wrapper">
        <div class="page-title">
          <div>
            <h1><i class="fa fa-dashboard"></i> Control System Of Daily Incidence</h1>
            <p></p>
          </div>
          <div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-6">
            <div class="card">
                         <h3 class="card-title">Maharashtra Police</h3>
             <p> Maharashtra Police is the law enforcement agency responsible for the Indian state of Maharashtra.</p>
             <p> It is headed by Director General of Police and headquartered in Mumbai, Maharashtra.</p>

				<p>It has one of the largest police departments in the country, having about 35 district police units in the state.</p>
				<p> The Maharashtra Police Department has a strength of nearly 1.95 lakh.</p>
				<p> It also has 1.5 lakh women in its force.</p>
             </div>
             
             <div class="card">
                       <h3 class="card-title">Special Units</h3>
             <p> Following are the special units of the Maharashtra Police:</p>

				<p>State Intelligence Department (SID): It came into existence in 1905 as Criminal Investigation Department (Intelligence Wing) and was renamed to its current name in 1981. It is headed by Commissioner of Intelligence.</p>
				<p>Maharashtra State CID: This Crime Branch was established in 1905 and is headquartered in Pune. It is headed by the Additional Director General Police.</p>
				<p>Anti-Terrorism Squad (ATS): This unit was created by the Government of Maharashtra in 2004 for countering terrorism. It works in coordination with Central Agencies such as Intelligence Bureau and RAW.</p>
				<p>Highway Traffic Police: This branch was created in 1993.</p>
				<p>State Reserve Police Force (SRPF): The SRPF was raised on 6 March 1948 as a Special Armed Police Force of the State of Maharashtra.</p>
				<p>Training Directorate</p>
				<p>Protection of Civil Rights Cell</p>
				<p>Motor Transport Unit: This was established in 1948 to cater to the needs of mobility of Maharashtra Police.</p>
				<p>State Police Wireless: Established before 1947</p>
				<p>Anti-Corruption Bureau: The ACB was constituted in 1957 with a view to eradicate the bribery and corruption in the state.</p>
				<p>Force One: Force One is an elite commando force, which is a specialised counter terrorism unit to guard the Mumbai metropolitan area, one of the largest metropolitan areas in the world.</p>
				<p>QRT : Quick Response Team</p>
				</div>
             
             
          </div>

          <div class="col-md-6">
          
            <div class="card">
              <h3 class="card-title">Write Your Complaints Here...</h3>
              <div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
										<div class="space-6"></div>
												<form  action="PeopleSendComplaint" method="post" name="people" id="people" onsubmit="return complaint()"/>
												<fieldset>
												
												
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="name" id="name" class="form-control"  placeholder="Enter Your Name" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="email" id="email" class="form-control"  placeholder="Enter Your Email" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="mobno" id="mobno" class="form-control"  placeholder="Enter Your Mobile Number" />
															<span class="ace-icon fa fa-phone"></span>
														</span>
													</label>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="incidenceaddr" id="incidenceaddr" class="form-control"  placeholder="Enter Incidence Address" />
															<i class="ace-icon fa fa-home"></i>
														</span>
													</label>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="pincode" id="pincode" placeholder="Enter Address pincode" />
															<i class="ace-icon fa fa-pincode"></i>
														</span>
													</label>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="date" class="form-control" name="date" id="date" placeholder="Enter Incidence Date" />
															<i class="ace-icon fa fa-time"></i>
														</span>
													</label>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="time" class="form-control" name="time" id="time" placeholder="Enter Incidence Time"  />
															<i class="ace-icon fa fa-clock"></i>
														</span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="incidencedetails" id="incidencedetails" class="form-control"  placeholder="Enter Incidence Details" />
															
														</span>
													</label>
													

													<div class="space"></div>

													<div class="clearfix">
														

													<button type="submit" class="width-35 pull-left btn btn-sm btn-primary">
															<i class="ace-icon fa fa-"></i>
															<span class="bigger-110">Send</span>
														</button>
													</div>
												</fieldset>
											</form>
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
  </body>
</html>