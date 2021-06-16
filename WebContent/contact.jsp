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
	String Name = request.getParameter("txtName");
	String Email = request.getParameter("txtEmail");
	String Com = request.getParameter("txtComments");
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
	Statement st = con.createStatement();
	String query ="insert into contact (Name, Email, Comments, Curdate, Reply, Likes)values('"+Name+"','"+Email+"','"+Com+"',NOW(),'',0)";
	int flag = st.executeUpdate(query);
	if(flag==1)
		{
			out.println("<script type=\"text/javascript\">");
	   		out.println("alert('Your Comment Recieved Successfully!!!');");
	   		out.println("location='contact1.jsp';");
	   		out.println("</script>");
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
	   		out.println("alert('Your Comment Not Send Successfully, Please Try Again!!!');");
	   		out.println("location='contact1.jsp';");
	   		out.println("</script>");
		}
	%>
</body>
</html>