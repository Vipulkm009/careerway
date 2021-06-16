<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
	String ID=request.getParameter("ID").toString();
	String st=request.getParameter("st1").toString();
%>
<%@page import="java.io.*" %>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
		PreparedStatement st1 = null;
		int f=0;
		if(st.equals("true"))
		{
			String query = "Update user set Status=? where Email='"+ID+"';";
			st1=con.prepareStatement(query);
			st1.setString(1, "true");
			f=st1.executeUpdate();
			if(f==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Changed Successfully!!!');");
				out.println("location='user.jsp';");
				out.println("</script>");	
			}
			else
			{		
				out.println("<script type=\"text/javascript\">");
		   		out.println("alert('Some Error Occured,Please Try Again!!!');");
		   		out.println("location='user.jsp';");
		   		out.println("</script>");
			}
		}
		else
		{
			String query = "Update user set Status=? where Email='"+ID+"';";
			st1=con.prepareStatement(query);
			st1.setString(1, "false");
			f=st1.executeUpdate();
			if(f==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Changed Successfully!!!');");
				out.println("location='user.jsp';");
				out.println("</script>");	
			}
			else
			{		
				out.println("<script type=\"text/javascript\">");
		   		out.println("alert('Some Error Occured,Please Try Again!!!');");
		   		out.println("location='user.jsp';");
		   		out.println("</script>");
			}
		}
		%>
</body>
</html>