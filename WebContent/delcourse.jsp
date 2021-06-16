<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>

</head>
<body onload="myfunc()">

<%
	String ID=request.getParameter("ID").toString();
%>
	<%@page import="java.io.*" %>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
		Statement st = con.createStatement();
		String query = "DELETE FROM total_courses where Course_ID = '"+ID+"';";
		int f=0;
		try
		{
			f=st.executeUpdate(query);
			if(f==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Course Deleted Successfully!!!');");
				out.println("location='adcourse.jsp';");
				out.println("</script>");	
			}
			else
			{		
				out.println("<script type=\"text/javascript\">");
		   		out.println("alert('Some Error Occured,Plz Try Again!!!');");
		   		out.println("location='adcourse.jsp';");
		   		out.println("</script>");
			}
		}
		catch(Exception e)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('hllo');");
			out.println("location='adcourse.jsp';");
			out.println("</script>");
		}		
	%>
</body>
</html>