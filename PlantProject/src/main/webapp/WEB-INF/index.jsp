<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>House of Plants</title>


</head>
<body>

<%@include file="bootstrap.jsp"%> 

<main class="container-fluid">

  <section id="homePageDecoration" class="d-flex flex-column justify-content-center align-items-center">
    <div class="home-container" data-aos="fade-in">

      <div class="row no-gutters">

        <div class="col1" id="leftSide">
          <p id="portfolio">
          </ul>

        </div>

        <div class="col2" id="rightSide">
          <h1>Browse our Botanicals</h1>
          <p>Search: <span class="typed" data-typed-items="Monsteras, Pothos, Fiddle Leaf Figs, Snake Plants"></span></p>
       <form action="plantbykey.do" method="GET">
   <input type="text" name="keyword" placeholder="Enter Keyword" />
  <input type="submit" value="Search" />
</form>
        </div>
      </div>

    </div>
  </section><!-- homePageDecoration -->

  <main id="main">



<h1>Welcome to Plant Site</h1>

<a href="plantForm.do">Add a plant</a>
<a href="deleteForm.do">Delete a plant</a>
<a href="updateForm.do">Update a plant</a>


<form action="getPlant.do" method="GET">
  Film ID: <input type="text" name="pid" />
  <input type="submit" value="Show Plant" />
</form>


<form action="plantbykey.do" method="GET">
  Plant KeyWord Search: <input type="text" name="keyword" placeholder="Search by Keyword" />
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
<td>${p.id}</td>
<td><a href = "getPlant.do?pid=${p.id}">${p.name}</a></td>
</tr>
</c:forEach>

</tbody>
</table>

</main>
</body>
</html>