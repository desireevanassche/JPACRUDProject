<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Delete Fail</title>
</head>

<body>
<%@include file="generalUseBoot.jsp"%> 



  <section id="homePageDecoration" class="d-flex flex-column justify-content-center align-items-center">
    <div class="home-container" data-aos="fade-in">

      <div class="row no-gutters">

        <div class="col1" id="leftSide">
          

        </div>

        <div class="col2" id="rightSide">
          
          <h1>Delete Failed</h1>
          <h3>Please try again</h3>

   </div>
          
          
          
          
        </div>
      </div>
  </section>

<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="home.do">House of Plants</a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item active">
        <a class="nav-link" href="home.do">Home <span class="sr-only">(current)</span></a>
        <a class="nav-link" href="idSearch.do">Search by ID</a>
        <a class="nav-link" href="plantForm.do">Add an Entry</a>
        <a class="nav-link" href="updateForm.do">Update an Entry</a>
      </li>
     
  
   
    </ul>
 
  </div>
</nav>


</body> 
</html>