<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />

<!-- CSS only -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">

<script src="js/signup.js"></script>


<title>회원가입</title>
</head>

<body>

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
		<!-- 
		<div align="center">
			<button class="btn btn-primary" id="signupbtn" >회원가입</button>
			<button class="btn btn-primary" id="mainbtn" onclick="location.href='/';">메인 페이지</button>
			<button class="btn btn-primary" id="loginbtn" onclick="location.href='/login';">로그인</button>
		</div>
		-->
</body>
</html>