<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	String pname=request.getParameter("pname");
    %>
<div class="w3_agileits_top_nav">
			<ul id="gn-menu" class="gn-menu-main">
			  		 <!-- /nav_agile_w3l -->
				<li class="gn-trigger">
					<a class="gn-icon gn-icon-menu"><i class="fas fa-bars" aria-hidden="true"></i><span>Menu</span></a>
					<nav class="gn-menu-wrapper">
						<div class="gn-scroller scrollbar1">
							<ul class="gn-menu agile_menu_drop">
								<li><a href="admain-page.jsp?pname=<%=pname%>"> <i class="fa fa-tachometer"></i> Dashboard</a></li>
								<li><a href="#"><i class="fa fa-user" aria-hidden="true"></i> User Management <i class="fa fa-angle-down" aria-hidden="true"></i></a>
									<ul class="gn-submenu">
										<li class="mini_list_agile"><a href="user.jsp?pname=<%=pname%>"><i class="fa fa-caret-right" aria-hidden="true"></i> Users</a></li>
									</ul>
								</li>
								<li><a href="adcareer.jsp?pname=<%=pname%>"> <i class="fa fa-file-text-o" aria-hidden="true"></i> Career Management </a></li>
								<li><a href="category.jsp?pname=<%=pname%>"> <i class="fa fa-table" aria-hidden="true"></i> Category Management </a></li>
								<li><a href="adcourse.jsp?pname=<%=pname%>"> <i class="fa fa-table" aria-hidden="true"></i> Course Management </a></li>
								<li><a href="adlesson.jsp?pname=<%=pname%>"> <i class="fa fa-table" aria-hidden="true"></i> Lesson Management </a></li>
								<li><a href="message.jsp?pname=<%=pname%>"><i class="fa fa-envelope-o" aria-hidden="true"></i> Messages </a></li>
							</ul>
						</div><!-- /gn-scroller -->
					</nav>
				</li>
				<!-- //nav_agile_w3l -->
				<li class="second logo"><h1><a href="admain-page.jsp?pname=<%=pname%>"><i class="fa fa-graduation-cap" aria-hidden="true"></i>CareerWay </a></h1>
				</li>
				<li class="second admin-pic">
				   	<ul class="top_dp_agile">
						<li class="dropdown profile_details_drop">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
								<div class="profile_img">	
									<span class="prfil-img"><img src="images2/admin.jpg" alt=""> </span> 
								</div>	
							</a>
							<ul class="dropdown-menu drp-mnu">
								<li> <a href="#"><i class="fa fa-cog"></i> Settings</a> </li> 
								<li> <a href="main-page.jsp"><i class="fa fa-sign-out"></i> Logout</a> </li>
							</ul>
						</li>
					</ul>
				</li>
				<li class="second logo"><h1><i class="fa fa-graduation-cap" aria-hidden="true"></i><%=pname %></h1>
				</li>
					
				<li class="second full-screen">
					<section class="full-top">
						<button id="toggle"><i class="fa fa-arrows-alt" aria-hidden="true"></i></button>	
					</section>
				</li>
			</ul>
			<!-- //nav -->			
		</div>
		<br /><br /><br />
		       