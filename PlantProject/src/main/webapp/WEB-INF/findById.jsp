<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>

<body>

	<h1>Find By ID</h1>
	<br>
	
<form action="getPlant.do" method="GET">
  Film ID: <input type="text" name="pid" />
  <input type="submit" value="Show Plant" />
</form>


</body>
</html>