window.addEventListener("load", function(event){
	//DOM 객체 찾아오기
	var signup = document.getElementById("signup");
	
	var id = document.getElementById("id");
	var email = document.getElementById("email");
	var pw = document.getElementById("pw");
	var pw1 = document.getElementById("pw1");
	var nickname = document.getElementById("nickname");
	
	var msg = document.getElementById("msg");
	var idmsg = document.getElementById("idmsg");
	var emailmsg = document.getElementById("emailmsg");
	var pwmsg = document.getElementById("pwmsg");
	var pw1msg = document.getElementById("pw1msg");
	var nicknamemsg = document.getElementById("nicknamemsg");
	
	var idcheck = document.getElementById("idcheck");
	var emailcheck = document.getElementById("emailcheck");
	var nicknamecheck = document.getElementById("nicknamecheck");
	
	var signupbtn = document.getElementById("signupbtn");
	//데이터 모두 trim한 값 넘겨주도록 수정해야 함
	
	id.addEventListener("focusout", function(event){
		if(id.value.trim().length < 1){
			idmsg.innerHTML = 'ID는 필수 입력입니다.<br/>';
		}
	});

	email.addEventListener("focusout", function(event){
		if (email.value.trim().length < 1) {
			emailmsg.innerHTML = '이메일은 필수 입력입니다.<br/>';
		} else {
			var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
			if (!emailRegExp.test(email.value.trim())) {
					emailmsg.innerHTML = '잘못된 이메일 형식입니다.<br/>';
			}
		}
	});
	
	nickname.addEventListener("focusout", function(event){
		if (nickname.value.trim().length < 1) {
			nicknamemsg.innerHTML = '별명은 필수 입력입니다.<br/>';
		} else {
			var nicknameRegExp = /^[a-zA-z가-힣0-9]{2,10}$/;
			if (!nicknameRegExp.test(nickname.value.trim())) {
				nicknamemsg.innerHTML = '닉네임은 2~10자까지 가능합니다.<br/>';
			}
		}
	});
	
	pw.addEventListener("focusout", function(event){
		if (pw.value.trim().length < 1) {
			pwmsg.innerHTML = '비밀번호는 필수 정보입니다.<br/>';
		} else {
			//비밀번호 생성 조건 추가
		}
	});
	
	pw1.addEventListener("focusout", function(event){
		if (pw1.value.trim().length < 1) {
			pw1msg.innerHTML = '비밀번호를 확인해주세요.<br/>';
		} else if(pw1.value.trim()!=pw.value.trim()){
			pw1msg.innerHTML = '비밀번호가 일치하지 않습니다.<br/>';
		}
	});
	
	//post 방식
	idcheck.addEventListener("click", function(event){
		var url = "idcheck";
		var request = new XMLHttpRequest();
		request.open("post", url, true);
		var formdata = new FormData();
		formdata.append("id", id.value);
		request.send(formdata);
		console.log(formdata);
		request.addEventListener("load", function(e){
			var map = JSON.parse(e.target.responseText);
			if(map.idcheck==false){
				idmsg.innerHTML = "사용 불가능한 ID입니다.";
				id.value="";
				id.placeholder = "새로운 ID를 입력해주세요.";
			 	idmsg.style.color = "Red";
			}else{
				idmsg.innerHTML = "사용 가능한 ID입니다.";
			 	idmsg.style.color = "Blue";
			}
		});
	});
	
	/*
		#idcheck는 post뿐 아니라 get으로도 가능.
		
		var url = "idcheck?id=" + id.value;
		var request = new XMLHttpRequest();
		request.open("get", url, true);
		var formdata = new FormData();
		request.send(formdata);
	*/
	
	//get 방식
	emailcheck.addEventListener("click", function(e){
		var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if (!emailRegExp.test(email.value.trim())) {
				emailmsg.innerHTML = '잘못된 이메일 형식입니다.<br/>';
		}else{
			var url="emailcheck?email=" + email.value;
	  		var request=new XMLHttpRequest();
	  		request.open("get", url, true);
	  		request.send('');
	  		request.addEventListener('load', function(e){
	  			var map = JSON.parse(e.target.responseText);
	  			if(map.emailcheck == false){
			 		emailmsg.innerHTML = "사용 불가능한 이메일입니다.";
			 		email.value="";
					email.placeholder = "새로운 이메일을 입력해주세요.";
			 		emailmsg.style.color = "Red";
				}else{
					emailmsg.innerHTML = "사용 가능한 이메일입니다.";
				 	emailmsg.style.color = "Blue";
				}
	  		});
	  	}
	});
	
	nicknamecheck.addEventListener("click", function(e){
		var url="nicknamecheck?nickname=" + nickname.value;
	  	var request=new XMLHttpRequest();
	  	request.open("get", url, true);
	  	request.send('');
	  	request.addEventListener('load', function show(e){
	  		var map = JSON.parse(e.target.responseText);
	  		if(map.nicknamecheck == false){
			 	nicknamemsg.innerHTML = "사용 불가능한 별명입니다.";
			 	email.value="";
				email.placeholder = "새로운 별명을 입력해주세요.";
			 	nicknamemsg.style.color = "Red";
			}else{
				nicknamemsg.innerHTML = "사용 가능한 별명입니다.";
			 	nicknamemsg.style.color = "Blue";
			}
	  	})
	});
	
	
	signupbtn.addEventListener("click", function(event){
		var flag = false;
		//idmsg.innerHTML = '';
		//emailmsg.innerHTML = '';
		//pwmsg.innerHTML = ''
		//nicknamemsg.innerHTML = '';
		
		if (id.value.trim().length < 1) {
			alert("ID를 확인해주세요");
			flag = true;
		} 
		
		var emailRegExp = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		if (email.value.trim().length < 1 || !emailRegExp.test(email.value.trim())) {
			alert("이메일을 확인해주세요");
			flag = true;
		}

		if (pw.value.trim().length < 1 || pw.value.trim() !== pw1.value.trim()) {
			alert("비밀번호를 확인해주세요");
			flag = true;
		}

		var nicknameRegExp = /^[a-zA-z가-힣0-9]{2,10}$/;
		if (nickname.value.trim().length < 1 || !nicknameRegExp.test(nickname.value.trim())) {
			alert("별명을 확인해주세요");
			flag = true;
		}
		
		if(flag==false){
			var url="signup";
	  		var request=new XMLHttpRequest();
		  	
			request.open("post", url, true);
			var formdata = new FormData(signup);
			request.send(formdata);
			request.addEventListener('load', function(e){
				var map = JSON.parse(e.target.responseText);
				if(map.result == true){
					alert("회원가입 성공");
			 		window.location.replace("/");
			 		sesssion.invalidate();
				}else{
					//실패했을 때 데이터가 떠버리는 문제
			 		alert("회원가입 실패")
			 		location.reload();
			 		if(map.idcheck == false){
			 			idmsg.innerHTML = "사용 불가능한 ID입니다.";
			 			idmsg.style.color = "Red";
			 		}else{
			 			idmsg.innerHTML = "사용 가능한 ID입니다.";
			 			idmsg.style.color = "Blue";
			 		}
			 		if(map.emailcheck == false){
			 			emailmsg.innerHTML = "사용 불가능한 이메일입니다.";
			 			emailmsg.style.color = "Red";
			 		}else{
			 			emailmsg.innerHTML = "사용 가능한 이메일입니다.";
			 			emailmsg.style.color = "Blue";
			 		}
			 		if(map.nicknamecheck == false){
			 			nicknamemsg.innerHTML = "사용 불가능한 닉네임입니다.";
			 			nicknamemsg.style.color = "Red";
			 		}else{
			 			nicknamemsg.innerHTML = "사용 가능한 닉네임입니다.";
			 			nicknamemsg.style.color = "Blue";
			 		}
			 	}
		 	});
		}
	});
});