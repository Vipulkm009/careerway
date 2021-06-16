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
		Class.forName("com.mysql.jdbc.Driver");
		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
		PreparedStatement st = null;
		String cmnt=request.getParameter("txtComments").toString();
		String d=request.getParameter("date").toString();
		String c=request.getParameter("comment").toString();
		String q="Update contact set Reply=? where Curdate='"+d+"' and Comments='"+c+"';";
		int f=0;
		st=con.prepareStatement(q);
		st.setString(1, cmnt);
		try
		{
			f=st.executeUpdate();
			if(f==1)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("location='message.jsp';");
				out.println("</script>");	
			}
			else
			{		
				out.println("<script type=\"text/javascript\">");
		   		out.println("alert('Some Error Occured,Please Try Again!!!');");
		   		out.println("location='message.jsp';");
		   		out.println("</script>");
			}
		}
		catch(Exception e)
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Some Problem Occured, Please Try Again!!!');");
			out.println("location='message.jsp';");
			out.println("</script>");
		}
	%>
</body>
</html>