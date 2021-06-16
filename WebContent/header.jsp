<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<header>
	<%@page import="java.io.*" %>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
<%
	String email=request.getParameter("email");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
	Statement st = con.createStatement();
	String query ="Select Fname,Lname,Email from user where Email='"+email+"';";
	ResultSet RS=st.executeQuery(query);
	RS.next();
%>
	<section class="main_section_agile">
		<div class="agileits_w3layouts_banner_nav">
			<div class="header-bar">
				<div class="container">
				<nav class="navbar navbar-expand-lg navbar-light">
               <div class="hedder-up">
               <h1><a class="navbar-brand" href="main-page.jsp?email=<%=email %>">CareerWay</a></h1>
			   </div>
              <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
               <span class="navbar-toggler-icon"></span>
               </button>
               <div class="collapse navbar-collapse justify-content-end" id="navbarSupportedContent">
                   <ul class="navbar-nav">
						<li class="nav-item">
							<a class="nav-link" href="main-page.jsp?email=<%=email %>">Home</a>
						</li>
						<li class="nav-item">
							<a href="About.jsp?email=<%=email %>" class="nav-link">About Us</a>
						</li>
						<li class="nav-item dropdown">
									<a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false">
										Option
									</a>
									<div class="dropdown-menu" aria-labelledby="navbarDropdown">
										<a class="dropdown-item" href="CAREER_OPTIONS.jsp?email=<%=email%>">Careers</a>
										<div class="dropdown-divider"></div>
										<a class="dropdown-item" href="TOT_COURSES.jsp?email=<%=email%>">Courses</a>
									</div>
								</li>
						<li class="nav-item">
							<a href="contact1.jsp?email=<%=email %>" class="nav-link">Contact</a>
						</li>
						<li class="nav-item">
							<a href="Gallery.jsp?email=<%=email %>" class="nav-link ">Gallery</a>
						</li>
						<li class="second w3l_search">
							<form action="Search.jsp?email=<%=email%>" method="post">
								<input type="search" name="search" placeholder="Search for course and career here..." required="" style="display:inline">
								<button class="btn btn-default" type="submit"><i class="fa fa-search" aria-hidden="true" style="display:inline"></i></button>
							</form>
						</li>
						<li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle l" href="#" id="navbarDropdown2" role="button" data-toggle="dropdown" aria-haspopup="true"
                                aria-expanded="false">
                                <i class="far fa-user"></i>																				
                            </a>
                            <div class="dropdown-menu drop-3 h">
                                <div class="profile d-flex mr-o">
                                    <div class="profile-r align-self-center">
                                        <h3 class="sub-title-w3-agileits" style="text-align:center;"><%=RS.getString(1)+" "+RS.getString(2)%></h3>
                                        <p style="text-align:center;"><%=email %></p>
                                    </div>
                                </div>
                                <a href="registration.jsp" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="far fa-user mr-3"></i>My Profile</h4>
                                </a>
                                <a href="mycourse.jsp?email=<%=email %>" class="dropdown-item mt-3">
                                    <h4>
                                        <i class="fas fa-link mr-3"></i>My Courses</h4> 
                                </a>
                                <div class="dropdown-divider d"></div>
                                <a class="dropdown-item" href="logout.jsp?email=<%=email%>">Logout</a>
                            </div>
                        </li>
					</ul>
               </div>
            </nav>				
		</div>
   </div>
         <!-- //Navigation -->

	</div>
	</section>
	</header>
	<section class="banner_top">
		<div class="slider">
			<div class="wrapper">
				
				<!-- Slideshow 3 -->
				<ul class="rslides" id="slider">
					<li>
						<div class="agile_banner_text_info">
							<h3>The Best Career Guide </h3>
							<p>The perfect guide for your choice for best career</p>
						</div>
					</li>
					<li>
						<div class="agile_banner_text_info">
							<h3>The Best Career Guide </h3>
							<p>The perfect guide for your choice for best career</p>
						</div>
					</li>
					<li>
						<div class="agile_banner_text_info">
							<h3>The Best Career Guide </h3>
							<p>The perfect guide for your choice for best career</p>
						</div>
					</li>
					<li>
						<div class="agile_banner_text_info">
							<h3>The Best Career Guide </h3>
							<p>The perfect guide for your choice for best career</p>
						</div>
					</li>
				</ul>
				<!-- Slideshow 3 Pager -->
				<ul id="slider3-pager">
					<li><a href="#"><img src="images/bg0.jpg" data-selector="img" alt=""></a></li>
					<li><a href="#"><img src="images/bg11.jpg" data-selector="img" alt=""></a></li>
					<li><a href="#"><img src="images/bg12.jpg" data-selector="img" alt=""></a></li>
					<li><a href="#"><img src="images/bg13.jpg" data-selector="img" alt=""></a></li>

				</ul>
			</div>
		</div>
	</section>	