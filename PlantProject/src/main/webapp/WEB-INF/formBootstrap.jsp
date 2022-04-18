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

h1 {
font-size: 30px;}

.col1 {
  width: 40%;
  display: inline-block;
}

.col2 {
  width: 60%;
  display: inline-block;
  padding-left: 100px;


}
.main-block {
   display: flex;
   justify-content: center;
   align-items: center;
   background: #fff;
   }
   
   form {
   width: 100%;
   padding: 10px;
   }
   
   fieldset {
   border: none;
   border-top: 1px solid #8ebf42;
   }
   
   .plant-details, .light-details {
   display: flex;
   flex-wrap: wrap;
   justify-content: space-between;
   }
   
   .plant-details >div, .light-details >div >div {
   display: flex;
   align-items: center;
   margin-bottom: 5px;
   }
   
   .plant-details >div, .light-details >div, input, label {
   width: 100%;
   }
   
   label {
   padding: 0 5px;
   text-align: right;
   vertical-align: middle;
   }
   
   input {
   padding: 5px;
   vertical-align: middle;
   }
   
   .checkbox {
   margin-bottom: 10px;
   }
   
   select, .experience, .size-block {
   width: calc(100% + 26px);
   padding: 5px 0;
   }
   
   select {
   
   background: transparent;
   }
   
   .experience input {
   width: auto;
   }
   
   .experience label {
   padding: 0 5px 0 0;
   }
   
   .size-block {
   display: flex;
   justify-content: space-between;
   }
   
   .potSize select.potSize {
   width: 25px;
   }
   
   .potSize select.mounth {
   width: calc(100% - 94px);
   }
   
   .potSize input {
   width: 25px;
   height: 20px;
   vertical-align: unset;
   }
   
   .checkbox input {
   width: auto;
   margin: -2px 10px 0 0;
   }
   
   .checkbox a {
   color: #8ebf42;
   }
   
   .checkbox a:hover {
   color: #82b534;
   }
   
   button {
   width: 100%;
   padding: 10px 0;
   margin: 10px auto;
   border-radius: 5px;
   border: none;
   background: pink;
   font-size: 14px;
   font-weight: 600;
   color: #fff;
   }
   
   button:hover {
   background: #82b534;
   }
   
   @media (min-width: 568px) {
   .plant-details >div, .light >div {
   width: 50%;
   }
   
   label {
   width: 40%;
   }
   
   input {
   height: 20px;
   width: 100px;
   }
   
   select, .experience, .size-block {
   width: calc(60% + 16px);
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