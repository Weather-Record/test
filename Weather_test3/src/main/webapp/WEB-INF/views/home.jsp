<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>WAnalysis</title>

<!-- Favicon-->
<link rel="icon" type="image/x-icon" href="assets/favicon.ico" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="css/styles.css" rel="stylesheet" />
<!-- Bootstrap core JS-->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"></script>
<!-- Core theme JS-->
<script src="js/scripts.js"></script>

</head>

<body>
	<div class="d-flex" id="wrapper">
		<!-- Sidebar-->
		<div class="border-end bg-white" id="sidebar-wrapper">
			<div class="sidebar-heading border-bottom bg-light">Weather
				Analysis</div>
			<div class="list-group list-group-flush">
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="getultrasrtncst">실시간 날씨 현황</a> 
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">기간별 날씨 현황</a> 
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">날씨 예측</a> 
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="adminpage">관리자 페이지</a>
				 <a class="list-group-item list-group-item-action list-group-item-light p-3" href="userpage">일반 사용자 페이지</a>
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Profile</a> 
				<a class="list-group-item list-group-item-action list-group-item-light p-3" href="#!">Status</a>
			</div>
		</div>
		<!-- Page content wrapper-->
		<div id="page-content-wrapper">
			<!-- Top navigation-->
			<nav
				class="navbar navbar-expand-lg navbar-light bg-light border-bottom">
				<div class="container-fluid">
					<button class="btn btn-primary" id="sidebarToggle">Toggle
						Menu</button>
					<button class="navbar-toggler" type="button"
						data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent"
						aria-controls="navbarSupportedContent" aria-expanded="false"
						aria-label="Toggle navigation">
						<span class="navbar-toggler-icon"></span>
					</button>
					<div class="collapse navbar-collapse" id="navbarSupportedContent">
						<ul class="navbar-nav ms-auto mt-2 mt-lg-0">
							<!-- 
							<li class="nav-item active"><a class="nav-link" href="#!">Home</a></li>
							<li class="nav-item"><a class="nav-link" href="#!">Link</a></li>
							<li class="nav-item dropdown"><a
								class="nav-link dropdown-toggle" id="navbarDropdown" href="#"
								role="button" data-bs-toggle="dropdown" aria-haspopup="true"
								aria-expanded="false">Dropdown</a>
								<div class="dropdown-menu dropdown-menu-end"
									aria-labelledby="navbarDropdown">
									<a class="dropdown-item" href="#!">Action</a> <a
										class="dropdown-item" href="#!">Another action</a>
									<div class="dropdown-divider"></div>
									<a class="dropdown-item" href="#!">Something else here</a>
								</div></li>
							-->
							<div class="d-grid gap-2 d-md-flex justify-content-md-end">
								<a class="btn btn-outline-primary" href="signup" role="button">Sign in</a>
								<a class="btn btn-primary" href="signup" role="button">Sign up</a>
							</div>
						</ul>
					</div>
				</div>
			</nav>
			<!-- Page content-->
			<div class="container-fluid">
				<!--  <div fragment="content"></div> -->
				<%@ include file="map.jsp" %>

			</div>
		</div>
	</div>
</body>

</html>
