<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Home | CareerWay</title>
<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<!-- // Meta Tags -->
      <!--booststrap-->
      <link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.css" rel="stylesheet">
      <!-- //font-awesome icons -->
	  <link href="css/owl.carousel.css" rel="stylesheet">
      <!--stylesheets-->
		<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
		<link href="css1/logcss.css" rel='stylesheet' type='text/css' media="all">
      <!--//stylesheets-->
     <link href="//fonts.googleapis.com/css?family=Josefin+Sans:100,100i,300,300i,400,400i,600,600i,700,700i" rel="stylesheet">
<link href="//fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">
</head>
<body>
<%
	String email=request.getParameter("email");
	if(email==null)
	{
%>
	<jsp:include page="header1.jsp"></jsp:include>
<%
	}
	else
	{
%>
	<jsp:include page="header.jsp">
		<jsp:param value="<%=email%>" name="email"/>
	</jsp:include>"
<%
	}
%>

<!-- //banner -->
			<%@page import="java.io.*" %>
			<%@page import="java.sql.*" %>
			<%@page import="javax.sql.*" %>
			<%@page import="java.sql.Connection" %>
			<%
				Class.forName("com.mysql.jdbc.Driver");
	    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
	    		Statement st = con.createStatement();
	    		String query = "SELECT * FROM category";
	    		ResultSet RS = st.executeQuery(query);
	    		int i=1;
	  		%>  	 
<section class="w3-services" style="padding-bottom:0px;">
	<div class="container">
			<div class="wthree_head_section">
				<h2 class="w3l_header">About Your Dream Career</h2>
				<p>Here are some broad categories of careers for your ease to make best career choice.</p>
			</div>
			<div class="row w3-services-grids">
				<div class="col-lg-4 w3-services-left-grid">
					<img src="images/1.jpg" class="img-fluid" alt="">
				</div>
				<div class="col-lg-8 w3-services-right-grid">
				<%
				while(i<=2)
				{
					RS.next();
				%>
				<div class="row w3-icon-grid-gap1">
					<div class="col-md-6 w3-icon-grid1">
						<i class="fas fa-book"></i>
						<div class="Supp">
							<h3><%=RS.getString(2) %></h3>
							<p><%=RS.getString(3) %></p>
						</div>
					</div>
					<%
					RS.next();
					%>
					<div class="col-md-6 w3-icon-grid1">
						<i class="fas fa-book"></i>
						<div class="Supp">
							<h3><%=RS.getString(2) %></h3>
							<p><%=RS.getString(3) %></p>
						</div>
					</div>
				</div>
				<%
					i++;
				}
				%>
			</div>
			<%
				if(email==null)
				{
			%>			
			<div class="container">
				<p align="right"><a href="CAREER_OPTIONS.jsp">View More >></a></p>
			</div>
			<%
				}
				else
				{
			%>
			<div class="container">
				<p align="right"><a href="CAREER_OPTIONS.jsp?email=<%=email%>">View More >></a></p>
			</div>
			<%
				}
			%>
		</div>
	</div>
</section>
<!-- //services -->
<!-- classes -->
	<!-- features -->
	<section class="features">
		<div class="container">
			<div class="wthree_head_section">
				<h3 class="w3l_header">Our Features</h3>
				<p>CareerWay is a platform which answers your What, Where, Why & How's of all your career related questions. </p>
			</div>
			<div class="row about-main">
				<div class="col-md-7 about-right">
					<!-- stats -->
					<div class="stats">
						<div class="row stats_inner">
						<%
						query = "SELECT * FROM career";
			    		RS = st.executeQuery(query);
			    		i=0;
			    		while(RS.next())
			    		{
			    			i++;
			    		}
						%>
							<div class="col-md-6 col-sm-6 col-xs-6 stat-grids">
								<p class="counter-agileits-w3layouts"><%=i%></p>
								<div class="stats-text-wthree">
									<h3>Career Options</h3>
								</div>
							</div>
						<%
						query = "SELECT * FROM total_courses";
			    		RS = st.executeQuery(query);
			    		i=0;
			    		while(RS.next())
			    		{
			    			i++;
			    		}
						%>
							<div class="col-md-6 col-sm-6 col-xs-6 stat-grids">
								<p class="counter-agileits-w3layouts"><%=i%></p>
								<div class="stats-text-wthree">
									<h3>Online Courses</h3>
								</div>
							</div>
						</div>
						<div class="row stats_inner">
						<%
						query = "SELECT * FROM links";
			    		RS = st.executeQuery(query);
			    		i=0;
			    		while(RS.next())
			    		{
			    			i++;
			    		}
						%>
							<div class="col-md-6 col-sm-6 col-xs-6 stat-grids">
								<p class="counter-agileits-w3layouts"><%=i%></p>
								<div class="stats-text-wthree">
									<h3>Video Tutorials</h3>
								</div>
							</div>
						<%
						query = "SELECT * FROM user";
			    		RS = st.executeQuery(query);
			    		i=0;
			    		while(RS.next())
			    		{
			    			i++;
			    		}
						%>
							<div class="col-md-6 col-sm-6 col-xs-6 stat-grids">
								<p class="counter-agileits-w3layouts"><%=i%></p>
								<div class="stats-text-wthree">
									<h3>Users</h3>
								</div>
							</div>
						</div>
					</div>
					<!-- //stats -->
				</div>
				<div class="col-md-5 about-left">
					<img src="images/g1.jpg" class="img-fluid" alt="">
				</div>
				</div>
		</div>
	</section>
	<!-- //features -->
<jsp:include page="footer.jsp"></jsp:include>
	
 <!--js working-->
      <script src="js/jquery.min.js"></script>
      <!--//js working-->
	  <!-- requried-jsfiles-for owl -->
	<script src="js/owl.carousel.js"></script>
	<script>
		$(document).ready(function () {
			$("#owl-demo2").owlCarousel({
				items: 1,
				lazyLoad: false,
				autoPlay: true,
				navigation: false,
				navigationText: false,
				pagination: true,
			});
		});
	</script>
	<!-- //requried-jsfiles-for owl -->


	  	<!-- Slider script -->
	<script src="js/responsiveslides.min.js"></script>
	<script>
		// You can also use "$(window).load(function() {"
		$(function () {
			$("#slider").responsiveSlides({
				auto: true,
				nav: true,
				manualControls: '#slider3-pager',
			});
		});
	</script>
<!-- stats -->
	<script src="js/jquery.waypoints.min.js"></script>
	<script src="js/jquery.countup.js"></script>
	<script>
		$('.counter-agileits-w3layouts').countUp();
	</script>
	<!-- //stats -->

	<!-- smooth scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {2
				containerID: 'toTop', // fading element id
				containerHoverID: 'toTopHover', // fading element hover id
				scrollSpeed: 1200,
				easingType: 'linear' 
				};
			*/
								
			$().UItoTop({ easingType: 'easeOutQuart' });
								
			});
	</script>
	<!-- //here ends scrolling icon -->
<!-- //smooth scrolling -->
<!-- scrolling script -->
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event){		
			event.preventDefault();
			$('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
		});
	});
</script> 
<!-- //scrolling script -->

<!--bootstrap working-->
    <script src="js/bootstrap.min.js"></script>
 <!-- //bootstrap working-->
</body>
</html>
