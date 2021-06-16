<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zxx">
   <head>

      <title>Contact Us | CareerWay</title>
      <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="keywords" content="Preparation Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, Sony Ericsson, Motorola web design" />
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
      <!--stylesheets-->
		<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
		<link href="css/message.css" rel='stylesheet' type='text/css' media="all">
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
 <header>
</header>
	<!-- //banner -->
	<!-- contact -->
	<section class="contact-agile contact-page">
		<div class="container">
			<div class="wthree_head_section">
				<h2 class="w3l_header">Give Us A Shout</h2>
				<p>We’re ready to guide you towards your dream career . Use the form below to drop your comments.</p>
			</div>
			<div class="contact-eql">
				<div class="contact-left">
					<h4>About Us </h4>
					<p class="para-w3-agileits"> We bring to that enthusiasm, because we like to find new and better ways of doing things. We bring a discerning eye, because we love to shape your career.</p>
					<h4>Find Us</h4>
					<address>
					<div class="add-info">
						<span class="fa fa-map-marker" aria-hidden="true"></span>
						<p>R.D.S.O., Lucknow, Uttar Pradesh, India</p>
					</div>
					<div class="add-info">
						<span class="fa fa-phone" aria-hidden="true"></span>
						<p>9198601852</p>
					</div>
					<div class="add-info">
						<span class="fa fa-envelope" aria-hidden="true"></span>
						<p><a href="mailto:CareerWayatyourservice@gmail.com">CareerWayatyourservice@gmail.com</a></p>
					</div>
					</address>
				</div>
				<div class="contact-middle">
					<h4>Write to Us</h4>
					<form action="contact.jsp" method="post">
						<div class="form-fields-agileinfo">
							<p>Name</p>
							<input type="text" name="txtName" placeholder="Your name" required="" />
						</div>
						<div class="form-fields-agileinfo">
							<p>Email</p>
							<input type="email" name="txtEmail" placeholder="Your E-mail" required="" />
						</div>
						<div class="form-fields-agileinfo">
							<p>Comments</p>
							<textarea name="txtComments" placeholder="Your Comment" required=""></textarea>
						</div>
						<input type="submit" value="Send Message">
					</form>
				</div>
			</div>
			<br><br>
			<jsp:include page="FAQ.jsp"></jsp:include>
		</div>
	</section>
	<section class="map-w3ls">          
		<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3558.7187699093356!2d80.93913061504423!3d26.88067478314141!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x399bfd804750030d%3A0x9d34a747fc084366!2sInfoseek!5e0!3m2!1sen!2sin!4v1537965041196" width="600" height="450" frameborder="0" style="border:0"  allowfullscreen></iframe>
	</section>
<!-- //contact -->
	<!-- Footer -->
	<footer>
	<jsp:include page="footer.jsp"></jsp:include>
	</footer>
	<!-- //Footer -->
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
			$ ().UItoTop({ easingType: 'easeOutQuart' });
								
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