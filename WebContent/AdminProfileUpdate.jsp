<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Control System OF Daily Incidence</title>

</head>
<body>
 <%
  String email,id1;

  if(request.getParameter("na")!=null){

  	email=(String)request.getParameter("na");
  	id1=(String)request.getParameter("na");

  }else{
  email=(String)request.getAttribute("email");
  id1=(String)request.getAttribute("id");
 }
  %>

  <head>
    <meta charset="utf-8">
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- CSS-->
    <link rel="stylesheet" type="text/css" href="css/main.css">
    <!-- Font-icon css-->
    <link rel="stylesheet" type="text/css" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <title>Control System Of Daily Incidence</title>
    <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries-->
    <!--if lt IE 9
    script(src='https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js')
    script(src='https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js')
    -->
<script>
		function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}

		function officer()
		{
		var pattern=/[^a-z|^A-Z|^\s]/;

		var fname=document.offlogin.fname.value;
		var mname=document.offlogin.mname.value;
		var lname=document.offlogin.lname.value;
		var adharno=document.offlogin.adharno.value;
		var state=document.offlogin.state.value;
		var district=document.offlogin.district.value;
		var taluka=document.offlogin.taluka.value;
		var mobileno=document.offlogin.mobileno.value;
		var email=document.offlogin.email.value;
		var pincode=document.offlogin.pincode.value;

			
		if(fname=="" || fname.length>15){
			 alert("Enter first name");
			  return false;
			}
			
		else if(document.getElementById("fname").value.match(pattern))
		{
		 alert("Not allowed space, only allowed Character");
		  return false;
		}

		else if(mname=="" || mname.length>15){
			 alert("Enter middle name , only allowed Character !");
			  return false;
			}
		else if(document.getElementById("mname").value.match(pattern))
		{
		 alert("not allowed space  middle name , only allowed Character!");
		  return false;
		}



		else if(lname=="" || lname.length>15){
			 alert("Enter last name");
			  return false;
			}
		else if(document.getElementById("lname").value.match(pattern))
		{
		 alert("not allowed space, only allowed Character !");
		  return false;
		}



		else if(adharno.length<12 || adharno.length>12){
			 alert("Enter Valid Adhar Number");
			  return false;
			}
				else if(state=="" ){
			 alert("Select your state");
			  return false;
			}
		else if(district==""){
			 alert("Select your district");
			  return false;
			}
		else if(taluka==""){
			 alert("Select Your taluka");
			  return false;
			}

		else if(mobileno.length<10 || mobileno.length>10){
			 alert("Enter your Valid  mobile number ");
			  return false;
			}
			
		var atpos = email.indexOf("@");
		var dotpos = email.lastIndexOf(".");
		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length){
			 alert("Enter Valid Email address!");
			  return false;
			}
			else if(pincode.length<6 || pincode.length>7){
				 alert("Enter your Valid  mobile number ");
				  return false;
				}
			
		else{
			alert("Successfully Updated...!");
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
  
    <div class="wrapper">
      <!-- Navbar-->
      <header class="main-header hidden-print"><a class="logo" href="index.html">Police</a>
        <nav class="navbar navbar-static-top">
          <!-- Sidebar toggle button--><a class="sidebar-toggle" href="#" data-toggle="offcanvas"></a>
          <!-- Navbar Right Menu-->
          <div class="navbar-custom-menu">
            <ul class="top-nav">
             
              <!-- User Menu-->
              <li><a href="AdminLogin.jsp"><i class="fa fa-sign-out fa-fw"></i></a>
                        
              
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

            </li>
             <li class="treeview"><a href="OfficerAboutUs.jsp"><i class="fa fa-file-text"></i><span>About Us</span><i class=""></i></a>
                <li class="treeview"><a href="OfficerContactUs.jsp"><i class="fa fa-file-text"></i><span>Contact Us</span><i class=""></i></a>
              
              </ul>
           
        </section>
      </aside>
      <div class="content-wrapper">
        <div class="page-title">
          <div>
            <h1><i class="fa fa-edit"></i>Update Profile</h1>
            </div>
          
        </div>
        <%@  page  import="java.sql.*"  %>
			<%
      			String id=request.getParameter("id");
      			String fname="", mname="", lname="", adharno="",state="", district="", taluka="", mobileno="";
			    Connection con=null;
      		try
        		{
            		Class.forName("com.mysql.jdbc.Driver");
            		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");           
            		String query="select * from adminreg where id=" + id;

            		Statement stmt=con.createStatement();
            		ResultSet rs=stmt.executeQuery(query);
            		if(rs.next()) 
             		{
            			fname=rs.getString("fname");
            			mname=rs.getString("mname");
            			lname=rs.getString("lname");
            			email=rs.getString("email");
            			adharno=rs.getString("adharno");
            			
            			state=rs.getString("state");
            			district=rs.getString("district");
            			taluka=rs.getString("taluka");
            			mobileno=rs.getString("mobileno");
            			pincode=rs.getString("pincode");
            			
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
        <div class="row">
          <div class="col-md-12">
            <div class="card">
              <h3 class="card-title">Register</h3>
              <div class="card-body">
                <form action="AdminProfileEdit.jsp" method="post" name="offlogin" id="offlogin" onsubmit="return officer()"/>
                  <div class="form-group">
                    <label class="control-label">ID</label>
                   <%=id %> <input class="form-control" name="id" id="id"  value="<%=id %>"  type="hidden" >
                  </div>
                  
                  <div class="form-group">
                    <label class="control-label">First Name</label>
                    <input class="form-control" value="<%=fname %>" name="fname" id="fname" type="text">
                  </div>
                  
                  
                   <div class="form-group">
                    <label class="control-label">Middle  Name</label>
                    <input class="form-control" value="<%=mname %>" name="mname" id="mname" type="text" >
                  </div>
              
                  <div class="form-group">
                    <label class="control-label">Last Name</label>
                    <input class="form-control" value="<%=lname %>" name="lname" id="lname" type="text" >
                  </div>
                  
                   <div class="form-group">
                    <label class="control-label">adhar No</label>
                    <input class="form-control" value="<%=adharno %>" name="adharno" id="adharno" type="text" >
                  </div>
                  
                 
                   <div class="form-group">
                    <label class="control-label">State</label>
                    <input class="form-control" value="<%=state %>" name="state" id="state" type="text" >
                  </div>
               
                <div class="form-group">
                    <label class="control-label">District</label>
                    <input class="form-control" value="<%=district %>" name="district" id="district" type="text" >
                  </div>
                   <div class="form-group">
                    <label class="control-label">Taluka</label>
                    <input class="form-control" value="<%=taluka %>" name="taluka" id="taluka" type="text" >
                  </div>
                    <div class="form-group">
                    <label class="control-label">Mobile No</label>
                    <input class="form-control"  value="<%=mobileno %>" name="mobileno" id="mobileno" type="text" >
                  </div>
                   
                  <div class="form-group">
                    <label class="control-label">Email</label>
                    <input class="form-control" value="<%=email %>" name="email" id="email" type="text" >
                  </div>
               <div class="form-group">
                    <label class="control-label">Pincode</label>
                    <input class="form-control" value="<%=pincode %>" name="pincode" id="pincode" type="text" >
                  </div>
               
              </div>
              <div class="card-footer">
                <button class="btn btn-primary icon-btn" type="submit"><i class="fa fa-fw fa-lg fa-check-circle"></i>Update</button>&nbsp;&nbsp;&nbsp;<a class="btn btn-default icon-btn" href="#"><i class="fa fa-fw fa-lg fa-times-circle"></i>Cancel</a>
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