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
		String lvl=request.getParameter("Level").toString();
		String min=request.getParameter("Minutes").toString();
		min=min+ " minutes";
		String dur=request.getParameter("Duration").toString();
		String age=request.getParameter("Age").toString();
		String syl=request.getParameter("Syllabus").toString();
		String you=request.getParameter("youtube").toString();
		String edx=request.getParameter("edx").toString();
		String cat=request.getParameter("Category").toString();
		ResultSet RS=st1.executeQuery("Select ID from category where Name='"+cat+"';");
		int f=0;
		if(RS.next())
		{
			String query = "Update total_courses set Course_ID=?, Name=?, Level=?, Minutes=?, Duration=?, Suitable_age=?, Course_Syllabus=?, Youtube=?, edx=?, Cat_ID=? where Course_ID ='"+id+"';";
			st=con.prepareStatement(query);
			st.setString(1, id);
			st.setString(2, name);
			st.setString(3, lvl);
			st.setString(4, min);
			st.setString(5, dur);
			st.setString(6, age);
			st.setString(7, syl);
			st.setString(8, you);
			st.setString(9, edx);
			st.setString(10, RS.getString(1));
			try
			{
				f=st.executeUpdate();
				if(f==1)
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Course Updated Successfully!!!');");
					out.println("location='adcourse.jsp';");
					out.println("</script>");	
				}
				else
				{		
					out.println("<script type=\"text/javascript\">");
			   		out.println("alert('Some Error Occured,Please Try Again!!!');");
			   		out.println("location='adcourse.jsp';");
			   		out.println("</script>");
				}
			}
			catch(Exception e)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Some Problem Occured, Please Try Again!!!');");
				out.println("location='adcourse.jsp';");
				out.println("</script>");
			}
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Category is Wrong. Try Again!!!');");
			out.println("location='adcourse.jsp';");
			out.println("</script>");
		}
	%>
</body>
</html>