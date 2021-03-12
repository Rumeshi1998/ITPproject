<%@page import="java.sql.ResultSet" %>
<%@page import="java.sql.DriverManager" %>
<%@page import="java.sql.Statement" %>
<%@page import="java.sql.Connection" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Image Show</title>
</head>
<body>
	
	<%
	
		int imageid = Integer.parseInt(request.getParameter("id"));
		System.out.println(imageid);
	
		try{
			Class.forName("com.mysql.jdbc.Driver");
			Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/imageupload?autoReconnect=true&useSSL=false","root","Rumeshi123");
			Statement st = con.createStatement();
			String sql = "SELECT filename FROM image_table where id= " + imageid + " ";
			ResultSet rs = st.executeQuery(sql);
			while(rs.next()){
				String filename = rs.getString("filename");
	
	%>
	
		<table style="width:100%">
			<tr>
				<th>Id</th>
				<th>Image</th>
			</tr>
			<tr>
				<td><%=imageid%></td>
				<td><image src="D:/projects/NewPartner/WebContent/images/<%=filename%>" width="200" height="200"/></td>
			</tr>
		</table>
			
	<%
	
			}
		}catch(Exception e){
			System.out.println(e);
		}
	
	%>

</body>
</html>