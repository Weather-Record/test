package kr.co.weather.service;

import java.io.IOException;
import java.util.Date;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.json.simple.parser.ParseException;

import kr.co.weather.domain.*;

public interface WeatherService {
	//기간별 날씨 데이터 조회
	public Map<String, Object> selectWeatherPeriod(HttpServletRequest request);
	
	//Grid 테이블의 데이터 불러오기
	public List<Grid> selectGrid();

	//api로 초단기 현황 불러오기 -> 현재 위치는 종로구로 고정되어 있음 수정 가능
	public Weather getultrasrtncst(String grid_x, String grid_y) throws IOException, ParseException;

	//특보 데이터 생성하기
	public void insertWarning(int record_id);

	//search record by date & location
	public List<Record> searchRecord(Integer location_id);
	
	//Data Processing
	public Map<String, Object> calc_record(Integer location_id);
	
	//web site response
	public Map<String, Object> calc_record(HttpServletRequest request);
	

}