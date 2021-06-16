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
		Statement st1=con.createStatement();
		String id=request.getParameter("ID").toString();
		String name=request.getParameter("Name").toString();
		String url=request.getParameter("URL").toString();
		String cou=request.getParameter("Course").toString();
		ResultSet RS=st1.executeQuery("Select Course_ID from total_courses where Name='"+cou+"';");
		int f=0;
		if(RS.next())
		{
			String query = "Update links set ID=?, NAME=?, URL=?, C_ID=? where ID ='"+id+"';";
			st=con.prepareStatement(query);
			st.setString(1, id);
			st.setString(2, name);
			st.setString(3, url);
			st.setString(4, RS.getString(1));
			try
			{
				f=st.executeUpdate();
				if(f==1)
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Lesson Updated Successfully!!!');");
					out.println("location='adlesson.jsp';");
					out.println("</script>");	
				}
				else
				{		
					out.println("<script type=\"text/javascript\">");
			   		out.println("alert('Some Error Occured,Please Try Again!!!');");
			   		out.println("location='adlesson.jsp';");
			   		out.println("</script>");
				}
			}
			catch(Exception e)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Some Problem Occured, Please Try Again!!!');");
				out.println("location='adlesson.jsp';");
				out.println("</script>");
			}
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Course is Wrong. Try Again!!!');");
			out.println("location='adlesson.jsp';");
			out.println("</script>");
		}
	%>
</body>
</html>