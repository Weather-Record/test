<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- CSS only -->
<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous"> -->
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href="css/signup.css" rel="stylesheet" />

<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="js/signup.js"></script>
<!------ Include the above in your HEAD tag ---------->

<link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">

<title>회원가입</title>
</head>

<body>
	<div class="container">
		<div class="col-md-6 mx-auto text-center" style="margin:0; padding:0;">
			<div class="header-title">
				<h1 class="wv-heading--title">Sign Up</h1>
				<h2 class="wv-heading--subtitle">Welcome to our Website!</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-4 mx-auto">
				<div class="myform form ">
					<form id="signup" method="post">
					<div class="form-group">
						<label for="id" class="form-label" style="display:block;">Id</label> 
						<input type="text" class="form-control my-input" style="display:inline; float:left; width:70%;" id="id" name="id" placeholder="Id를 입력하세요">
						<a class="btn btn-outline-primary" style="width:30%;" id="idcheck" role="button">중복 확인</a>
						<div id="idmsg" class="form-text"></div>
					</div>

					<div class="form-group">
						<label for="email" class="form-label" style="display:block;">Email address</label> 
						<input type="email" class="form-control my-input" style="display:inline; float:left; width:70%;" id="email" name="email" placeholder="Email을 입력하세요"> 
						<a class="btn btn-outline-primary" style="width:30%;" id="emailcheck" role="button">중복 확인</a>
						<div id="emailmsg" class="form-text"></div>
					</div>

					<div class="form-group">
						<label for="pw" class="form-label">Password</label> 
						<input type="password" class="form-control my-input" id="pw" name="pw" placeholder="비밀번호를 입력하세요">
						<div id="pwmsg" class="form-text"></div>
					</div>
					<div class="form-group">
						<label for="pw1" class="form-label">Check Password</label> 
						<input type="password" class="form-control my-input" id="pw1" name="pw1" placeholder="동일한 비밀번호를 입력하세요">
						<div id="pw1msg" class="form-text"></div>
					</div>

					<div class="form-group">
						<label for="nickname" class="form-label" style="display:block;">Nickname</label> 
						<input type="text" class="form-control my-input" style="display:inline; float:left; width:70%;" id="nickname" name="nickname"> 
						<a class="btn btn-outline-primary" style="width:30%;" id="nicknamecheck" role="button">중복 확인</a>
						<div id="nicknamemsg"></div>
					</div>
					<div class="text-center">
						<button class="btn btn-block send-button tx-tfm" id="signupbtn">회원가입</button>
					</div>

					<p class="small mt-3">
						By signing up, you are indicating that you have read and agree to the 
						<a href="#" class="ps-hero__content__link">Terms of Use</a>and <a href="#">Privacy Policy</a>.
					</p>
					</form>
				</div>
			</div>
		</div>
	</div>


	<!-- 
	<form id="signup" method="post" style="padding:50px;">
		<div align="center" id="msg"></div>
		<div class="mb-3" align="center">
			<label for="id" class="form-label">Id</label> 
			<input type="text" class="form-control" style="width:400px; display:inline;" id="id" name="id" placeholder="Id를 입력하세요">
			<a class="btn btn-outline-primary" id="idcheck" role="button">중복 확인</a>
			<div id="idmsg" class="form-text"></div>
		</div>
		
		<div class="mb-3" align="center">
			<label for="email" class="form-label">Email address</label> 
			<input type="email" class="form-control" style="width:400px; display:inline;" id="email" name="email" placeholder="Email을 입력하세요" >
			<a class="btn btn-outline-primary" id="emailcheck" role="button">중복 확인</a>
			<div id="emailmsg" class="form-text"></div>
		</div>
		
		<div class="mb-3" align="center">
			<label for="pw" class="form-label">Password</label>
			<input type="password" class="form-control" style="width:400px; display:inline;" id="pw" name="pw" placeholder="비밀번호를 입력하세요">
			<div id="pwmsg" class="form-text"></div>
		</div>
		<div class="mb-3" align="center">
			<label for="pw1" class="form-label">Check Password</label>
			<input type="password" class="form-control" style="width:400px; display:inline;" id="pw1" name="pw1" placeholder="동일한 비밀번호를 입력하세요">
			<div id="pw1msg" class="form-text"></div>
		</div>
		
		<div class="mb-3" align="center">
			<label for="nickname" class="form-label">Nickname</label>
			<input type="text" class="form-control" style="width:400px; display:inline;" id="nickname" name="nickname">
			<a class="btn btn-outline-primary" id="nicknamecheck" role="button">중복 확인</a>
			<div id="nicknamemsg"></div>
		</div>
		<div align="center">
			<button class="btn btn-primary" id="signupbtn" >회원가입</button>
		</div>
	</form>
	-->
</body>
</html>