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

			<ul id="show">
				<h3>Plant by Keyword</h3>


				<li>Plant Name: ${plant.name}</li>
				<li>Botanical Name: ${plant.botanicalName}</li>
				<li>Type: ${plant.type}</li>



				<%-- <form action="updatefilm.jsp" method="GET">
					<input type="hidden" name="filmId" value="${film.id}" /> <input
						type="hidden" name="filmTitle" value="${film.title}" /> <input
						type="hidden" name="filmDescription" value="${film.description}" />
					<input type="hidden" name="filmLanguageId" value="${film.language}" />
					<input type="hidden" name="filmReleaseYear"
						value="${film.releaseYear}" /> <input type="hidden"
						name="filmRating" value="${film.rating}" /> <input type="submit"
						value="Edit Film Data" />
				</form> --%>

				<%-- 	<form action="deletefilm.do" method="POST">
					<input type="hidden" name="id" value="${film.id}" /> <input
						type="hidden" name="filmTitle" value="${film.title}" /> 
						 <input type="submit"
						value="Delete Film" />
				</form> --%>



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

