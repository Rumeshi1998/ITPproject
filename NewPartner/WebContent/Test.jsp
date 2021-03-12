<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.2/css/all.css" integrity="sha384-vSIIfh2YWi9wW0r9iZe7RJPrKwp6bG+s9QZMoITbCckVJqGCCRhc+ccxNcdpHuYu" crossorigin="anonymous"><meta charset="ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Add image page</title>
</head>
<body>

<center>
<h1>Image uploading</h1>

<table>
<form action="./AddImage" method="post" enctype="multipart/form-data">
<tr><td>Image</td><td><input type="file" name="image"/></td></tr>
<tr><td colspan="2"><input type="submit" value="Add"/></td></tr>
</form>
</table>
</center>
	
</body>
</html>