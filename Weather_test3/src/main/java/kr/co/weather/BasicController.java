package kr.co.weather;

import java.util.Map;

import javax.servlet.http.*;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import kr.co.weather.service.BasicService;

@Controller
public class BasicController {
	@Autowired
	private BasicService basicService;
	
	//////////////// View Control
	//return 할 view 뒤에 .page를 기입하면 tiles/basic.jsp 파일의 레이아웃 안 body 영역에 해당 view를 띄울 수 있음
	//메인 페이지
	@GetMapping("/")
	public String home() {
		return "map.page";
	}

	//관리자 페이지 -> 로그인 기능 구현 후 수정
	@GetMapping("/adminpage")
	public String adminpage() {
		return "adminpage.page";
	}

	@GetMapping("/userpage")
	public String userpage() {
		return "userpage.page";
	}
	
	//회원가입
	@GetMapping("/signup")
	public String signup() {
		return "signup.page";
	}
	
	//로그인
	@GetMapping("/signin")
	public String login() {
		return "signin.page";
	}

	//Data Control -> 회원가입 및 유효성 검사
	@ResponseBody
	@PostMapping("/signup")
	public Map<String, Object> insertMember(HttpServletRequest request, HttpServletResponse response){
		return basicService.insertMember(request, response);
	}
	
	@ResponseBody
	@PostMapping("/idcheck")
	public Map<String, Object> idCheck(HttpServletRequest request, HttpServletResponse response){
		return basicService.idCheck(request, response);
	} 
	
	@ResponseBody
	@GetMapping("/emailcheck")
	public Map<String, Object> emailCheck(HttpServletRequest request, HttpServletResponse response){
		return basicService.emailCheck(request, response);
	} 

	@ResponseBody
	@GetMapping("/nicknamecheck")
	public Map<String, Object> nicknameCheck(HttpServletRequest request, HttpServletResponse response){
		return basicService.nicknameCheck(request, response);
	} 

}
