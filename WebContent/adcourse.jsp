<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Course Management | Admin Panel | CareerWay</title>
<!-- custom-theme -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Esteem Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //custom-theme -->
<link href="css2/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<link href="css2/component.css" rel="stylesheet" type="text/css" media="all" />
<link href="css2/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css2/formcss.css" rel="stylesheet" type="text/css" media="all" />
<style type="text/css">
td {
	font-size: 13px;
}
tr {
	font-size: 13px;
}
.button_set_one .btn {
	font-size: 13px;
}

</style>
<!-- font-awesome-icons -->
<link href="css2/font-awesome.css" rel="stylesheet"> 
<!-- //font-awesome-icons -->
<link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i,800" rel="stylesheet">
</head>
<body>
	<jsp:include page="headerAdmin.jsp">
		<jsp:param value="Course Management Page" name="pname"/>
	</jsp:include>
	<table class="table table-striped table-hover table-responsive" style="padding-top:50pxx;">
		<tr>
			<th>S.No.</th>
			<th>ID</th>
			<th>Name</th>
			<th>Level</th>
			<th>Minutes</th>
			<th>Duration</th>
			<th>Suitable Age</th>
			<th>Course Syllabus</th>
			<th>No. of YouTube Links</th>
			<th>No. of edx Links</th>
			<th>Category</th>	
			<th>Action</th>
		</tr>
		<tr>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td></td>
			<td><div class="col-md-6 button_set_one three one agile_info_shadow" style="padding-right: 0px;padding-left: 0px;border-top-width: 0px;border-left-width: 0px;border-bottom-width: 0px;border-right-width: 0px;"><a class="readmore admission" href="#" data-toggle="modal" data-target="#myModal14" style="color:#fff"><button type="button" class="btn btn-primary btn-flat btn-pri btn-lg" aria-hidden="true" style="padding-right: 20px;padding-left: 20px;padding-top: 5px;padding-bottom: 5px;"><i class="fa fa-plus" aria-hidden="true" style="padding-right: 5px;padding-left: 5px;padding-top: 9px;padding-bottom: 9px;color :#fff;"></i> Add</button></a></div></td>
		</tr>
		<%@page import="java.io.*" %>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
		Statement st = con.createStatement();
		String query = "SELECT * FROM total_courses";
		ResultSet RS = st.executeQuery(query);
		String catid;
		int i=1;
		while(RS.next())
		{
			catid=RS.getObject(10).toString();
			Statement st1 = con.createStatement();
			String query1 = "SELECT Name FROM category WHERE ID='" + catid + "'";
			ResultSet RS1 = st1.executeQuery(query1);
			RS1.next();
			out.println("<tr>");
			out.println("<td>"+i+"</td>");
			out.println("<td name=\"ID"+i+"\" class=\"font-size:12px;\">"+RS.getObject(1).toString()+"</td>");
			out.println("<td class=\"font-size:12px;\">"+RS.getObject(2).toString()+"</td>");
			out.println("<td class=\"font-size:12px;\">"+RS.getObject(3).toString()+"</td>");
			out.println("<td class=\"font-size:12px;\">"+RS.getObject(4).toString()+"</td>");
			out.println("<td class=\"font-size:12px;\">"+RS.getObject(5).toString()+"</td>");
			out.println("<td class=\"font-size:12px;\">"+RS.getObject(6).toString()+"</td>");
			out.println("<td class=\"font-size:12px;\">"+RS.getObject(7).toString()+"</td>");
			out.println("<td class=\"font-size:12px;\">"+RS.getObject(8).toString()+"</td>");
			out.println("<td class=\"font-size:12px;\">"+RS.getObject(9).toString()+"</td>");
			out.println("<td class=\"font-size:12px;\">"+RS1.getObject(1).toString()+"</td>");
			out.println("<td><div class=\"col-md-6 button_set_one three one agile_info_shadow\" style=\"padding-right: 0px;padding-left: 0px;border-top-width: 0px;border-left-width: 0px;border-bottom-width: 0px;border-right-width: 0px;\"><a class=\"readmore admission\" href=\"delcourse.jsp?ID="+RS.getString(1)+"\" style=\"color:#fff\"><button type=\"button\" class=\"btn btn-primary btn-flat btn-pri btn-lg\" style=\"padding-right: 20px;padding-left: 20px;padding-top: 5px;padding-bottom: 5px;\"> Delete </button></a><br><a class=\"readmore admission\" href=\"edcourse.jsp?ID="+RS.getString(1)+"\" style=\"color:#fff\"><button type=\"button\" class=\"btn btn-primary btn-flat btn-pri btn-lg\" style=\"padding-right: 20px;padding-left: 20px;padding-top: 5px;padding-bottom: 5px;\"> Edit</button></a></div></td>");
			out.println("</tr>");
			i++;
		}
	%>
	</table>
	<script type="text/javascript" src="js2/jquery-2.1.4.min.js"></script>
	<%
		RS.previous();
		String s=RS.getString(1);
		s=s.substring(1);
		s=String.valueOf(Integer.parseInt(s)+1);
		if(s.length()==2)
			s="0"+s;
		if(s.length()==1)
			s="00"+s;
		s="C"+s;
		String query1 = "SELECT * FROM category";
		ResultSet RS2 = st.executeQuery(query1);
	%>
	<!-- popup for sign up form -->
<div class="modal video-modal fade d" id="myModal14" tabindex="-1" role="dialog" aria-labelledby="myModal2">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div id="small-dialog2" class="mfp-hide book-form">
			<button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
				<h3>Edit Course</h3>
				<p style="text-align:center;margin-bottom:15px;">** fields must use '&' to separate different values of a particular column.</p>
					<form action="addcourse.jsp" method="post">
						<input type="text" name="ID" placeholder="ID" class="i" value="<%=s %>" required="" readonly/>
						<input type="text" name="Name" class="i" placeholder="Name" pattern="(?=.*[a-z])(?=.*[A-Z]).{,200}" title="Only Characters" required=""/>
						<div class="select-block1">
							<select class="s" name="Level" required="">
							<option value="">Select*</option>
							<option>Beginner</option>
							<option>Intermediate</option>
							<option>Expert</option>
							</select>
						</div>
						<input type="number" name="Minutes" class="i" placeholder="Minutes" required=""/>
						<div class="select-block1">
							<select class="s" name="Duration" required="">
							<option value="">Select*</option>
							<option>Within a day</option>
							<option>Short Term</option>
							<option>Long Term</option>
							</select>
						</div>
						<div class="select-block1">
							<select class="s" name="Age" required="">
							<option value="">Select*</option>
							<option>School Student</option>
							<option>College Student or Job Seeker</option>
							</select>
						</div>
						<textarea name="Syllabus" placeholder="Course Syllabus**" class="i" required=""/></textarea>
						<input type="number" name="youtube" class="i" placeholder="No. of YouTube Links" required=""/>
						<input type="number" name="edx" class="i" placeholder="No. of edx Links" required=""/>
						<div class="select-block1">
							<select class="s" name="Category" required="">
								<option value="">Category type*</option>
								<%
								while(RS2.next())
								{
									out.println("<option>"+RS2.getString(2)+"</option>");
								}
								%>
							</select>
						</div>
						<input type="submit" value="Submit">
					</form>
			</div>
		</div>
	</div>
</div>
<!-- //popup for sign up form -->
	<!-- /amcharts -->
				<script src="js2/amcharts.js"></script>
		       <script src="js2/serial.js"></script>
				<script src="js2/export.js"></script>	
				<script src="js2/light.js"></script>
				<!-- Chart code -->
	 <script>
var chart = AmCharts.makeChart("chartdiv", {
    "theme": "light",
    "type": "serial",
    "startDuration": 2,
    "dataProvider": [{
        "country": "USA",
        "visits": 4025,
        "color": "#FF0F00"
    }, {
        "country": "China",
        "visits": 1882,
        "color": "#FF6600"
    }, {
        "country": "Japan",
        "visits": 1809,
        "color": "#FF9E01"
    }, {
        "country": "Germany",
        "visits": 1322,
        "color": "#FCD202"
    }, {
        "country": "UK",
        "visits": 1122,
        "color": "#F8FF01"
    }, {
        "country": "France",
        "visits": 1114,
        "color": "#B0DE09"
    }, {
        "country": "India",
        "visits": 984,
        "color": "#04D215"
    }, {
        "country": "Spain",
        "visits": 711,
        "color": "#0D8ECF"
    }, {
        "country": "Netherlands",
        "visits": 665,
        "color": "#0D52D1"
    }, {
        "country": "Russia",
        "visits": 580,
        "color": "#2A0CD0"
    }, {
        "country": "South Korea",
        "visits": 443,
        "color": "#8A0CCF"
    }, {
        "country": "Canada",
        "visits": 441,
        "color": "#CD0D74"
    }, {
        "country": "Brazil",
        "visits": 395,
        "color": "#754DEB"
    }, {
        "country": "Italy",
        "visits": 386,
        "color": "#DDDDDD"
    }, {
        "country": "Taiwan",
        "visits": 338,
        "color": "#333333"
    }],--*****
    "valueAxes": [{
        "position": "left",
        "axisAlpha":0,
        "gridAlpha":0
    }],
    "graphs": [{
        "balloonText": "[[category]]: <b>[[value]]</b>",
        "colorField": "color",
        "fillAlphas": 0.85,
        "lineAlpha": 0.1,
        "type": "column",
        "topRadius":1,
        "valueField": "visits"
    }],
    "depth3D": 40,
	"angle": 30,
    "chartCursor": {
        "categoryBalloonEnabled": false,
        "cursorAlpha": 0,
        "zoomable": false
    },
    "categoryField": "country",
    "categoryAxis": {
        "gridPosition": "start",
        "axisAlpha":0,
        "gridAlpha":0

    },
    "export": {
    	"enabled": true
     }

}, 0);
</script>
<!-- Chart code -->
<script>
var chart = AmCharts.makeChart("chartdiv1", {
    "type": "serial",
	"theme": "light",
    "legend": {
        "horizontalGap": 10,
        "maxColumns": 1,
        "position": "right",
		"useGraphSettings": true,
		"markerSize": 10
    },
    "dataProvider": [{
        "year": 2017,
        "europe": 2.5,
        "namerica": 2.5,
        "asia": 2.1,
        "lamerica": 0.3,
        "meast": 0.2,
        "africa": 0.1
    }, {
        "year": 2016,
        "europe": 2.6,
        "namerica": 2.7,
        "asia": 2.2,
        "lamerica": 0.3,
        "meast": 0.3,
        "africa": 0.1
    }, {
        "year": 2015,
        "europe": 2.8,
        "namerica": 2.9,
        "asia": 2.4,
        "lamerica": 0.3,
        "meast": 0.3,
        "africa": 0.1
    }],
    "valueAxes": [{
        "stackType": "regular",
        "axisAlpha": 0.5,
        "gridAlpha": 0
    }],
    "graphs": [{
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Europe",
        "type": "column",
		"color": "#000000",
        "valueField": "europe"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "North America",
        "type": "column",
		"color": "#000000",
        "valueField": "namerica"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Asia-Pacific",
        "type": "column",
		"color": "#000000",
        "valueField": "asia"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Latin America",
        "type": "column",
		"color": "#000000",
        "valueField": "lamerica"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Middle-East",
        "type": "column",
		"color": "#000000",
        "valueField": "meast"
    }, {
        "balloonText": "<b>[[title]]</b><br><span style='font-size:14px'>[[category]]: <b>[[value]]</b></span>",
        "fillAlphas": 0.8,
        "labelText": "[[value]]",
        "lineAlpha": 0.3,
        "title": "Africa",
        "type": "column",
		"color": "#000000",
        "valueField": "africa"
    }],
    "rotate": true,
    "categoryField": "year",
    "categoryAxis": {
        "gridPosition": "start",
        "axisAlpha": 0,
        "gridAlpha": 0,
        "position": "left"
    },
    "export": {
    	"enabled": true
     }
});
</script>

	<!-- //amcharts -->
		<script src="js2/chart1.js"></script>
				<script src="js2/Chart.min.js"></script>
		<script src="js2/modernizr.custom.js"></script>
		
		<script src="js2/classie.js"></script>
		<script src="js2/gnmenu.js"></script>
		<script>
			new gnMenu( document.getElementById( 'gn-menu' ) );
		</script>
			<!-- script-for-menu -->

<!-- /circle-->
	 <script type="text/javascript" src="js2/circles.js"></script>
					         <script>
								var colors = [
										['#ffffff', '#fd9426'], ['#ffffff', '#fc3158'],['#ffffff', '#53d769'], ['#ffffff', '#147efb']
									];
								for (var i = 1; i <= 7; i++) {
									var child = document.getElementById('circles-' + i),
										percentage = 30 + (i * 10);
										
									Circles.create({
										id:         child.id,
										percentage: percentage,
										radius:     80,
										width:      10,
										number:   	percentage / 1,
										text:       '%',
										colors:     colors[i - 1]
									});
								}
						
				</script>
	<!-- //circle -->
	<!--skycons-icons-->
<script src="js2/skycons.js"></script>
<script>
									 var icons = new Skycons({"color": "#fcb216"}),
										  list  = [
											"partly-cloudy-day"
										  ],
										  i;

									  for(i = list.length; i--; )
										icons.set(list[i], list[i]);
									  icons.play();
								</script>
								<script>
									 var icons = new Skycons({"color": "#fff"}),
										  list  = [
											"clear-night","partly-cloudy-night", "cloudy", "clear-day", "sleet", "snow", "wind","fog"
										  ],
										  i;

									  for(i = list.length; i--; )
										icons.set(list[i], list[i]);
									  icons.play();
								</script>
<!--//skycons-icons-->
<!-- //js -->
<script src="js2/screenfull.js"></script>
		<script>
		$(function () {
			$('#supported').text('Supported/allowed: ' + !!screenfull.enabled);

			if (!screenfull.enabled) {
				return false;
			}
			$('#toggle').click(function () {
				screenfull.toggle($('#container')[0]);
			});	
		});
		</script>
		<script src="js2/flipclock.js"></script>
	<script type="text/javascript">
		var clock;
		$(document).ready(function() {
			clock = $('.clock').FlipClock({
		        clockFace: 'HourlyCounter'
		    });
		});
	</script>
<script src="js2/bars.js"></script>
<script src="js2/jquery.nicescroll.js"></script>
<script src="js2/scripts.js"></script>
<script type="text/javascript" src="js2/bootstrap-3.1.1.min.js"></script>
</body>
</html>