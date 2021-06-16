<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body>

	<%@page import="java.io.*" %>
	<%@page import="java.sql.*" %>
	<%@page import="javax.sql.*" %>
	<%@page import="java.sql.Connection" %>
	<%
	String email = request.getParameter("email");
	String pwd = request.getParameter("pwd");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
	Statement st = con.createStatement();
	if(email.equals("admin@careerway.com"))
	{
		String query ="Select * from admin where Password='"+pwd+"';";
		ResultSet RS=st.executeQuery(query);
		if(RS.next())
		{
			out.println("<script type=\"text/javascript\">");
				out.println("location='admain-page.jsp?email="+email+"';");
				out.println("</script>");
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
   			out.println("location='login1.jsp';");
			out.println("alert(\"Password not matched.\");");   		
   			out.println("</script>");
		}
	}
	else
	{
		String query ="Select Email,Password,Status from user where Email='"+email+"';";
		ResultSet RS=st.executeQuery(query);
		if(RS.next())
		{
			if(pwd.equals(RS.getString(2)))
			{
				if(RS.getString(3).equals("true"))
				{
					out.println("<script type=\"text/javascript\">");
   					out.println("location='main-page.jsp?email="+email+"';");
   					out.println("</script>");
				}
				else
				{
					out.println("<script type=\"text/javascript\">");
					out.println("location='login1.jsp';");
					out.println("alert(\"Some Problem Occured.Try After Some Time.\");");
					out.println("</script>");
				}
			}
			else
			{
				out.println("<script type=\"text/javascript\">");
				out.println("location='login1.jsp';");
				out.println("alert(\"Password didn't match.\");");
				out.println("</script>");
			}
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
   			out.println("location='login1.jsp';");
			out.println("alert(\"Email is not registered.\");");   		
   			out.println("</script>");
		}
	}
	%>
</body>
</html>