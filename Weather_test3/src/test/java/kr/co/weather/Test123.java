package kr.co.weather;

import java.io.*;
import java.text.*;
import java.util.*;

import javax.sql.DataSource;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.test.context.*;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import kr.co.weather.dao.*;
import kr.co.weather.domain.*;
import kr.co.weather.service.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"file:src/main/webapp/WEB-INF/spring/root-context.xml"})
public class Test123 {
	@Autowired
	private WeatherService service;
	@Autowired
	private Mapper mapper;
	
	//@Test
	public void translateWarning() {
		//상한은 본인 Record 테이블에 있는 데이터 개수를 사용하거나 그 이하의 작은 수를 넣어서 테스트
		for(int i=1; i<=34674; i++) {
			service.insertWarning(i);
		}
	}

	
	@Test
	public void testSearch() throws ParseException {
		Map<String, Object> map = service.calc_record(108);
		//Map<String, Object> map = service.calc_record("서울", "서울", "2021/03/05");
		
		for (Map.Entry<String, Object> entry : map.entrySet()) {
		    System.out.println(entry.getKey() + " : " + entry.getValue());
		
		
		
		}
	}
	
	//@Test
	public void testState() throws Exception{
		String location_state = "충청남도";

		List<Location> list = mapper.searchState(location_state);
		List<Integer> state = new ArrayList<>();
				
		for (Location loc:list) {
			state.add(loc.getLocation_id());
		}
		
		Map<String, Object> ste_loc = new HashMap<>();
		ste_loc.put(location_state, state);
		
		ste_loc.entrySet().forEach(entry -> {
		    System.out.println(entry.getKey() + " : " + entry.getValue());
		});
			
		System.out.println(ste_loc.get(location_state));
		
		/*
		// state로 id 검색한 뒤, id로 통합 검색 시도했지만 일단 보류.
		List<Map<String, Object>> rec_loc = mapper.record_location(ste_loc.get(location_state));
		for(int i = 0; i<rec_loc.size(); i++) {
			for (Object obj : rec_loc.get(i).values()) {
				System.out.println(obj);
			}
		}
		*/
	}
	
	
	
	
}