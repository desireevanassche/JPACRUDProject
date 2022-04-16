<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link rel="stylesheet" href="css/index.css">

</head>
<body>


<main class="container-fluid">
<h1>WELCOME TO PLANT SITE</h1>


<form action="getPlant.do" method="GET">
  Film ID: <input type="text" name="pid" />
  <input type="submit" value="Show Plant" />
</form>

<table>
<thead> 
<tr>
<th>ID</th>
<th>title</th>
</tr> </thead>


<tbody>
<c:forEach var="p" items="${plants}">
<tr>
<td>${f.id}</td>
<td><a href = "getPlant.do?pid=${p.id }">${p.title}</a></td>
</tr>
</c:forEach>

</tbody>
</table>

</main>
</body>
</html>