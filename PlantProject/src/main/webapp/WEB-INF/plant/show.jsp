<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Show Results</title>



</head>

 

<body>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#">House of Plants</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="#">Home <span class="sr-only">(current)</span></a>
      </li>
     
      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Manage Database
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="keySearch.do">Search by Keyword</a>
          <a class="dropdown-item" href="idSearch.do">Search by ID</a>
          <a class="dropdown-item" href="plantForm.do">Add an Entry</a>
          <a class="dropdown-item" href="updateForm.do">Update an Entry</a>
          <a class="dropdown-item" href="#">View All</a>
        </div>
      </li>
   
    </ul>
 
  </div>
</nav>


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

