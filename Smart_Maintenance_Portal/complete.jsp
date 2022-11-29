<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
   <%@ page import="com.smart.db.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
int id=Integer.parseInt(request.getParameter("id"));
try
		{
			Connection con = DbConnect.connect();
			PreparedStatement ps3=con.prepareStatement("update addcom set status=? where id=?");
			ps3.setString(1,"Completed");
			ps3.setInt(2,id);
			int j=ps3.executeUpdate();
			if(j>0)
			{
				response.sendRedirect("vdc.jsp");
			}
			else
			{
				response.sendRedirect("Ere.html");
			}
			
			
		}
		catch(Exception e)
		{
			e.printStackTrace();
			
		}
%>

</body>
</html>