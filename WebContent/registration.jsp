<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Registration | CareerWay</title>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">  
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="Slide Login Form template Responsive, Login form web template, Flat Pricing tables, Flat Drop downs Sign up Web Templates, Flat Web Templates, Login sign up Responsive web template, SmartPhone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />

	 <script>
        addEventListener("load", function () {
            setTimeout(hideURLbar, 0);
        }, false);

        function hideURLbar() {
            window.scrollTo(0, 1);
        }
        function check()
        {
        	var p1=document.getElementById("pwd").value;
        	var p2=document.getElementById("cpwd").value;
        	if(p1!=p2)
        	{
        		alert("Password didn't matched.");
        		document.getElementById("bt").disabled=true;
        	}
        	else
        	{
        		document.getElementById("bt").disabled=false;
        	}
        }
        function check1()
        {
        	var p=document.getElementById("phone").value;
        	if(p.length<10 || p.length>11)
        	{
        		alert("Mobile Number should contain 10.");
        		document.getElementById("bt").disabled=true;
        	}
        	else
        	{
        		document.getElementById("bt").disabled=false;
        	}
        }
        function check2()
        {
        	var p=document.getElementById("fname").value;
        	var f=event.charCode;
        	if(f>=48 && f<=57)
        	{
        		alert("First Name only contains alphabets.");
        		document.getElementById("bt").disabled=true;
        	}
        	else
        	{
        		document.getElementById("bt").disabled=false;
        	}
        }
        function check3()
        {
        	var f=event.charCode;
        	if(f>=48 && f<=57)
        	{
        		alert("Last Name only contains alphabets.");
        		document.getElementById("bt").disabled=true;
        	}
        	else
        	{
        		document.getElementById("bt").disabled=false;
        	}
        }
    </script>

	<!-- Custom Theme files -->
	<link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css1/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css1/logcss.css" rel='stylesheet' type='text/css' media="all">
	<!-- //Custom Theme files -->

	<!-- web font -->
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
	<!-- //web font -->
	<style>
		.header-main
		{
			max-width: 750px;
		}
		.header-left-bottom input[type="text"]
		{
    		outline: none;
    		font-size: 15px;
    		color: #222;
    		border: none;
		    width: 90%;
    		display: inline-block;
    		background: transparent;
    		letter-spacing: 1px;
		}
		.header-left-bottom input[type="number"]
		{
    		outline: none;
    		font-size: 15px;
    		color: #222;
    		border: none;
		    width: 90%;
    		display: inline-block;
    		background: transparent;
    		letter-spacing: 1px;
		}
		.header-left-bottom input[type="date"]
		{
    		outline: none;
    		font-size: 15px;
    		color: #222;
    		border: none;
		    width: 90%;
    		display: inline-block;
    		background: transparent;
    		letter-spacing: 1px;
		}
		.header-left-bottom select
		{
    		outline: none;
    		font-size: 15px;
    		color: #222;
    		border: none;
		    width: 90%;
    		display: inline-block;
    		background: transparent;
    		letter-spacing: 1px;
		}
	</style>
</head>
<body>


<!-- main -->
<div class="w3layouts-main"> 
	<div class="bg-layer">
		<h1>CareeerWay Registration</h1>
		<div class="header-main">
			<div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div>
			<div class="header-left-bottom">
				<form action="reg.jsp" method="post">
					<div class="icon1" style="float:left;width:42%">
						<span class="fa fa-user"></span>
						<input type="text" placeholder="First Name" required="" name="fname" id="fname" onkeypress="check2(event);"/>
					</div>
					<div class="icon1" style="float:right;width:42%">
						<span class="fa fa-lock"></span>
						<input type="text" placeholder="Last Name" required="" name="lname" id="lname" onkeypress="check3(event);"/>
					</div>
					<div class="icon1" style="float:left;width:42%">
						<span class="fa fa-user"></span>
						<input type="email" placeholder="Email Address" required="" name="email"/>
					</div>
					<div class="icon1" style="float:right;width:42%">
						<span class="fa fa-user"></span>
						<input type="number" placeholder="Mobile Number" required="" name="phone" id="phone" pattern="[0-9]{10}" title="10 didgit phone no." onblur="check1();"/>
					</div>
					<div class="icon1" style="float:left;width:42%">
						<span class="fa fa-lock"></span>
						<input type="password" placeholder="Password" required="" name="pwd" id="pwd" />
					</div>
					<div class="icon1" style="float:right;width:42%">
						<span class="fa fa-lock"></span>
						<input type="password" placeholder="Confirm Password" required="" name="cpwd" id="cpwd" onblur="check();"/>
					</div>
					<div class="icon1" style="float:left;width:42%">
						<span class="fa fa-lock"></span>
						<select name="gender">
							<option>Male</option>
							<option>Female</option>
						</select>
					</div>
					<div class="icon1" style="float:right;width:42%">
						<span class="fa fa-lock"></span>
						<input type="date" placeholder="Date Of Birth" required="" name="dob"/>
					</div>
					<div class="bottom">
						<button class="btn" style="width:50%;margin-left:25%" disabled id="bt">Register</button>
					</div>
					<div class="links">
						<p class="right" style="float:right"><a href="login1.jsp">Already Registered? Login</a></p>
						<div class="clear"></div>
					</div>
					<h6 style="text-align :center"><a href="main-page.jsp" style="color:FFFFFF">Back To Home</a></h6>
				</form>	
			</div> 
		</div>
	</div>
</div>	
<!-- //main -->

</body>
</html>