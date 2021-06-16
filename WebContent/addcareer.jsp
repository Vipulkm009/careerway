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
		Statement st = con.createStatement();
		String id=request.getParameter("ID").toString();
		String name=request.getParameter("Name").toString();
		String cat=request.getParameter("Category").toString();
		String desc=request.getParameter("Description").toString();
		String scl=request.getParameter("School").toString();
		String clg=request.getParameter("College").toString();
		String ent=request.getParameter("Entrance Exams").toString();
		String job=request.getParameter("Job Description").toString();
		String ext=request.getParameter("Extras").toString();
		String sub=request.getParameter("Subjects").toString();
		ResultSet RS=st.executeQuery("Select ID from category where Name='"+cat+"';");
		int f=0;
		if(RS.next())
		{
			String query = "insert into career (ID, Name, Cat_ID, Description, School, College, Entrance_Exams, Job_Description, Extras, Subjects) values('"+id+"','"+name+"','"+RS.getString(1)+"','"+desc+"','"+scl+"','"+clg+"','"+ent+"','"+job+"','"+ext+"','"+sub+"');";
			try
			{
				f=st.executeUpdate(query);
				if(f==1)
				{
					out.println("<script type=\"text/javascript\">");
					out.println("alert('Career Added Successfully!!!');");
					out.println("location='adcareer.jsp';");
					out.println("</script>");	
				}
				else
				{		
					out.println("<script type=\"text/javascript\">");
			   		out.println("alert('Some Error Occured,Plz Try Again!!!');");
			   		out.println("location='adcareer.jsp';");
			   		out.println("</script>");
				}
			}
			catch(Exception e)
			{
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Some Problem Occured. Try Again!!!');");
				out.println("location='adcareer.jsp';");
				out.println("</script>");
			}
		}
		else
		{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('Category is Wrong. Try Again!!!');");
			out.println("location='adcareer.jsp';");
			out.println("</script>");
		}
	%>
</body>
</html>