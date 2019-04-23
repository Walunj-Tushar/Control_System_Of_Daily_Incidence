<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
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
     
<link rel="stylesheet" href="assets/css/slider.css">
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
    <div class="wrapper">
      <!-- Navbar-->
      <header class="main-header hidden-print"><a class="logo" href="index.html">Police</a>
        <nav class="navbar navbar-static-top">
          <!-- Sidebar toggle button--><a class="sidebar-toggle" href="#" data-toggle="offcanvas"></a>
          <!-- Navbar Right Menu-->
          <div class="navbar-custom-menu">
            <ul class="top-nav">
              
              <!-- User Menu-->
             
                 <!--  <li><a href="index.jsp"><i class="fa fa-user fa-lg"></i>  Logout</a></li> -->
               
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
            <li class="active"><a href="index.jsp"><i class="fa fa-dashboard"></i><span>HOME</span></a></li>
           
           
            <li class="treeview"><a href="#"><i class=""></i><span></span><i class=""></i></a>
              <ul class="treeview-menu">
               
               
              </ul>
            </li>
          
              <ul class="treeview-menu">
               
 
              </ul>
            </li>
             <li class="treeview"><a href="AboutUs.jsp"><i class="fa fa-file-text"></i><span>About Us</span><i class=""></i></a>
              <li class="treeview"><a href="NEWS.jsp"><i class="fa fa-file-text"></i><span>News</span><i class=""></i></a>
                <li class="treeview"><a href="ContactUs.jsp"><i class="fa fa-file-text"></i><span>Contact Us</span><i class=""></i></a>
                  <li class="treeview"><a href="Gallary.jsp"><i class="fa fa-file-text"></i><span>Gallery</span><i class=""></i></a>
                    
             
              </ul>
           
        </section>
      </aside>
      <br>
      
      <div class="content-wrapper">
      <div class="page-title">
          <div>
            <h1><i class="fa fa-dashboard"></i>Gallery</h1>
            <p></p>
          </div>
         
        </div>
      
      
       <div class="row">
          
            <div class="card">
                        
            
          


<div class="w3-content w3-section" style="max-width:700px">
  

  <img class="mySlides w3-animate-fading" src="assets/images/mpolice.jpg" style="width:100%">
  <img class="mySlides w3-animate-fading" src="assets/images/cap1.jpg" style="width:100%">
  <img class="mySlides w3-animate-fading" src="assets/images/cap2.jpg" style="width:100%">
  <img class="mySlides w3-animate-fading" src="assets/images/policelogo.jpg" style="width:100%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}    
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 9000);    
}
</script>


            
            
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
</body>
</html>