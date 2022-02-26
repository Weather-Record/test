package kr.co.weather.interceptor;

import java.io.IOException;
import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.parser.ParseException;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import kr.co.weather.dao.Mapper;
import kr.co.weather.domain.Grid;
import kr.co.weather.domain.LocGrid;
import kr.co.weather.domain.Weather;
import kr.co.weather.service.WeatherService;

@Component
public class BasicInterceptor extends HandlerInterceptorAdapter{
	@Autowired
	private WeatherService wservice;

	@Autowired
	private Mapper mapper;
	
	private static List<Grid> gridlist;
	private static List<String> templist;
	private static int hour=0;
	
	@Override
	//Controller에게 요청을 하기 전에 호출되는 메서드 -> 변수 static으로 변환 ㄱ
	//true를 리턴하면 Controller에게 요청 처리 메서드를 호출하고
	//false를 리턴하면 Controller의 요청 처리 메서드를 호출하지 않음
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) {
		//초기화
		if(gridlist == null) {
			gridlist = wservice.selectGrid();
		}
		
		Date now = new Date();
		//초기화 + 시간 바뀔 때마다만 날씨 실황 정보 가져오기
		if(templist == null || hour != now.getHours()) {
			templist = new ArrayList<String>();
			for(int i=0; i<gridlist.size(); i++) {
				try {
					String grid_x = gridlist.get(i).getGrid_x()+"";
					String grid_y = gridlist.get(i).getGrid_y()+"";
					Weather weather = wservice.getultrasrtncst(grid_x, grid_y);
					templist.add(weather.getT1h());
				} catch (Exception e) {
					System.out.println(e.getLocalizedMessage());
					
				}
			}
		}
		request.setAttribute("gridlist", gridlist);
		request.setAttribute("templist", templist);
		
		//System.out.println((boolean)request.getSession().getAttribute("LOGIN"));
		
		try { 
			if((boolean)request.getSession().getAttribute("LOGIN")==true && (request.getSession().getAttribute("winfo")==null || (boolean)request.getSession().getAttribute("modify")==true || hour != now.getHours())) {
				//System.out.println("인터셉터 in");
				String region_1 = (String)request.getSession().getAttribute("region_1");
				String region_2 = (String)request.getSession().getAttribute("region_2");
				LocGrid locGrid = mapper.selectLocGrid(region_1, region_2);
				request.getSession().setAttribute("winfo", wservice.getultrasrtncst(locGrid.getGrid_x()+"", locGrid.getGrid_y()+""));
				request.getSession().setAttribute("modify", false);
			}
		}catch(Exception e) {
			System.out.println("LOGIN is null");
		}
		
		hour = now.getHours(); //deprecated -> api 참고하고 추후 변경
		System.out.println("hour : "+hour+"시");
		return true;
	}

	//Controller가 예외 없이 정상적으로 처리된 경우 호출되는 메서드
	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, 
			Object Handler, ModelAndView modelAndView) throws IOException {
		
	}
}
