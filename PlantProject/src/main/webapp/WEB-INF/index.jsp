<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>House of Plants</title>

<link href="assets/vendor/aos/aos.css" rel="stylesheet">
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

        </section>
    <!-- End About Section -->
    
    <section id="makeChanges" class="makeChanges section-bg">
      <div class="container">

        <div class="row">
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
            <div class="card">
              <div class="card-icon">
              </div>
              <div class="card-body">

                <p class="card-image"><img src="https://live.staticflickr.com/65535/52012339689_b9a9cbe8e6_w.jpg" width="250" height="250" alt="plant"></a><h5 class="card-title"><a href="plantForm.do">Add an Entry</a></h5>

                 </p>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
            <div class="card">
              <div class="card-icon">
              </div>
              <div class="card-body">

                <p class="card-image"><img src="https://live.staticflickr.com/65535/52012326219_b98cf2085f_o.png" width="250" height="250" alt="plant"></a></p>
                  <h5 class="card-title"><a href="updateForm.do">Edit an Entry</a></h5>
              </div>
            </div>
          </div>
          <div class="col-lg-4 col-md-6 d-flex align-items-stretch">
            <div class="card">
              <div class="card-icon">
              </div>
              <div class="card-body">

                <p class="card-image"><img src="https://live.staticflickr.com/65535/52012173113_346c9b7825_w.jpg"
				width="250" height="250" alt="plant"></a>
      <h5 class="card-title"><a href="">See All</a></h5> </p>

              </div>
            </div>
          </div>
        </div>

      </div>
    </section><!-- End Why Us Section -->


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