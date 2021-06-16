<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Login | CareerWay</title>

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
    </script>
	<style>
		.msg
		{
			margin: 0;
    		padding: 0;
    		border: 0;
    		font-size: 100%;
    		font: inherit;
    		vertical-align: baseline;
			text-decoration: none;
			color: #585858;
    		margin: 0em;
    		font-size: 11px;
    		color: #e2e2e2;
    		text-transform: uppercase;
		}
	</style>
	<!-- Custom Theme files -->
	<link href="css1/style.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css1/font-awesome.min.css" rel="stylesheet" type="text/css" media="all" />
	<link href="css1/logcss.css" rel='stylesheet' type='text/css' media="all">
	<!-- //Custom Theme files -->

	<!-- web font -->
	<link href="//fonts.googleapis.com/css?family=Hind:300,400,500,600,700" rel="stylesheet">
	<!-- //web font -->

</head>
<body>

<%
	String email=request.getParameter("email");
	if(email==null)
	{
		email="";
	}
%>

<!-- main -->
<div class="w3layouts-main"> 
	<div class="bg-layer">
		<h1>CareerWay Login</h1>
		<div class="header-main">
			<div class="main-icon">
				<span class="fa fa-eercast"></span>
			</div>
			<div class="header-left-bottom">
				<form action="log.jsp" method="post">
					<div class="icon1">
						<span class="fa fa-user"></span>
						<input type="email" placeholder="Email Address" required="" name="email"/>
					</div>
					<div class="icon1">
						<span class="fa fa-lock"></span>
						<input type="password" placeholder="Password" required="" name="pwd"/>
					</div>
					<div class="bottom">
						<button class="btn">Log In</button>
					</div>
					<div class="links">
						<p><a href="#">Forgot Password?</a></p>
						<p class="right"><a href="registration.jsp">New User? Register</a></p>
						<div class="clear"></div>
					</div>
					<h6 style="text-align :center;color :FFFFFF"><a href="main-page.jsp" style="color:FFFFFF">Back To Home</a></h6>
				</form>	
			</div> 
		</div>
	</div>
</div>	
<!-- //main -->

</body>
</html>