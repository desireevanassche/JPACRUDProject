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
        <a class="nav-link" href="home.do">Home <span class="sr-only">(current)</span></a>
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
      
        </div>
      </li>
   
    </ul>

  </div>
</nav>


<main class="container-fluid">


      <div class="row no-gutters">

        <div class="col1" id="leftSide">
        <img src="https://live.staticflickr.com/65535/52020248441_c1379726f6_z.jpg" width="560" height="640" alt="Varigated Rubber Tree">

        </div>

        <div class="col2" id="rightSide">
          
    
   <form action="addPlant.do" method="POST" id="createForm">
     
     <h1>Add a Plant to the Database</h1>
     <fieldset>

   

      <label for="name">Name</label><input type="text" name="name" required>

<br>
       <label for="botanicalName">Botanical Name:</label><input type="text" name="botanicalName">
<br>
       <label for="type">Type:</label><input type="text" name="type">
<br>


             <label>Light Requirement</label>
             <select>

               <option value="Low">Low</option>
               <option value="Low Indirect">Low Indirect</option>
                <option value="Low Indirect - Moderate">Low Indirect - Moderate</option>
               <option value="Moderate">Moderate</option>
               <option value="Bright Indirect">Bright Indirect</option>
               <option value="Bright Direct">Bright Direct</option>

             </select>
	<br>
          
           <label>Pot Size</label>
               <select class="potSize" name="potSize">

                 <option value="2">2</option>
                 <option value="4">4</option>
                 <option value="6">6</option>
                 <option value="8">8</option>
                 <option value="10">10</option>
                 <option value="12">12</option>
                 <option value="14">14</option>
                 <option value="18">08</option>
                 <option value="24">09</option>


               </select><br>
               
           <label>Care Level</label>
               <select class="care" name="care">

                 <option value="Beginner">Beginner</option>
                 <option value="Intermediate">Intermediate</option>
                 <option value="Advanced">Advanced</option>
               </select><br>
               
           <label>Humidity Requirement</label>
               <select class="humidity" name="humidity">
                 <option value="Low">Low</option>
                 <option value="Low - Moderate">Low - Moderate</option>
                 <option value="Moderate">Moderate</option>
                 <option value="Moderate - High">Moderate - High</option>
                 <option value="High">High</option>
               </select><br>
            
            

     </fieldset>

     <button type="submit">Submit</button>
   </form>
   </div>
          
          
          
          
        </div>
 

</main>
</body>
</html>