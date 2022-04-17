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

	<h1>Find By Keyword</h1>
	<br>
	
<form action="plantbykey.do" method="GET">
  Plant KeyWord Search: <input type="text" name="keyword" />
  <input type="submit" value="Show Plant" />
</form> 


</body>
</html>