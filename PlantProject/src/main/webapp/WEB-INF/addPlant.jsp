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

	<!-- 	id
	name
	 botanicalName
	 type
	  light
	   potSize
	     care
	   -- dont add height
	    --- dont add price
	    humidity; -->


	<h1>Add a Plant to the Database</h1>
	<br>

	<form action="addPlant.do" method="POST" id="createForm">

		<label for="name">Name: </label> <input type="text" name="name"><br>

		<label for="botanicalName">Botanical Name: </label> <input type="text"
			name="botanicalName"><br> 
			
			<label for="type">type
		</label> 
		
		<input type="text" name="type"> <label for="type">type
		</label> 
		<input type="text" name="type"> <label for="light">light:
		</label> 
		
		<select name="light" id="light">
			<option value="Beginner">Beginner</option>
			<option value="Intermediate">Intermediate</option>
			<option value="Advanced">Advanced</option> </select><br> 
			
			<label for="potSize">potSize: </label> <select
			name="potSize">
			<option value="2">2</option>
			<option value="4">4</option>
			<option value="6">6</option>
			<option value="8">8</option>
			<option value="10">10</option>
			<option value="12">12</option>
			<option value="14">14</option>
			<option value="18">18</option>
			<option value="24">19</option>

		</select> <br> <input type="submit" value="Add Plant" /> <br>

	</form>
</body>
</html>