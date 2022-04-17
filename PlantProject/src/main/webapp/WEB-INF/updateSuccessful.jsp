<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Film</title>

</head>


	<body>


<c:choose>
<c:when test="${updatedPlant }">

Plant information has been updated 
</c:when>

<c:otherwise>
Update failed please try again

</c:otherwise>
 </c:choose>

</body>
</html>
