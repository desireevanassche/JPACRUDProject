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

<%--  <c:choose>
	<c:when test="${empty plant}">
  	No plant found
	</c:when>
	<c:otherwise>  --%>

	<h1>Update Plant</h1> <BR>


	
	<form action="updatePlant.do" method="POST">
	
	<input id="id" type="hidden" name="id" value="${plant.id}"/>
		 
		<label for="name">Name: </label>
		<input id="name" type="text" placeholder="New Name" name="name" value="${plant.name}"/>
		<br>

		
		<label for="botanicalName">Botanical Name: </label>
		<input id="botanicalName" type="text" placeholder="New Botanical Name" name="botanicalName" value="${plant.botanicalName}"/>
		<br>
		
		<label for="humidity">Humidity Requirement: </label>
		<input id="humidity" type="text" placeholder="Low, Moderate, High" name="humidity" value="${plant.humidity}"/>
		<br>
			
		<label for="light">Light Requirements: </label>
		<input id="light" type="text" placeholder="Low, Bright, Indirect, Direct" name="light" value="${plant.light}"/>
		<br>
			 
		<label for="care">Level of Experience: </label>
		<input id="care" type="text" placeholder="Beginner, Intermediate, Advanced" name="care" value="${plant.care}"/>
		<br>
			
	
	 <input type="submit"/>
	</form>
	

</body> 
</html>
	