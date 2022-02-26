package kr.co.weather;

import java.text.SimpleDateFormat;
import java.time.LocalDateTime;
import java.util.Calendar;
import java.util.GregorianCalendar;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.crypto.bcrypt.BCrypt;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class Temp_Test {
	
	//@Test
	//공백 제거
	public void trim_test() {
		String str = " Hello World ";
		System.out.println(str);
		String temp = str.trim();
		System.out.println(temp);
	}
	
	/*
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
	
	//@Test
	//BCrypt 라이브러리와 BCryptPasswordEncoder 라이브러리의 차이는 뭘까,, 	
	public void bcrypt_test() {

		String str = "waffle1";
		String encrypted = BCrypt.hashpw(str, BCrypt.gensalt());
		System.out.println(encrypted);
		System.out.println(BCrypt.checkpw(str, encrypted));
		
		String str = "waffle1";
		String encrypted = passwordEncoder.encode(str);
		System.out.println(encrypted);
		System.out.println(passwordEncoder.matches(str, encrypted));
		System.out.println(passwordEncoder.matches("waffle2", encrypted));
	}
	*/
	
	@Test
	public void date_test() {
		Calendar cal = new GregorianCalendar();
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
		System.out.println(cal.getTime());
		System.out.println(sdf.format(cal.getTimeInMillis()));

	}

}
