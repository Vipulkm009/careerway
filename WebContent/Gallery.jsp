<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<script type="application/x-javascript">
		addEventListener("load", function () {
			setTimeout(hideURLbar, 0);
		}, false);

		function hideURLbar() {
			window.scrollTo(0, 1);
		}
	</script>
	<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css" media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.css" rel="stylesheet">
      <!-- //font-awesome icons -->
	  <link rel="stylesheet" href="css/chocolat.css" type="text/css" media="screen"><!-- //Gallery Css -->
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
<!--Gallery-->
	<section class="gallery">
		<div class="container">
			<div class="wthree_head_section">
				<h2 class="w3l_header">Gallery</h2>
				<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor</p>
			</div>
			<div class="row agile_gallery_grids w3-agile demo">
				<div class="col-md-4 gal-sec">
					<div class="gallery-grid1">
						<a title="Attractive home purchase offers." href="images/g1.jpg">
						<img src="images/g1.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<h4>CareerWay</h4>
							<p>Education</p>
						</div>
						</a>
					</div>
					<div class="gallery-grid1">
						<a title="Attractive home purchase offers." href="images/g2.jpg">
						<img src="images/g2.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<h4>CareerWay</h4>
							<p>Education</p>
						</div>
						</a>
					</div>
					<div class="gallery-grid1">
						<a title="Attractive home purchase offers." href="images/g3.jpg">
						<img src="images/g3.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<h4>CareerWay</h4>
							<p>Education</p>
						</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 gal-sec">
					<div class="gallery-grid1">
						<a title="Attractive home purchase offers." href="images/g4.jpg">
						<img src="images/g4.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<h4>CareerWay</h4>
							<p>Education</p>
						</div>
						</a>
					</div>
					<div class="gallery-grid1">
						<a title="Attractive home purchase offers." href="images/g5.jpg">
						<img src="images/g5.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<h4>CareerWay</h4>
							<p>Education</p>
						</div>
						</a>
					</div>
					<div class="gallery-grid1">
						<a title="Attractive home purchase offers." href="images/g6.jpg">
						<img src="images/g6.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<h4>CareerWay</h4>
							<p>Education</p>
						</div>
						</a>
					</div>
				</div>
				<div class="col-md-4 gal-sec">
					<div class="gallery-grid1">
						<a title="Attractive home purchase offers." href="images/g7.jpg">
						<img src="images/g7.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<h4>CareerWay</h4>
							<p>Education</p>
						</div>
						</a>
					</div>
					<div class="gallery-grid1">
						<a title="Attractive home purchase offers." href="images/g8.jpg">
						<img src="images/g8.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<h4>CareerWay</h4>
							<p>Education</p>
						</div>
						</a>
					</div>
					<div class="gallery-grid1">
						<a title="Attractive home purchase offers." href="images/g9.jpg">
						<img src="images/g9.jpg" alt=" " class="img-responsive" />
						<div class="p-mask">
							<h4>CareerWay</h4>
							<p>Education</p>
						</div>
						</a>
					</div>
				</div>
			</div>
		</div>
	</section>
	<!--//Gallery-->
<jsp:include page="footer.jsp"></jsp:include>
<!-- //Footer -->
     <!--js working-->
      <script src="js/jquery.min.js"></script>
      <!--//js working-->
<!--gallery -->
	<script src="js/jquery.chocolat.js"></script>
	<!--light-box-files -->
	<script type="text/javascript">
		$(function () {
			$('.gallery-grid1 a').Chocolat();
		});
	</script>
	<!-- //gallery -->

	<!-- smooth scrolling -->
	<script type="text/javascript" src="js/move-top.js"></script>
	<script type="text/javascript" src="js/easing.js"></script>
	<!-- here stars scrolling icon -->
	<script type="text/javascript">
		$(document).ready(function() {
			/*
				var defaults = {
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
    <!--js working-->
    <script src='js/jquery-2.2.3.min1.js'></script>
    <!--//js working--> 
    <!--blast colors change-->
    <script src="js/blast.min1.js"></script>
    <!--//blast colors change-->
    <!--responsiveslides banner-->
    <script src="js/responsiveslides.min1.js"></script>
    <script>
      // You can also use "$(window).load(function() {"
      $(function () {
      	// Slideshow 4
      	$("#slider4").responsiveSlides({
      		auto: true,
      		pager:false,
      		nav:true ,
      		speed: 900,
      		namespace: "callbacks",
      		before: function () {
      			$('.events').append("<li>before event fired.</li>");
      		},
      		after: function () {
      			$('.events').append("<li>after event fired.</li>");
      		}
      	});
      
      });
    </script>
    <!--// responsiveslides banner-->		  
    <!--responsive tabs-->	 
    <script src="js/easy-responsive-tabs1.js"></script>
    <script>
      $(document).ready(function () {
      $('#horizontalTab').easyResponsiveTabs({
      type: 'default', //Types: default, vertical, accordion           
      width: 'auto', //auto or any width like 600px
      fit: true,   // 100% fit in a container
      closed: 'accordion', // Start closed if in accordion view
      activate: function(event) { // Callback function if tab is switched
      var $tab = $(this);
      var $info = $('#tabInfo');
      var $name = $('span', $info);
      $name.text($tab.text());
      $info.show();
      }
      });
      });
       
    </script>
    <!--// responsive tabs-->	
    <!--About OnScroll-Number-Increase-JavaScript -->
    <script src="js/jquery.waypoints.min1.js"></script>
    <script src="js/jquery.countup1.js"></script>
    <script>
      $('.counter').countUp();
    </script>
    <!-- //OnScroll-Number-Increase-JavaScript -->	  
    <!-- start-smoth-scrolling -->
    <script src="js/move-top1.js"></script>
    <script src="js/easing1.js"></script>
    <script>
      jQuery(document).ready(function ($) {
      	$(".scroll").click(function (event) {
      		event.preventDefault();
      		$('html,body').animate({
      			scrollTop: $(this.hash).offset().top
      		}, 900);
      	});
      });
    </script>
    <!-- start-smoth-scrolling -->
    <!-- here stars scrolling icon -->
    <script>
      $(document).ready(function () {
      
      	var defaults = {
      		containerID: 'toTop', // fading element id
      		containerHoverID: 'toTopHover', // fading element hover id
      		scrollSpeed: 1200,
      		easingType: 'linear'
      	};
      
      
      	$().UItoTop({
      		easingType: 'easeOutQuart'
      	});
      
      });
    </script>
    <!-- //here ends scrolling icon -->
    <!--bootstrap working-->
    <script src="js/bootstrap.min1.js"></script>
    <!-- //bootstrap working-->
    <!--js wor king-->
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
    <!--js working-->
    <script src='js/jquery-2.2.3.min1.js'></script>
    <!--//js working--> 
    <!--blast colors change-->
    <script src="js/blast.min1.js"></script>
    <!--//blast colors change-->
    <!--responsiveslides banner-->
    <script src="js/responsiveslides.min1.js"></script>
    <script>
      // You can also use "$(window).load(function() {"
      $(function () {
      	// Slideshow 4
      	$("#slider4").responsiveSlides({
      		auto: true,
      		pager:false,
      		nav:true ,
      		speed: 900,
      		namespace: "callbacks",
      		before: function () {
      			$('.events').append("<li>before event fired.</li>");
      		},
      		after: function () {
      			$('.events').append("<li>after event fired.</li>");
      		}
      	});
      
      });
    </script>
    <!--// responsiveslides banner-->		  
    <!--responsive tabs-->	 
    <script src="js/easy-responsive-tabs1.js"></script>
    <script>
      $(document).ready(function () {
      $('#horizontalTab').easyResponsiveTabs({
      type: 'default', //Types: default, vertical, accordion           
      width: 'auto', //auto or any width like 600px
      fit: true,   // 100% fit in a container
      closed: 'accordion', // Start closed if in accordion view
      activate: function(event) { // Callback function if tab is switched
      var $tab = $(this);
      var $info = $('#tabInfo');
      var $name = $('span', $info);
      $name.text($tab.text());
      $info.show();
      }
      });
      });
       
    </script>
    <!--// responsive tabs-->	
    <!--About OnScroll-Number-Increase-JavaScript -->
    <script src="js/jquery.waypoints.min1.js"></script>
    <script src="js/jquery.countup1.js"></script>
    <script>
      $('.counter').countUp();
    </script>
    <!-- //OnScroll-Number-Increase-JavaScript -->	  
    <!-- start-smoth-scrolling -->
    <script src="js/move-top1.js"></script>
    <script src="js/easing1.js"></script>
    <script>
      jQuery(document).ready(function ($) {
      	$(".scroll").click(function (event) {
      		event.preventDefault();
      		$('html,body').animate({
      			scrollTop: $(this.hash).offset().top
      		}, 900);
      	});
      });
    </script>
    <!-- start-smoth-scrolling -->
    <!-- here stars scrolling icon -->
    <script>
      $(document).ready(function () {
      
      	var defaults = {
      		containerID: 'toTop', // fading element id
      		containerHoverID: 'toTopHover', // fading element hover id
      		scrollSpeed: 1200,
      		easingType: 'linear'
      	};
      
      
      	$().UItoTop({
      		easingType: 'easeOutQuart'
      	});
      
      });
    </script>
    <!-- //here ends scrolling icon -->
    <!--bootstrap working-->
    <script src="js/bootstrap.min1.js"></script>
    <!-- //bootstrap working-->
</body>
</html>