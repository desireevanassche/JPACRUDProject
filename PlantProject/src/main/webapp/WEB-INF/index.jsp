<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>House of Plants</title>

<link href="assets/vendor/aos/aos.css" rel="stylesheet">
</head>
<body>

	<%@include file="indexStyle.jsp"%>



	<main class="container-fluid">

		<section id="homePageDecoration"
			class="d-flex flex-column justify-content-center align-items-center">
			<div class="home-container" data-aos="fade-in">

				<div class="row no-gutters">

					<div class="col1" id="leftSide"></div>

					<div class="col2" id="rightSide">
						<h1>Browse our Botanicals</h1>
						<br>
						<!--  --><!-- <p>Search: <span class="typed" data-typed-items="Monsteras, Pothos, Fiddle Leaf Figs, Snake Plants"></span -->

						<form action="plantbykey.do" method="GET">
							<input type="text" name="keyword" placeholder="Enter Keyword" />
							<input type="submit" value="Search" />
						</form>
					</div>
				</div>

			</div>
		</section>
		<!-- homePageDecoration -->

	</main>

	<!-- End About Section -->

	<section id="makeChanges" class="makeChanges section-bg">
		<div class="container">

			<div class="row">
				<div class="col-lg-4 col-md-6 d-flex align-items-stretch">
					<div class="card">
						<div class="card-icon"></div>
						<div class="card-body">

							<p class="card-image">
								<img
									src="https://live.staticflickr.com/65535/52012339689_b9a9cbe8e6_w.jpg"
									width="250" height="250" alt="plant"></a>
							<h5 class="card-title">
								<a href="plantForm.do">Add an Entry</a>
							</h5>

							</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 d-flex align-items-stretch">
					<div class="card">
						<div class="card-icon"></div>
						<div class="card-body">

							<p class="card-image">
								<img
									src="https://live.staticflickr.com/65535/52012326219_b98cf2085f_o.png"
									width="250" height="250" alt="plant"></a>
							</p>
							<h5 class="card-title">
								<a href="updateForm.do">Edit an Entry</a>
							</h5>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6 d-flex align-items-stretch">
					<div class="card">
						<div class="card-icon"></div>
						<div class="card-body">

							<p class="card-image">
								<img
									src="https://live.staticflickr.com/65535/52012173113_346c9b7825_w.jpg"
									width="250" height="250" alt="plant"></a>
							<h5 class="card-title">
								<a href="idSearch.do">ID Lookup</a>
							</h5>
							</p>

						</div>
					</div>
				</div>
			</div>

		</div>
	</section>
	<b></b>








	<main class="container-fluid" id="viewAll">
		<br>
		<br>
		<h2 id="tableHead">House of Plants Botanical Database</h2>
		<br>


		<table class="table table-striped">
			<thead class="table-light">
				<tr>
					<th>ID</th>
					<th>Name</th>
					<th>Botanical Name</th>
					<th>Make Changes</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach var="p" items="${plants}">
					<tr>
						<td>${p.id}</td>
						<td><a href="getPlant.do?pid=${p.id}">${p.name}</a></td>
						<td>${p.botanicalName }</td>
						<td>
							<div id="outer">

								<div class="inner">
									<form action="updatePlantById.do" method="GET">
								<button name="id" type="submit" value="${p.id}">Update</button>
								</form>
							</div>

							<div class="inner">
								<form action="deleteplant.do" method="POST">
									<button name="id" type="submit" value="${p.id}">Delete</button>
								</form>
							</div>
							</div>

						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>

	</main>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
		crossorigin="anonymous"></script>

	<nav class="navbar navbar-expand-lg navbar-light bg-light">
		<a class="navbar-brand" href="home.do">Botanical Database</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse"
			data-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>

		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mr-auto">
				<li class="nav-item active"><a class="nav-link" href="home.do">Home
						<span class="sr-only">(current)</span>
				</a></li>
				<li class="nav-item"><a class="nav-link" href="keySearch.do">Search
						by Keyword</a></li>
				<li class="nav-item"><a class="nav-link" href="idSearch.do">Search
						by ID</a></li>

				<li class="nav-item"><a class="nav-link" href="plantForm.do">Add
						an Entry</a></li>

				<li class="nav-item"><a class="nav-link" href="updateForm.do">Update
						an Entry</a></li>


			</ul>
		</div>
	</nav>


</body>
</html>