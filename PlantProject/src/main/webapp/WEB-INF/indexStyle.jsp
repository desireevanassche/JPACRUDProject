<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<meta content="width=device-width, initial-scale=1.0" name="viewport">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<link
	href="https://live.staticflickr.com/65535/52002236724_7372269f0c_o.png"
	rel="icon">
<link
	href="https://live.staticflickr.com/65535/52002236724_7372269f0c_o.png"
	rel="apple-touch-icon">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link
	href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;400&family=Yeseva+One&display=swap"
	rel="stylesheet">

<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"
	crossorigin="anonymous">
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">

<link href="assets/vendor/aos/aos.css" rel="stylesheet">

<link href="assets/vendor/bootstrap/css/bootstrap.min.css"
	rel="stylesheet">

<link href="assets/vendor/bootstrap-icons/bootstrap-icons.css"
	rel="stylesheet">

<link href="assets/vendor/boxicons/css/boxicons.min.css"
	rel="stylesheet">


</head>

<body>

	<nav class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="#">Home
					<span class="sr-only">(current)</span>
			</a></li>
			<li class="nav-item"><a class="nav-link" href="#">Link</a></li>
			<li class="nav-item dropdown"><a
				class="nav-link dropdown-toggle" href="#" id="navbarDropdown"
				role="button" data-toggle="dropdown" aria-haspopup="true"
				aria-expanded="false"> Dropdown </a>
				<div class="dropdown-menu" aria-labelledby="navbarDropdown">
					<a class="dropdown-item" href="#">Action</a> <a
						class="dropdown-item" href="#">Another action</a>
					<div class="dropdown-divider"></div>
					<a class="dropdown-item" href="#">Something else here</a>
				</div></li>
			<li class="nav-item"><a class="nav-link disabled" href="#">Disabled</a>
			</li>
		</ul>
		<form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="search"
				placeholder="Search" aria-label="Search">
			<button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
		</form>
		</div>
	</nav>


	<style>
body {
	font-family: 'Source Sans Pro', sans-serif;
	color: #272829;
}

a {
	color: #743e1d;
	text-decoration: none;
}

a:hover {
	color: #B37548;
	text-decoration: none;
}

h1, h2, h3, h4, h5, h6 {
	font-family: 'Yeseva One', cursive;
}

#viewAll {
	padding-top: 50px;
}

#tableHead {
	align-content: center;
	padding-top: 2px;
}

button {
	display: inline-block;
	width: 100px;
	padding: 2px 0;
	margin: 2px auto;
	border-radius: 5px;
	border: none;
	background: #743e1d;
	font-size: 14px;
	font-weight: 600;
	color: #fff;
}

input[type=submit]   {
height: 30px;
	display: inline-block;
	width: 100px;
	padding: 2px 0;
	margin: 2px auto;
	border-radius: 5px;
	border: none;
	background: #743e1d;
	font-size: 14px;
	font-weight: 600;
	color: #fff;
} 

input[type=submit]:hover {
	background: #292F1E;
}

input {
	border-radius: 5px;
}

.outer {
	width: 200px;
	text-align: center;
}

.inner {
	display: inline-block;
}

button:hover {
	background: #B37548;
}

.col1 {
	width: 50%;
	display: inline-block;
}

.col2 {
	width: 50%;
	display: inline-block;
	padding-left: 100px;
}

#homePageDecoration {
	width: 100%;
	height: 100vh;
	background:
		url("https://live.staticflickr.com/65535/52006366091_d0fc533e96_o.png")
		center center;
	background-size: cover;
	position: relative;
	margin-top: -80px;
	z-index: 9;
}

#home .home-container {
	position: absolute;
	bottom: 0;
	top: 0;
	left: 0;
	right: 0;
	display: flex;
	justify-content: center;
	align-items: center;
	flex-direction: column;
	text-align: center;
	padding: 0 15px;
}

#homePageDecoration h1 {
	font-size: 75px;
	margin-top: 50px;
	line-height: 56px;
	color: #EBE6E4;
}

#homePageDecoration p {
	display: inline-block;
	text-align: left;
	font-size: 35px;
	font-family: 'Source Sans Pro', sans-serif;
	font-weight: 400;
	color: #EBE6E4;
}

@media ( min-width : 1024px) {
	#homePageDecoration {
		background-attachment: fixed;
	}
}

section {
	padding: 60px 0;
	overflow: hidden;
}

.section-title, #aboutHead {
	color: #22391B;
}

.section-bg {
	background: #EBE6E4;
}

.section-title {
	padding-bottom: 60px;
}

.section-title h2 {
	font-size: 32px;
	font-weight: bold;
	margin-bottom: 5px;
	padding-bottom: 5px;
	position: relative;
	color: #173b6c;
}

.section-title p {
	margin-bottom: 0;
}

.about .content h3 {
	font-weight: 700;
	font-size: 26px;
	color: #173b6c;
}

/* ------------Start .makeChanges --------------*/
.makeChanges {
	padding-bottom: 30px;
}

.makeChanges .card {
	border-radius: 3px;
	border: 0;
	box-shadow: 0px 2px 15px rgba(0, 0, 0, 0.1);
	margin-bottom: 30px;
}

.makeChanges .card-body {
	width: 300px;
	padding-top: 12px;
}

.makeChanges .card-title {
	font-weight: 400;
	text-align: center;
}

.makeChanges .card-title a {
	color: #743e1d;
}

.makeChanges .card-title a:hover {
	color: #B37548;
}

.makeChanges .card-image {
	justify-content: center;
	align-items: center;
}

@media ( max-width : 1024px) {
	.makeChanges {
		background-attachment: scroll;
	}
}

@media ( max-width : 1024px) {
	.makeChange-us {
		background-attachment: scroll;
	}
}
</style>


	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
		integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous">
		
	</script>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js"
		integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
		crossorigin="anonymous"></script>


	

</body>
</html>