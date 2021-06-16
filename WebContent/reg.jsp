<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%@page import="java.io.*" %>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
		String fname = request.getParameter("fname");
		String lname = request.getParameter("lname");
		String email = request.getParameter("email");
		String pwd = request.getParameter("pwd");
		String phone = request.getParameter("phone");
		String gender = request.getParameter("gender");
		String dob = request.getParameter("dob");
		int f=0;
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
		Statement st = con.createStatement();
		String query ="insert into user (Fname,Lname,Email,Phone,DOB,Gender,Password,Status) values('"+fname+"','"+lname+"','"+email+"','"+phone+"','"+dob+"','"+gender+"','"+pwd+"','true');";
		try
		{
			f=st.executeUpdate(query);
			if(f==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('You are Registered Successfully!!!');");
				out.println("location='main-page.jsp';");
				out.println("</script>");	
			}
			else
			{		
				out.println("<script type=\"text/javascript\">");
		   		out.println("alert('Some Error Occured,Plz Try Again!!!');");
		   		out.println("location='registration.jsp';");
		   		out.println("</script>");
			}
		}
		catch(Exception e)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Email Already Registered!!!');");
			out.println("location='registration.jsp';");
			out.println("</script>");
		}
		%>
</body>
</html>