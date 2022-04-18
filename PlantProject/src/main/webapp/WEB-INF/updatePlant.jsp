<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add a Plant</title>
</head>

<body>
<%@include file="formBootstrap.jsp"%> 


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

	<h1>Update Plant</h1> <BR>


	<div id="updateFrom">
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
	</div>
	

</body> 
</html>
	