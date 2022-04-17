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


	<c:choose>

		<c:when test="${! empty plant}">

			<ul>
				<h3>${plant.id}: Plant Name: ${plant.name}</h3>

				<li>Botanical Name: ${plant.botanicalName}</li>
				<li>Type: ${plant.type}</li>
				<li>Humidity: ${plant.humidity}</li>
				<li>Light: ${plant.light}</li>
				<li>Care: ${plant.care}</li>

			<form action="updatePlantById.do" method="GET">
				<button name="id" type="submit" value="${plant.id}">Update</button>
			</form>

			<br>

			<form action="deleteplant.do" method="POST">
				<button name="id" type="submit" value="${plant.id}">DELETE</button>
			</form>



			</ul>
		</c:when>

		<c:when test="${! empty plants}">
			<ul>
				<h3>Here is what we found:</h3>
				<c:forEach var="p" items="${plants}">

					<br>Plant Id: ${p.id }</li>
					<li>Plant Name: ${p.name}</li>
					<li>Botanical Name: ${p.botanicalName}</li>
					<li>Type: ${p.type}</li>
					<br>
				</c:forEach>
		</c:when>
		
		
		<c:otherwise>
			<p>No Plant found!</p>
		</c:otherwise>


	</c:choose>
</body>
</html>

