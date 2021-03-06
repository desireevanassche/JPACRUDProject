<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
   <meta content="width=device-width, initial-scale=1.0" name="viewport">

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

  <link href="https://live.staticflickr.com/65535/52002236724_7372269f0c_o.png" rel="icon">
  <link href="https://live.staticflickr.com/65535/52002236724_7372269f0c_o.png" rel="apple-touch-icon">

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Source+Sans+Pro:wght@200;400&family=Yeseva+One&display=swap" rel="stylesheet">

<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3"crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
	
 <link href="assets/vendor/aos/aos.css" rel="stylesheet">

  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">

  <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">


</head>

<body>




<style> 

body {
  font-family: 'Source Sans Pro', sans-serif;
  color: #272829;
}

a {
  color: #149ddd;
  text-decoration: none;
}

a:hover {
  color: #37b3ed;
  text-decoration: none;
} 

h1, h2, h3, h4, h5, h6 {
font-family: 'Yeseva One', cursive;
}




/*--------END NAV BAR MENU ---------------------------------------*/

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
  background: url("https://live.staticflickr.com/65535/52006366091_d0fc533e96_o.png") center center;
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

@media (min-width: 1024px) {
  #homePageDecoration {
    background-attachment: fixed;
  }
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

	
 <script src="assets/vendor/purecounter/purecounter.js"></script>
  <script src="assets/vendor/aos/aos.js"></script>
  <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
  <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
  <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>
  <script src="assets/vendor/typed.js/typed.min.js"></script>
  <script src="assets/vendor/waypoints/noframework.waypoints.js"></script>
  <script src="assets/js/main.js"></script>
	
	</body>
</html>