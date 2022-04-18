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
  <!--   <form class="form-inline my-2 my-lg-0">
      <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
      <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button> 
    </form> -->
  </div>
</nav>


<main class="container-fluid">

  <section id="homePageDecoration" class="d-flex flex-column justify-content-center align-items-center">
    <div class="home-container" data-aos="fade-in">

      <div class="row no-gutters">

        <div class="col1" id="leftSide">
        <img src="https://live.staticflickr.com/65535/52012326219_b98cf2085f_o.png" width="250" height="250" alt="plant">
          

        </div>

        <div class="col2" id="rightSide">
          
           <div class="main-block">
   <form action="addPlant.do" method="POST" id="createForm">
     <h1>Add a Plant to the Database</h1>
     <fieldset>

       <div  class="plant-details">

         <div><label for="name">Name</label><input type="text" name="name" required></div>


         <div><label for="botanicalName">Botanical Name:</label><input type="text" name="botanicalName"></div>

         <div><label for="type">Type</label><input type="text" name="type"></div>


      <div>
             <label>Light Requirement</label>
             <select>

               <option value="Low">Low</option>
               <option value="Low Indirect">Low Indirect</option>
                <option value="Low Indirect - Moderate">Low Indirect - Moderate</option>
               <option value="Moderate">Moderate</option>
               <option value="Bright Indirect">Bright Indirect</option>
               <option value="Bright Direct">Bright Direct</option>

             </select></div>

          
            <div><label>Pot Size</label>
               <select class="potSize" name=potSize>

                 <option value="2">2</option>
                 <option value="4">4</option>
                 <option value="6">6</option>
                 <option value="8">8</option>
                 <option value="10">10</option>
                 <option value="12">12</option>
                 <option value="14">14</option>
                 <option value="18">08</option>
                 <option value="24">09</option>


               </select></div>
            
</div>
     </fieldset>

     <button type="submit">Submit</button>
   </form>
   </div>
          
          
          
          
        </div>
      </div>

    </div>
  </section><!-- homePageDecoration -->

</main>






	<!-- <h1>Add a Plant to the Database</h1>
	<br>

	<form action="addPlant.do" method="POST" id="createForm">

		<label for="name">Name: </label> <input type="text" name="name"><br>

		<label for="botanicalName">Botanical Name: </label> <input type="text"
			name="botanicalName"><br> 
			
			<label for="type">type</label> 
		
		<input type="text" name="type"> <label for="type">type
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
 -->
	</form>
</body>
</html>