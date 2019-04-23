<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>CarPoolingSystem</title>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">

</head>
<link href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700" rel="stylesheet"> 
			<!--
			CSS
			============================================= -->
		
</head>
<body>



<!DOCTYPE html>
<html lang="en" ng-app>
	<head>
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
												<fieldset>
												
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
        		</div>			</div><!-- /.main-content -->
		</div><!-- /.main-container -->

		<!-- basic scripts -->

		<!--[if !IE]> -->
			</body>
</html>





</body>
</html>