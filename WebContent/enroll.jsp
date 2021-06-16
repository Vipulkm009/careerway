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
	String email=request.getParameter("email");
%>
		<%@page import="java.io.*" %>
		<%@page import="java.sql.*" %>
		<%@page import="javax.sql.*" %>
		<%@page import="java.sql.Connection" %>
		<%
				Class.forName("com.mysql.jdbc.Driver");
	    		Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/careerway","root","root");
	    		Statement st = con.createStatement();
	    		Statement st1 = con.createStatement();
	    		String ID=request.getParameter("ID").toString();
	    		String query="INSERT INTO enroll (email, CID, DOE) values ('"+email+"','"+ID+"',NOW());";
	    		int f=0;
	    		try
	    		{
	    			f=st.executeUpdate(query);
	    			if(f==1)
	    			{
	    				out.println("<script type=\"text/javascript\">");
	    				out.println("alert('You are Registered Successfully!!!');");
	    				out.println("location='COURSES_DETAILS.jsp?email="+email+"&ID="+ID+"';");
	    				out.println("</script>");	
	    			}
	    			else
	    			{		
	    				out.println("<script type=\"text/javascript\">");
	    		   		out.println("alert('Some Error Occured,Plz Try Again!!!');");
	    		   		out.println("location='COURSES_DETAILS.jsp?email="+email+"&ID="+ID+"';");
	    		   		out.println("</script>");
	    			}
	    		}
	    		catch(Exception e)
	    		{
	    			out.println("<script type=\"text/javascript\">");
	    			out.println("alert('There is some problem. Try Again!!!');");
	    			out.println("location='COURSES_DETAILS.jsp?email="+email+"&ID="+ID+"';");
	    			out.println("</script>");
	    		}
			%>
</body>
</html>