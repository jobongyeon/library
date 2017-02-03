<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>admin Rental</title>
<!-- 부트스트랩/css -->
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Raleway">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<link href="https://fonts.googleapis.com/css?family=Montserrat"	rel="stylesheet" type="text/css">
<link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<!-- 대여날짜 프론트에서 보여주는 역할만 -->
<script type="text/javascript">
function RentalDate () {
	var RentalDay = new Date();
	var RentalMonth = RentalDay.getMonth()+1;
	var RentalDate = RentalDay.getDate();
	if ( RentalMonth < 10) RentalMonth = "0"+RentalMonth;
	if ( RentalDate < 10) RentalDate = "0"+RentalDate;
	document.getElementById("RentalDate").value = RentalDay.getFullYear()+"년"+RentalMonth+"월"+RentalDate+"일";
	}
function addLoadEvent(func) {
	var oldonload = window.onload;
	if (typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function() {
			if (oldonload) {
				oldonload();
			}
			func();
		}
	}
}
addLoadEvent(function() {
	RentalDate();
});
</script>
<!-- 반납날짜  프론트에서 보여주는 역할만 -->
<script type="text/javascript">
function returnExpectDate() {
	var day = new Date();
	var month = day.getMonth()+1;
	var date = day.getDate()+5;
	if ( month < 10) month = "0"+month;
	if ( date < 10) date = "0"+date;
	document.getElementById("returnExpectDate").value = day.getFullYear()+"년"+month+"월"+date+"일";
}
function addLoadEvent(func) {
	var oldonload = window.onload;
	if (typeof window.onload != 'function') {
		window.onload = func;
	} else {
		window.onload = function() {
			if (oldonload) {
				oldonload();
			}
			func();
		}
	}
}
addLoadEvent(function() {
	returnExpectDate();
});
</script>
<!-- 부트스트랩/css -->
<style>
body {
	font: 400 15px Lato, sans-serif;
	line-height: 1.8;
	color: #818181;
}

h2 {
	font-size: 24px;
	text-transform: uppercase;
	color: #303030;
	font-weight: 600;
	margin-bottom: 30px;
}

h4 {
	font-size: 19px;
	line-height: 1.375em;
	color: #303030;
	font-weight: 400;
	margin-bottom: 30px;
}

.jumbotron {
	background-color: #f4511e;
	color: #fff;
	padding: 100px 25px;
	font-family: Montserrat, sans-serif;
}

.container-fluid {
	padding: 60px 50px;
}

.bg-grey {
	background-color: #f6f6f6;
}

.logo-small {
	color: #f4511e;
	font-size: 50px;
}

.logo {
	color: #f4511e;
	font-size: 200px;
}

.thumbnail {
	padding: 0 0 15px 0;
	border: none;
	border-radius: 0;
}

.thumbnail img {
	width: 100%;
	height: 100%;
	margin-bottom: 10px;
}

.carousel-control.right, .carousel-control.left {
	background-image: none;
	color: #f4511e;
}

.carousel-indicators li {
	border-color: #f4511e;
}

.carousel-indicators li.active {
	background-color: #f4511e;
}

.item h4 {
	font-size: 19px;
	line-height: 1.375em;
	font-weight: 400;
	font-style: italic;
	margin: 70px 0;
}

.item span {
	font-style: normal;
}

.panel {
	border: 1px solid #f4511e;
	border-radius: 0 !important;
	transition: box-shadow 0.5s;
}

.panel:hover {
	box-shadow: 5px 0px 40px rgba(0, 0, 0, .2);
}

.panel-footer .btn:hover {
	border: 1px solid #f4511e;
	background-color: #fff !important;
	color: #f4511e;
}

.panel-heading {
	color: #fff !important;
	background-color: #f4511e !important;
	padding: 25px;
	border-bottom: 1px solid transparent;
	border-top-left-radius: 0px;
	border-top-right-radius: 0px;
	border-bottom-left-radius: 0px;
	border-bottom-right-radius: 0px;
}

.panel-footer {
	background-color: white !important;
}

.panel-footer h3 {
	font-size: 32px;
}

.panel-footer h4 {
	color: #aaa;
	font-size: 14px;
}

.panel-footer .btn {
	margin: 15px 0;
	background-color: #f4511e;
	color: #fff;
}

.navbar {
	margin-bottom: 0;
	background-color: #f4511e;
	z-index: 9999;
	border: 0;
	font-size: 12px !important;
	line-height: 1.42857143 !important;
	letter-spacing: 4px;
	border-radius: 0;
	font-family: Montserrat, sans-serif;
}

.navbar li a, .navbar .navbar-brand {
	color: #fff !important;
}

.navbar-nav li a:hover, .navbar-nav li.active a {
	color: #f4511e !important;
	background-color: #fff !important;
}

.navbar-default .navbar-toggle {
	border-color: transparent;
	color: #fff !important;
}

footer .glyphicon {
	font-size: 20px;
	margin-bottom: 20px;
	color: #f4511e;
}

.slideanim {
	visibility: hidden;
}

.slide {
	animation-name: slide;
	-webkit-animation-name: slide;
	animation-duration: 1s;
	-webkit-animation-duration: 1s;
	visibility: visible;
}

@
keyframes slide { 0% {
	opacity: 0;
	transform: translateY(70%);
}

100%
{
opacity






:



 



1;
transform






:



 



translateY






(0%);
}
}
@
-webkit-keyframes slide { 0% {
	opacity: 0;
	-webkit-transform: translateY(70%);
}

100%
{
opacity






:



 



1;
-webkit-transform






:



 



translateY






(0%);
}
}
@media screen and (max-width: 768px) {
	.col-sm-4 {
		text-align: center;
		margin: 25px 0;
	}
	.btn-lg {
		width: 100%;
		margin-bottom: 35px;
	}
}

@media screen and (max-width: 480px) {
	.logo {
		font-size: 150px;
	}
}
</style>
</head>
<!-- 상단가로바 -->
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
	<nav class="navbar navbar-default navbar-fixed-top">
		<div class="container">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span> 
					<span class="icon-bar"></span>
				</button>
				<a class="navbar-brand" href="/lib/adminHome">Home</a>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav navbar-right">
					<li><a href="/lib/adminLibrary">도서관관리</a></li>
					<li><a href="/lib/adminBook">도서관리</a></li>
					<li><a href="/lib/adminRental">도서대여/반납</a></li>
					<li><a href="#pricing">회원관리</a></li>
					<li><a href="/lib/adminLogout">로그아웃</a></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- 사이드바 -->
	<nav class="w3-sidenav w3-collapse w3-white w3-animate-left" style="z-index: 3; width: 300px; margin-top:50px; margin-left: 150px;" id="mySidenav">
		<br>
		<div class="w3-container">
			<a href="#" onclick="w3_close()" class="w3-hide-large w3-right w3-jumbo w3-padding"	title="close menu">
				<i class="fa fa-remove"></i>
			</a> 
			<br><br>
			<h4 class="w3-padding-0">
				<b>도서 대여/반납</b>
			</h4>
		</div>
		<a href="/lib/adminRental" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			도서대여
		</a>
		<a href="#portfolio" onclick="w3_close()" class="w3-padding w3-text-teal">
			<i class="fa fa-th-large fa-fw w3-margin-right"></i>
			도서반납
		</a>
	</nav>
	<!-- 본문 -->
	<div class="row">
		<div class="col-md-7" style="margin-left: 450px; margin-top: 100px;">
			<div class="panel panel-default" style="margin-top: 20px;">
				<div class="panel-heading" style="text-align: left;">도서대여</div>
				<div class="panel-body" style="color: orange; text-align: left; margin-bottom: 50px;">
					<img src="/resources/img/bookmark.ico" style="margin-left: 50px;">
					<div class="row">
						<form action="/lib/adminRental" method="post">
							<div class="col-sm-6 form-group" style="margin-top: -210px; margin-left: 350px; color: gray;">
								도서코드 : <br />
								<input class="form-control" name="BOOKCODE" placeholder="도서코드를 입력하세요" type="text" required>
							</div>
							<br /><br />
							<div class="col-sm-6 form-group" style="margin-top: -190px; margin-left: 350px; color: gray;">
								대여일 : <br />
								<input id="RentalDate" class="form-control" readonly="readonly" placeholder="대여일을 선택하세요" type="text" required>
							</div>
							<br /><br />
							<div class="col-sm-6 form-group" style="margin-top: -170px; margin-left: 350px; color: gray;">
								반납예정일 : <br />
								<input id="returnExpectDate" class="form-control" readonly="readonly" placeholder="반납예정일을 선택하세요" type="text" required>
							</div>
							<hr class="w3-border-grey" style="margin-left: 400px; margin-top:-50px; width: 40%">
							<div class="col-sm-6 form-group" style="margin-top: 10px; margin-left: 350px; color: gray;">
								회원ID : <br />
								<input class="form-control" name="MEMBERID" placeholder="회원ID를 입력하세요" type="text" required>
								<br />
								<input type="radio" name="payment">선불
								<input type="radio" name="payment">후불
								<input class="btn pull-right" type="submit" value="대여" style="color: black;"/>
							</div>
						</form>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
</html>