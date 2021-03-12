<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add image</title>
</head>
<body>

	<div align="center">
	
	<h2 align="center">Add New Image</h2>
	
	<form action="./ImageTest2UploadServlet" method="post" enctype="multipart/form-data">
	Enter Image Id :
	<input type="number" name="id"><br><br>
	Image Link :
	<input type="file" name="file"><br><br>
	<input type="submit" value="submit">
	</form>
	
	</div>

</body>
</html>