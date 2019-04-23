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

		var fname=document.offlogin.fname.value;
		var mname=document.offlogin.mname.value;
		var lname=document.offlogin.lname.value;
		var dob=document.offlogin.dob.value;
		var adharno=document.offlogin.adharno.value;
		var gender=document.offlogin.gender.value;
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



		else if(dob=""){
			 alert("Enter your Date Of Birth ");
			  return false;
			}
		else if(adharno.length<12 || adharno.length>12){
			 alert("Enter Valid Adhar Number");
			  return false;
			}
		
			
		else if(gender=="" || gender.length>6){
			 alert("Select gender ");
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
			 alert("Enter your Valid  pincode  ");
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
                  			 'Ahmadnagar': ['Akole','Jamkhed','Karjat','Kopargao','Nagar','Nevasa','Parner','Pathardi','Rahata','Rahuri','Sangamner', 'Shevgaon','Shrigonda', 'Shrirampur'],
                  			 'Akola': ['Akot', 'Akola', 'Balapur','Barshitakli','Murtijapur','Patur','Telhara'],
                              'Aurangabad': ['Aurangabad', 'Sillod', 'Gangapur', 'Paithan','Kannad','Vaijapur','Phulambri','Khuldabad','Soegaon'],
                              'Amravati': ['Achalpur', 'Amravati', 'Achalpur','Bhatkuli','Chandur Railway','Chandurbazar','Chikhaldara','Daryapur','Dhamangaon Railway','Dharni','Morshi','Nandgaon-Khandeshwar','Teosa','Warud'],
                      		'Pune': ['Pune City', '	Haveli', 'Khed','Baramati','Junnar','Shirur','	Indapur','Daund','Mawal','	Ambegaon','Purandhar','	Bhor','Mulshi','Velhe'],
                             
                              'Beed': ['Beed', '	Georai', 'Parli','Ambejogai','Manjlegaon','Kaij','	Ashti','Shirur (Kasar)','Patoda','Dharur','Wadwani'],
                             
                      		'Satara': ['Karad', 'Satara', 'Phaltan','Patan','Khatav','Koregaon','Man','Wai','Khandala','Jaoli','Mahabaleshwar'],
                              'Kolhapur': [' Karvir', '	Hatkanangle', 'Shirol','Kagal','Panhala','	Gadhinglaj','	Radhanagari','Chandgad','Shahuwadi','Bhudargad','Ajra','Bavda'],
                     			 'Nashik': ['	Nashik', 'Malegaon', '	Niphad','Baglan','Sinnar','	Dindori','Nandgaon','Yevla','Igatpuri','Chandvad','Kalwan','Surgana','Trimbakeshwar','Deola','	Peint'],
                              'Sangli': ['	Miraj', '	Walwa', 'Jat','Tasgaon','	Khanapur (Vita)','	Palus','	Shirala','	Shirala','Kavathemahankal','Kadegaon','Atpadi'],
                         },
                        
                        
                        'Kerala':
                    	{
                    		'Alappuzha':['Ambalapuzha','Chengannur','Cherthala','Karthikappally(Haripad)','Kuttanad(Mankombu)','Mavelikkara'],
                    		'Emakulam':['Aluva','Kanyannur','Kochi','Kothamanglam','Kunnathunad','Muvattupuzha','North Paravur'],
                    		'Idukki':['Devikulam','peermade','Udumbanchola','Idukki','Thodupuzha'],
                    		'Kannur':['Thalassery','irritty','Kannur','Thalipparamba'],
                    		'Kasargod':['Manjeshwaram','Kasargod','vellarkundu','Hosdurg'],
                    		'Kollam':['Kollam','Karunagappally','Kunnathur','Kottarakkara','Punalur','Pathanpuram'],
                    		'Kottayam':['Changanasserry','Kanjirappally','Kottayam','Vaikom','Meenachil'],
                    		'Kozhikode':['Kozhikode','Thamarassery','Koyilandy','Vatakara'],
                    		'Maalppuram':['Nilambur','Manjeri','Kondotty','Perinthalmanna','Ponnani','Tirur','Tirurangadi'],
                    		'Palakkad':['Alathur','Chittur','Palakad','Pattanbi','Ottappalam','Manarkkad'],
                    		'Pathanamthitta':['Adoor','konni','Kozhencherry','Ranni','Mallappally','Thiruvalla'],
                    		'Thiruvanthapuram':['Neyyattinkara','Kattakada','Nedumangad','Thiruvananthapuram','Chirayinkeezhu','Varkala'],
                    		'Thrissur':['Kodungallur','Mukundapuram','Chalakudy','chavakkad','Thalapally','Thrissur'],
                    		'Wayanad':['Mananthavady','Sultan Battary','Vythiri']
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
                
                  <li><a href="AdminLogin.jsp"><i class="fa fa-arrow-left fa-lg"></i></a></li>
               
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
            <li class="active"><a href="index.jsp"><i class="fa fa-dashboard"></i><span>Dashboard</span></a></li>
          
           
           
             
              <ul class="treeview-menu">
               
               
              </ul>
            </li>
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
              <h3 class="card-title">New Registration Form For Admin</h3>
                   <div class="space-6"></div>

							<div class="position-relative">
								<div id="login-box" class="login-box visible widget-box no-border">
									<div class="widget-body">
										<div class="widget-main">
											<h4 class="header blue lighter bigger">
												
											Enter Your Details
											</h4>
											<form action="AdminRegistration" method="post" name="offlogin" id="offlogin" onsubmit="return officer()"/>
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
													
													
													<div class="form-group">
                    <label class="control-label">Date Of Birth</label>
                    <input class="form-control" name="dob" id="dob" type="date" placeholder="Date Of Birth">
                  </div>
                  <label class="block clearfix">
				  <span class="block input-icon input-icon-right">
					<input type="text" name="adharno" id="adharno" class="form-control" placeholder="Adhar Number" />
					<i class="ace-icon fa fa-user"></i>
					</span>
					</label>
													
                  
                  <label class="block clearfix">
						<span class="block input-icon input-icon-left">Gender :
					<input type="radio" name="gender" id="gender" value="male" class="" placeholder="" />	Male
					<input type="radio" name="gender" id="gender" value="female" class="" placeholder="" />	Female
					<i class="ace-icon fa "></i>
					</span>
				</label>
													
                  
  			<div ng-controller="CountryCntrl" >
    		    <div>
    		    <label class="block clearfix">
			<span class="block input-icon input-icon-right">
            		 
                	<select id="state" class="form-control" name="state" ng-model="states" ng-options="country for (country, states) in countries" >
                    <option value=''>Select State</option>
                	</select>
					</span>
					</label>
              <label class="block clearfix">
			<span class="block input-icon input-icon-right">
               <select id="district" name="district"  class="form-control" ng-disabled="!states" ng-model="cities" ng-options="state for (state,city) in states"><option value=''>Select District</option></select>
          
					</span>
					</label>
					  <label class="block clearfix">
			<span class="block input-icon input-icon-right">
                	<select id="taluka" name="taluka" class="form-control" ng-disabled="!cities || !states" ng-model="city"><option value=''>Select Taluka</option> 
                	<option ng-repeat="city in cities" value='{{city}}'>{{city}}</option></select>        
            
					</span>
					</label>
            	</div>
        		</div>
										
													<label class="block clearfix">
														<span class="block input-icon input-icon-right">
															<input type="text" name="mobileno" id="mobileno" class="form-control" placeholder="Mobile Number" />
															<i class="ace-icon fa fa-phone fa-lg "></i>
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
															<input type="text" name="pincode" id="pincode" class="form-control" placeholder="Enter Your Area Pincode" />
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