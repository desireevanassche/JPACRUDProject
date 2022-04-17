
   
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


	<h1>Which plant would you like to delete? </h1>
	<br>
	      <p id="keyHead">Delete a Plant</p>
      <form action="deleteplant.do" method="POST">

      		<label for="id"></label> <input type="text" name="id" placeholder="Please Enter an ID">

      		<input type="submit" value="delete"/>

      	</form>
	
	</body>
</html>

