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

 <%@include file="singleSearch.jsp"%>  


<nav class="navbar navbar-expand-lg navbar-light bg-white">
  <a class="navbar-brand" href="#">House of Plants</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.do">Home <span class="sr-only">(current)</span></a>
      </li>

      <li class="nav-item dropdown">
        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
         Manage Database
        </a>
        <div class="dropdown-menu" aria-labelledby="navbarDropdown">
          <a class="dropdown-item" href="home.do">Home</a>
          <a class="dropdown-item" href="keySearch.do">Search by Keyword</a>
          <a class="dropdown-item" href="idSearch.do">Search by ID</a>
          <a class="dropdown-item" href="plantForm.do">Add an Entry</a>
          <a class="dropdown-item" href="updateForm.do">Update an Entry</a>
         
        </div>
      </li>

    </ul>

  </div>
</nav>


<main class="container-fluid">

  <section id="searchKeyword" class="d-flex flex-column justify-content-center align-items-center">
    <div class="home-container" data-aos="fade-in">

      <div class="row no-gutters">

        <div class="col1" id="leftSide">
       <img src="https://live.staticflickr.com/65535/52004113667_cce4cda9b5_c.jpg" width="533" height="800" alt="Chinese Money Plant">


        </div>

        <div class="col2" id="rightSide">

          <h1>Keyword Search</h1>
	<br>
	

<form action="plantbykey.do" method="GET">
  Plant KeyWord Search: <input type="text" name="keyword" />
  <input type="submit" value="Show Plant" />
</form> 


        </div>
      </div>

    </div>
  </section>

</main>
</body>
</html>






