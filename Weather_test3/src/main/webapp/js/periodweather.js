window.addEventListener('load', function(event){
	var loc_state = document.getElementById("loc_state");
	var loc_detail = document.getElementById("loc_detail");
	var datepicker_start = document.getElementById("datepicker_start");
	var datepicker_end = document.getElementById("datepicker_end");
	
	var weatherquery = document.getElementById("weatherquery");
	
	weatherquery.addEventListener('click', function(event){
		var url = "periodweather";
		var request = new XMLHttpRequest();
		request.open("post", url, true);
		var formdata = new FormData();
		formdata.append("loc_state", loc_state.value);
		formdata.append("loc_detail", loc_detail.value);
		formdata.append("datepicker_start", datepicker_start.value);
		formdata.append("datepicker_end", datepicker_end.value);
		request.send(formdata);
		console.log(formdata);
		request.addEventListener("load", function(e){
			var map = JSON.parse(e.target.responseText);
			//받아온 데이터 처리 -> linechart와 연관시키기
			var list = map.list;
			console.log(list);
		});
	
	});
});