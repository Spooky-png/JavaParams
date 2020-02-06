<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Demo JSP</title>
<link href="./css/style.css" rel="stylesheet" type="text/css">
</head>
<body>
<% String width = request.getParameter("width"); %>
<% String height = request.getParameter("height"); %>
<h1>Checkerboard: <%= width %>w X <%= height %>h</h1>
<% for (int box2 = 0; box2 < 2; box2++){ %>
<% for(int box = 0; box < 3; box++) { %>
	<div class="one" style="width: <%= width %>px; height:<%= height %>px;"></div>
	<div class="two" style="width: <%= width %>px; height:<%= height %>px;"></div>
	<% } %>
	<% for(int box = 0; box < 3; box++) { %>
	<div class="two" style="width: <%= width %>px; height:<%= height %>px;"></div>
	<div class="one" style="width: <%= width %>px; height:<%= height %>px;"></div>
	<% } %>
<br>
<% } %>
</body>
</html>