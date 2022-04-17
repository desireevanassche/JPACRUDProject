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

<%-- <c:choose>
	<c:when test="${empty plant}">
  	No plant found
	</c:when>
	<c:otherwise> --%>
	<form action="updatePlant.do" method="get">
		<label>plant ID: <input type="text" name="id" value="${plant.id}" /></label><br />
		<label>Plant Name: <input type="text" name="name" value="${plant.name}" /></label><br /> 
		<label>Botanical Name: <input type="text" name="botanicalName" value="${plant.botanicalName}" /></label><br /> 
		<label>Humidity: <input type="text" name="type" value="${plant.humidity}" /></label><br /> 
		<label>Light: <input type="text" name="light" value="${plant.light}" /></label><br /> 
  	<label>Care: <input type="text" name="care" value="${plant.care}" /></label><br /> 
		<input type="submit" value="Update" />
	</form>
<%-- 	</c:otherwise>
</c:choose>
 --%>


<%-- 	<%
	String passedPlantId = request.getParameter("plantId");
	%>
	
	<%
	String passedPlantName = request.getParameter("plantname");
	%>
	
	<%
	String passedBotanicalName = request.getParameter("plantBotanicalName");
	%>
	
	<%
	String passedLight = request.getParameter("plantLight");
	%>
	
	<%
	String passedCare = request.getParameter("plantCare");
	%>
	
	<%
	String passedHumidity = request.getParameter("plantHumidity");
	%>





			
		<h1>Editing Plant Id: <%=passedPlantId%></h1>
			<br>

			<form action="updateplant.do" method="POST" id="updateForm">


				<label for="id"></label> <input type="hidden" name="id" value="<%=passedPlantId%>"> 
				<label for="name"> Name </label> <input type="text" name="name" value="<%=passedPlantName%>" style="width: 250px;"> <br>
				<label for="botanicalName">Botanical Name </label> <input type="text" name="botanicalName" value="<%=passedBotanicalName%>" style="width: 250px;"> <br>
				
				<label for="light">light </label> <select name="light" id="light" value="<%=passedLight%>">
					<option value="Low Indirect">Low Indirect</option>
					<option value="Low - Moderate Indirect">Low - Moderate Indirect</option>
					<option value="Bright Direct ">Bright Direct </option>
					<option value="Bright Indirect "> Bright Indirect </option>
				
				</select>
				
				<label for="humidity">Humidity </label> <select
					name="humidity" value="<%=passedHumidity%>">
					<option value="Low">Low</option>
					<option value="Low - Moderate">Low - Moderate</option>
					<option value="Moderate">Moderate</option>
					<option value="Moderate - High">Moderate - High</option>
					<option value="High">High</option>
					</select>
				
				<label for="care">care </label> <select
					name="care" value="<%=passedCare%>">
					<option value="Beginner">Beginner</option>
					<option value="Intermediate">Intermediate</option>
					<option value="Advanced">Advanced</option>
					
				</select> <br> 
				<input type="submit" value="Update" />

			</form> --%>



</form> <!--  -->
</body>
</html>