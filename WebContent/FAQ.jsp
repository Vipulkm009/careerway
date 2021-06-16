<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet" href="https://cdnjs.cloudfare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<style>
.fa{
	font-size:	20px;
	cursor:	pointer;
	user-select:	none;
	color:blue;
	}
.fa-hover{
	color:darkblue;}
</style>
<title>Insert title here</title>
</head>
<body>
<h4 class="w3_inner_tittle">Frequently Asked Questions</h4>
			<%@page import="java.io.*" %>
			<%@page import="java.sql.*" %>
			<%@page import="javax.sql.*" %>
			<%@page import="java.sql.Connection" %>
			<%
				Class.forName("com.mysql.jdbc.Driver");
				Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
				Statement st = con.createStatement();
				String query = "SELECT * FROM contact WHERE Reply IS NOT NULL";
				ResultSet RS = st.executeQuery(query);
				int i=1;
				
				while(RS.next())
				{
					if(!RS.getString(5).equals(""))
					{
			%>
			<div class="inner_content_w3_agile_info two_in">
				
				<div class="asked agile_info_shadow">
				<%  
					out.println("<div class=\"questions\">");
					out.println("<h5>"+i+++". "+RS.getObject(3).toString()+"</h5>");
					out.println("<i onclick=\"myFunction(this)\" class=\"fa fa-thumbs-up\"></i>  <script>function myFunction(x) {x.classList.toggle(\"fa fa-thumbs-down\");}</script>"+RS.getObject(6).toString());
					out.println("<p>"+RS.getObject(5).toString()+"</p>");
					out.println("</div>");
					}
				}
				%>
				</div>
			</div>
</body>
</html>