<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Career Options | CareerWay</title>
<style type="text/css">
#myDiv:hover {
              cursor:pointer;
              background-color: cyan;
              text-color: black;
}
.l {
    position: relative;
    /* display: block; */
    padding: .75rem 1.25rem;
    margin-bottom: -1px;
    margin-left: 13px;
    background-color: #fff;
    border: 1px none rgba(0,0,0,.125);
}
.l {
    font-weight: 300;
    font-size: 14px;
    list-style-type: circle;
}
.lh {
	list-style-type: disc;
	margin: 10px;
	margin-left: 20px;
}
.but {
    margin: 0;
    font-family: inherit;
    font-size: inherit;
    line-height: inherit;
}
.but {
    overflow: visible;
}
.but {
    -webkit-appearance: button;
}
.but {
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
    letter-spacing: 1px;
    font-family: 'PT Sans', sans-serif;
}
.but {
    font-family: 'Montserrat', sans-serif;
    transition: 0.5s all;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -o-transition: 0.5s all;
    -ms-transition: 0.5s all;
    letter-spacing: 1px;
}
.but {
    color: #fff;
    letter-spacing: 0.5px;
    font-size: 16px;
    text-transform: capitalize;
    padding: 9.5px 0px;
    border: none;
    outline: none;
    background: #029eb7;
    border: 2px solid #029eb7;
    cursor: pointer;
    -webkit-transition: 0.5s all;
    -moz-transition: 0.5s all;
    -ms-transition: 0.5s all;
    -o-transition: 0.5s all;
    transition: 0.5s all;
}
#bt:hover {
	background: #fff;
	color: #029eb7;
	
}

</style>

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
      <link href="css/bootstrap.mincl.css" rel="stylesheet" type="text/css" media="all">
      <link href="css1/logcss.css" rel='stylesheet' type='text/css' media="all">
      <!--//booststrap end-->
      <!-- font-awesome icons -->
      <link href="css/fontawesome-all.css" rel="stylesheet">
      <!-- //font-awesome icons -->
	  <link href="css/owl.carousel.css" rel="stylesheet">
	  <link href="css/blast.mincl.css" rel="stylesheet">
      <!--stylesheets-->
		<link href="css/style.css" rel='stylesheet' type='text/css' media="all">
		<link href="css/stylecl.css" rel='stylesheet' type='text/css' media="all">
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
			<%@page import="java.io.*" %>
			<%@page import="java.sql.*" %>
			<%@page import="javax.sql.*" %>
			<%@page import="java.sql.Connection" %>
			<%
				Class.forName("com.mysql.jdbc.Driver");
	    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
	    		Statement st = con.createStatement();
	    		Statement st1 = con.createStatement();
	    		String ID=request.getParameter("ID").toString();
	    		String XID=request.getParameter("XID").toString();
	    		String CID=request.getParameter("CID").toString();
	    		String query = "SELECT * FROM career WHERE ID='"+ID+"';";
	    		String q="SELECT * FROM total_courses WHERE Cat_ID='"+CID+"';";	    		
	    		ResultSet RS = st.executeQuery(query);
	    		RS.next();
				if(email==null)
				{
					response.sendRedirect("login1.jsp");
				}
				else
				{
					String extras[]=RS.getString(9).split("&");
					String school[]=RS.getString(5).split("&");
					String college[]=RS.getString(6).split("&");
					String entrance[]=RS.getString(7).split("&");
					String subject[]=RS.getString(10).split("&");
			%>
	<section class="w3-services">
		<div class="container">
			<div class="wthree_head_section">
				<h4 style="text-align:center"><%=XID %></h4>
				<h2 class="w3l_header"><%=RS.getString(2) %></h2>
				<p><%=RS.getString(8)%></p>
			</div>
			<div class="row">
				<div class="col-lg-8">
					<div>
						<h3 style="margin: 10px;margin-left: 0px;margin-bottom:20px;">Educational Path</h3>
						<ul>
							<li class="lh"><h5 style="">In School</h5>
								<ul>
									<%
										for(String i : school)
										{
									%>
									<li class="l"><%=i %></li>
									<%
										}
									%>
								</ul>
							</li>
							<li class="lh"><h5 style="">Entrance Exams</h5>
								<ul>
									<%
										for(String i : entrance)
										{
									%>
									<li class="l"><%=i %></li>
									<%
										}
									%>
								</ul>
							</li>
							<li class="lh"><h5 style="">In College</h5>
								<ul>
									<%
										for(String i : college)
										{
									%>
									<li class="l"><%=i %></li>
									<%
										}
									%>
								</ul>
							</li>
						</ul>
					</div>
				</div>
				<div class="col-lg-4">
					<div>
						<h3>Subjects You will Study</h3>
						<ul>
							<%
								for(String i : subject)
								{
							%>
							<li class="l"><%=i %></li>
							<%
								}
							%>
						</ul>
						<h3>Extras</h3>
						<ul>
							<%
								for(String i : extras)
								{
							%>
							<li class="l"><%=i %></li>
							<%
								}
							%>
						</ul>
					</div>
				</div>
			</div>
			<%
				ResultSet RS1=st1.executeQuery(q);
				if(RS1.next())
				{
			%>
				<div class="row">
					<div class="col-lg-4 col-md-8">
						<a href="COURSE.jsp?email=<%=email%>&ID=<%=RS.getObject(1).toString()%>&XID=<%=RS.getObject(2).toString()%>&CID=<%=CID%>"><button class="but" id="bt" style="width:100%;">See Online Courses</button></a>		
					</div>
				</div>
			<%
				}
			%>
		</div>
	<%
		}
	%>
	</section>
<!-- //services -->
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