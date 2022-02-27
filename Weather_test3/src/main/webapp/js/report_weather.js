window.addEventListener('load', function(event){
	var loc_state = document.getElementById("loc_state");
	var loc_detail = document.getElementById("loc_detail");
	var datepick = document.getElementById("datepick");
	
	var search_report = document.getElementById("search_report");
	
	search_report.addEventListener('click', function(event){
		var url = "report_weather";
		var request = new XMLHttpRequest();
		request.open("post", url, true);
		var formdata = new FormData();
		formdata.append("loc_state", loc_state.value);
		formdata.append("loc_detail", loc_detail.value);
		formdata.append("datepick", datepick.value);
		request.send(formdata);
		console.log(formdata);
		
		request.addEventListener("load", function(e){	
			var map = JSON.parse(e.target.responseText);

			console.log(map);
			var avg_tmp = map.avg_tmp
			var min_tmp = map.min_tmp
			var max_tmp = map.max_tmp
			var avg_rain = map.avg_rain
			var avg_wind = map.avg_wind
			var avg_humid = map.avg_humid
			var avg_snow = map.avg_snow

			var context = document.getElementById('report').getContext('2d');
			// 픽셀 정리
			//context.clearRect(0, 0, cnvs.width, cnvs.height);

			context.font = "20px Arial";
			context.textAlign = "center";
			context.strokeText(loc_detail.value+"의 "+"전체적인 수치", 300, 50)
			context.fillText("평균 온도: "+avg_tmp+" °C", 300, 100);
			context.fillText("최저 온도: "+min_tmp+" °C", 300, 150);
			context.fillText("최고 온도: "+max_tmp+" °C", 300, 200);
			context.fillText("평균 강우량: "+avg_rain+" mm/day", 300, 250);
			context.fillText("평균 풍속: "+avg_wind+" m/s", 300, 300);
			context.fillText("평균 습도: "+avg_humid+" %", 300, 350);
			context.fillText("평균 강설량: "+avg_snow+" cm/day", 300, 400);

		});
	
	});
});