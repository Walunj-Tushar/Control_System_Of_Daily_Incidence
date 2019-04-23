<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Control System</title>
</head>
<body>



<!DOCTYPE html>
<html lang="en" ng-app>
	<head>
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
		<meta charset="utf-8" />
		<title>Control System Of Daily Incidence</title>

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
		<script>
		function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
		function officerlogin1()
		{
			var email=document.offlog.email.value;
			var password=document.offlog.password.value;
			var atpos = email.indexOf("@");
			var dotpos = email.lastIndexOf(".");
			if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length)
			{
				 alert("Enter Valid Email address");
				  return false;
			}
			else if(password.length<10 || password.length>10)
			{
				 alert("Enter your Valid  password  ");
				  return false;
				}

			else
			{
				alert("Login successfully...!");
			}
			return true;
			


		}
		function officer()
		{
		var pattern=/[^a-z|^A-Z|^\s]/;

		var lname=document.offlogin.fname.value;
		var mname=document.offlogin.mname.value;
		var lname=document.offlogin.lname.value;
		var adharno=document.offlogin.adharno.value;
		var dob=document.offlogin.dob.value;
		var gender=document.offlogin.gender.value;
		var doj=document.offlogin.doj.value;
		var state=document.offlogin.state.value;
		var district=document.offlogin.district.value;
		var taluka=document.offlogin.taluka.value;
		var mno=document.offlogin.mno.value;
		var email=document.offlogin.email.value;
		var password=document.offlogin.password.value;

			
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
		else if(dob=""){
			 alert("Enter your Date Of Birth ");
			  return false;
			}

			
		else if(gender=="" || gender.length>6){
			 alert("Select gender ");
			  return false;
			}
		else if(doj="" || doj.length>10){
			 alert("Enter your Date Of Birth ");
			  return false;
			}

		else if(document.getElementById("gender").value.match(pattern))
		{
		 alert("not allowed space, only allowed Character !");
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

		else if(mno.length<10 || mno.length>10){
			 alert("Enter your Valid  mobile number ");
			  return false;
			}
			
		var atpos = email.indexOf("@");
		var dotpos = email.lastIndexOf(".");
		if (atpos<1 || dotpos<atpos+2 || dotpos+2>=email.length){
			 alert("Enter Valid Email address!");
			  return false;
			}
		else if(password.length<10 || password.length>10){
			 alert("Enter your Valid  password  ");
			  return false;
			}

		else{
			alert("Registration successfully...!");
		}
		return true;
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
                            'Ahmadnagar': ['Sangamner', 'Rahata', 'Shrirampur'],
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
											<form action="OfficerReg" method="post" name="offlogin" id="offlogin" onsubmit="return officer()"/>
												<fieldset>
												<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="fname" id="fname" class="form-control" placeholder="First Name" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="mname" id="mname" class="form-control" placeholder="Middle Name" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="lname" id="lname" class="form-control" placeholder="Last Name" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="adharno" id="adharno" class="form-control" placeholder="Adhar Number" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>
													
													<div class="form-group">
                    <label class="control-label">Date Of Birth</label>
                    <input class="form-control" name="dob" id="dob" type="date" placeholder="Date Of Birth">
                  </div>
													
													<label class="block clearfix">
			<span class="block input-icon input-icon-right">
            		Gender: 
                	<select id="gender" style="width: 290px" name="gender" >
                    <option value='male'>Male</option>
                    <option value='female'>Female</option>
                	</select>
					</span>
					</label>
							<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="post" id="post" class="form-control" placeholder="Enter Post" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>		
													 <label class="control-label">Date Of Joining</label>
                    <input class="form-control" name="doj" id="doj" type="date" placeholder="Date Of Joining">
                  </div>				
				<div ng-controller="CountryCntrl" >
    		    <div>
    		    <label class="block clearfix">
			<span class="block input-icon input-icon-right">
            		State: 
                	<select id="state" style="width: 290px" name="state" ng-model="states" ng-options="country for (country, states) in countries" name="branch">
                    <option value=''>Select</option>
                	</select>
					</span>
					</label>
              <label class="block clearfix">
			<span class="block input-icon input-icon-right">
                	District: <select id="district" name="district"  style="width: 290px" ng-disabled="!states" ng-model="cities" ng-options="state for (state,city) in states"><option value=''>Select</option></select><br>
          
					</span>
					</label>
					  <label class="block clearfix">
			<span class="block input-icon input-icon-right">
                	Taluka: <select id="taluka" name="taluka" style="width: 290px" ng-disabled="!cities || !states" ng-model="city"><option value=''>Select</option> <option ng-repeat="city in cities" value='{{city}}'>{{city}}</option></select> <br>       
            
					</span>
					</label>
            	</div>
        		</div>
										
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="mno" id="mno" class="form-control" placeholder="Mobile Number" />
															<i class="ace-icon fa fa-user"></i>
														</span>
													</label>			
													
													
												
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="email" name="email" id="email" class="form-control" placeholder="Email" />
															<i class="ace-icon fa fa-envelope"></i>
														</span>
													</label>

													

													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="password" name="password" id="password" class="form-control" placeholder="Password" />
															<i class="ace-icon fa fa-lock"></i>
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