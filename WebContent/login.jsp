<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>E</title>
</head>
<body>



<!DOCTYPE html>
<html lang="en" ng-app>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>E - HealtCare</title>

		<meta name="description" content="User login page" />
		<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0" />

		<!-- bootstrap & fontawesome -->
		<link rel="stylesheet" href="assets/css/bootstrap.min.css" />
		<link rel="stylesheet" href="assets/font-awesome/4.5.0/css/font-awesome.min.css" />

		<!-- text fonts -->
		<link rel="stylesheet" href="assets/css/fonts.googleapis.com.css" />

		<!-- ace styles -->
		<link rel="stylesheet" href="assets/css/ace.min.css" />

		<!--[if lte IE 9]>
			<link rel="stylesheet" href="assets/css/ace-part2.min.css" />
		<![endif]-->
		<link rel="stylesheet" href="assets/css/ace-rtl.min.css" />

		<!--[if lte IE 9]>
		  <link rel="stylesheet" href="assets/css/ace-ie.min.css" />
		<![endif]-->

		<!-- HTML5shiv and Respond.js for IE8 to support HTML5 elements and media queries -->

		<!--[if lte IE 8]>
		<script src="assets/js/html5shiv.min.js"></script>
		<script src="assets/js/respond.min.js"></script>
		<![endif]-->
		function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
		<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/angularjs/1.0.7/angular.min.js"></script>
 
<script>
              function CountryCntrl($scope) {
                $scope.countries = {
                		'Maharashtra': {
                            'Pune': ['Haveli', 'Lonikand', 'lonawla', 'shivaji nagar'],
                            'Mumbai': ['kalyan', 'dobwali', 'new mumbai'],
                    		'Nagpur': ['Gondia', 'chadrpur', 'Bardi'],
                            'Aurangabad': ['Bhum', 'Bhingoli', 'barahali'],
                            'Nanded': ['Mukhed', 'Naygao', 'Kandhar','Degloor','Mudkhed','Kinvat'],
                            'Ahmadnagar': ['Parner', 'Nighoj', 'Gospuri'],
                    		'Satara': ['buldhana', 'Wadzire', 'chandan nagar'],
                            'Sangli': ['viman nagar', 'hadpsar', 'baramti'],
                    'Beed': ['Swarget', 'katraj', 'nashik'],
                            'Sangli': ['jamner', 'jalgao', 'kokan'],
                    'Osmanabad': ['bihar', 'sihgad', 'rampur'],
                            'Thane': ['dhule', 'sutarwadi', 'baner'],
                    'Akola': ['hijewdi', 'naraynpur', 'khargpur']
                            
                        },
                        'Gujrat': {
                        	'Kutch': ['Abadasa', 'Bhuj', 'Mandavi', 'Rapar' ,'Gandhidham'],
                            'Banaskantha': ['Bhabhar', 'Dantiwada',' Palanpur'],
                            'Mehsana': ['Himmatnagar', 'Dhansura']
                           
                   
                        },
                        'Punjab': {
                            'mahir': ['abida', 'chandinagar', 'turu', 'pathi'],
                            'garshat': ['javlgv', 'nav', 'hati'],
                    		'savedi': ['gavak', 'chandinagar', 'rajguru']
               
                    }
                };
            }
    </script>
	</head>

	<body class="login-layout">
		<div class="main-container">
			<div class="main-content">
				<div class="row">
					<div class="col-sm-10 col-sm-offset-1">
						<div class="login-container">
							<div class="center">
								<h1>
									<i class="ace-icon fa fa-leaf green"></i>
									<span class="red">E - </span>
									<span class="white" id="id-text2">HealthCare</span>
								</h1>
								
							</div>

							<div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												<i class="ace-icon fa fa-coffee green"></i>
												Please Enter Your Information
											</h4>

											<div class="space-6"></div>

											<form action="OfficerLogin" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="email" class="form-control" placeholder="Username" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" name="password" class="form-control" placeholder="Password" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> Remember Me</span>
														</label>

													<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110">Login</span>
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>
											
											
											
											
											
											
											
											
											
											

											<div class="social-or-login center">
												<span class="bigger-110"> Login Using</span>
											</div>

											<div class="space-6"></div>

											<div class="social-login center">
											<a href="#">
										<i class="ace-icon fa fa-user"></i>
											
										<a href="UserLogin.jsp"> User Login	</a><a>
                                           &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                                           <a href="#">
										<i class="ace-icon fa fa-user"></i>
												
										<a href="OfficerLogin.jsp"> Officer Login	</a></a>
                                         &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
										<a href="#">
										<i class="ace-icon fa fa-user"></i>
										<a href="PeopleLogin.jsp"> Pepole Login	</a></a>
											</div>
										</div>
										
										
										
										
										
										
										<!-- /.widget-main -->

										<div class="toolbar clearfix">
											<div>
												<a href="#" data-target="#forgot-box" class="forgot-password-link">
													<i class="ace-icon fa fa-arrow-left"></i>
													I forgot my password
												</a>
											</div>

											<div>
												<a href="#" data-target="#signup-box" class="user-signup-link">
													I want to register
													<i class="ace-icon fa fa-arrow-right"></i>
												</a>
											</div>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.login-box -->

								<div id="forgot-box" class="forgot-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header red lighter bigger">
												<i class="ace-icon fa fa-key"></i>
												Retrieve Password
											</h4>

											<div class="space-6"></div>
											<p>
												Enter your email and to receive instructions
											</p>




											<form action="DoctorLogin" method="post">
												<fieldset>
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" class="form-control" name="email" placeholder="Username" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" class="form-control" name="password" placeholder="Password" />
															<i class="ace-icon fa fa-lock"></i>
														</span>
													</label>

													<div class="space"></div>

													<div class="clearfix">
														<label class="inline">
															<input type="checkbox" class="ace" />
															<span class="lbl"> Remember Me</span>
														</label>

													<button type="submit" class="width-35 pull-right btn btn-sm btn-primary">
															<i class="ace-icon fa fa-key"></i>
															<span class="bigger-110">Login</span>
														</button>
													</div>

													<div class="space-4"></div>
												</fieldset>
											</form>
											
											
											
											
										</div><!-- /.widget-main -->

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												Back to login
												<i class="ace-icon fa fa-arrow-right"></i>
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.forgot-box -->

								<div id="signup-box" class="signup-box widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header green lighter bigger">
												<i class="ace-icon fa fa-users blue"></i>
												New Doctor Registration
											</h4>

											<div class="space-6"></div>
											<p> Enter your details to begin: </p>

											<form action="OfficerReg" method="post">
												<fieldset>
												
												
												
												
												
												<%@  page  import="java.sql.*"  %>
	<%
   		Connection con=null;
      	try
      		{
           		Class.forName("com.mysql.jdbc.Driver");
           		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/controlsystem", "root", "9096605223");           
           		Statement stmt=con.createStatement();
           		ResultSet rs=stmt.executeQuery("select id from officerreg");
				int id=0;
           		if(rs.last())
           		{
           			id=rs.getInt("id")+1;
           		
        %>   		
   
    Officer ID :-<br><br>
    <%=id %><input type="hidden" name="id" value="<%=id %>"><br><br>
    
    <%
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
	 
	 
	 
	 
	 
												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="fname" class="form-control" placeholder="First Name" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="mname" class="form-control" placeholder="Middle Name" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="lname" class="form-control" placeholder="Last Name" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="adharno" class="form-control" placeholder="Adhar Number" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
				<div ng-controller="CountryCntrl" >
    		    <div>
    		    <label class="block clearfix">
			<span class="block input-icon input-icon-right">
            		State: 
                	<select id="branch" style="width: 290px" name="state" ng-model="states" ng-options="country for (country, states) in countries" name="branch">
                    <option value=''>Select</option>
                	</select>
					</span>
					</label>
              <label class="block clearfix">
			<span class="block input-icon input-icon-right">
                	District: <select id="year" name="district"  style="width: 290px" name="year" ng-disabled="!states" ng-model="cities" ng-options="state for (state,city) in states"><option value=''>Select</option></select><br>
          
					</span>
					</label>
					  <label class="block clearfix">
			<span class="block input-icon input-icon-right">
                	Taluka: <select id="subject" name="taluka" style="width: 290px" name="subject" ng-disabled="!cities || !states" ng-model="city"><option value=''>Select</option> <option ng-repeat="city in cities" value='{{city}}'>{{city}}</option></select> <br>       
            
					</span>
					</label>
            	</div>
        		</div>
										
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="mno" class="form-control" placeholder="Mobile Number" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>			
													
													
												
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" name="email" class="form-control" placeholder="Email" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

													


													

													<label class="block">
														<input type="checkbox" class="ace" />
														<span class="lbl">
															I accept the
															<a href="#">User Agreement</a>
														</span>
													</label>

													<div class="space-24"></div>

													<div class="clearfix">
														<button type="reset" class="width-30 pull-left btn btn-sm">
															<i class="ace-icon fa fa-refresh"></i>
															<span class="bigger-110">Reset</span>
														</button>

														<button type="submit" class="width-65 pull-right btn btn-sm btn-success">
															<span class="bigger-110">Register</span><a>

															<i class="ace-icon fa fa-arrow-right icon-on-right"></i>
														</button>
													</div>
												</fieldset>
											</form>
										</div>

										<div class="toolbar center">
											<a href="#" data-target="#login-box" class="back-to-login-link">
												<i class="ace-icon fa fa-arrow-left"></i>
												Back to login
											</a>
										</div>
									</div><!-- /.widget-body -->
								</div><!-- /.signup-box -->
							</div><!-- /.position-relative -->

							<div class="navbar-fixed-top align-right">
								<br />
								&nbsp;
								<a id="btn-login-dark" href="#">Dark</a>
								&nbsp;
								<span class="blue">/</span>
								&nbsp;
								<a id="btn-login-blur" href="#">Blur</a>
								&nbsp;
								<span class="blue">/</span>
								&nbsp;
								<a id="btn-login-light" href="#">Light</a>
								&nbsp; &nbsp; &nbsp;
							</div>
						</div>
					</div><!-- /.col -->
				</div><!-- /.row -->
			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
		<script src="assets/js/jquery-2.1.4.min.js"></script>

		<!-- <![endif]-->

		<!--[if IE]>
<script src="assets/js/jquery-1.11.3.min.js"></script>
<![endif]-->
		<script type="text/javascript">
			if('ontouchstart' in document.documentElement) document.write("<script src='assets/js/jquery.mobile.custom.min.js'>"+"<"+"/script>");
		</script>

		<!-- inline scripts related to this page -->
		<script type="text/javascript">
			jQuery(function($) {
			 $(document).on('click', '.toolbar a[data-target]', function(e) {
				e.preventDefault();
				var target = $(this).data('target');
				$('.widget-box.visible').removeClass('visible');//hide others
				$(target).addClass('visible');//show target
			 });
			});
			
			
			
			//you don't need this, just used for changing background
			jQuery(function($) {
			 $('#btn-login-dark').on('click', function(e) {
				$('body').attr('class', 'login-layout');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-light').on('click', function(e) {
				$('body').attr('class', 'login-layout light-login');
				$('#id-text2').attr('class', 'grey');
				$('#id-company-text').attr('class', 'blue');
				
				e.preventDefault();
			 });
			 $('#btn-login-blur').on('click', function(e) {
				$('body').attr('class', 'login-layout blur-login');
				$('#id-text2').attr('class', 'white');
				$('#id-company-text').attr('class', 'light-blue');
				
				e.preventDefault();
			 });
			 
			});
		</script>
	</body>
</html>





</body>
</html>