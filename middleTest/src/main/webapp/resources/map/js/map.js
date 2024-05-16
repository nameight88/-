/**
 * 
 */
//페이지 로드 시 실행되는 코드
$(function(){
	// 마커를 담을 배열입니다
	var markers = [];
	
	// 지도 표출 
	var mapContainer = document.getElementById('map');
	var mapOptions = {
			center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울의 좌표
			level: 3
	};

	var map = new kakao.maps.Map(mapContainer, mapOptions);

	// 현재위치로 지도에 표시
	if (navigator.geolocation) {
		navigator.geolocation.getCurrentPosition(function(position) {
			var lat = position.coords.latitude;
			var lng = position.coords.longitude;

			var currentPosition = new kakao.maps.LatLng(lat, lng);

			var marker = new kakao.maps.Marker({
				map: map,
				position: currentPosition
			});

			map.setCenter(currentPosition);
		});
	}
	
// 키워드 검색때 활용
//	// 장소 검색 객체를 생성합니다
//	var ps = new kakao.maps.services.Places();  
//
//	// 검색 결과 목록이나 마커를 클릭했을 때 장소명을 표출할 인포윈도우를 생성합니다
//	var infowindow = new kakao.maps.InfoWindow({zIndex:1});

	

//	// 검색 버튼 클릭 시 실행되는 코드
//	$("#btn").click(function(){
//		event.preventDefault();
//
//		var searchText = $("#searchText").val(); // 입력란의 값 가져오기 
//		//alert(searchText);
//
//		// 검색어를 이용하여 지도 업데이트
//		//updateMap(map, searchText);
//		
//		
//		ps.keywordSearch(searchText, placesSearchCB);
//		
//
//	});
	
	
	
	$(".property_addr").each(function() {
	    var addr = $(this).text();
	    //alert(addr);
	    
	    //ps.keywordSearch(addr, placesSearchCB);
	    updateMap(map,addr);
	});
	
	
	
	
//	//키워드 검색 완료 시 호출되는 콜백함수 입니다
//	function placesSearchCB (data, status, pagination) {
//	    if (status === kakao.maps.services.Status.OK) {
//
//	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
//	        // LatLngBounds 객체에 좌표를 추가합니다
//	        var bounds = new kakao.maps.LatLngBounds();
//
//	        for (var i=0; i<data.length; i++) {
//	            displayMarker(data[i]);    
//	            bounds.extend(new kakao.maps.LatLng(data[i].y, data[i].x));
//	        }       
//
//	        // 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
//	        map.setBounds(bounds);
//	    } 
//	}
//
//	// 지도에 마커를 표시하는 함수입니다
//	function displayMarker(place) {
//	    
//	    // 마커를 생성하고 지도에 표시합니다
//	    var marker = new kakao.maps.Marker({
//	        map: map,
//	        position: new kakao.maps.LatLng(place.y, place.x) 
//	    });
//
//	    // 마커에 클릭이벤트를 등록합니다
//	    kakao.maps.event.addListener(marker, 'click', function() {
//	        // 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
//	        infowindow.setContent('<div style="padding:5px;font-size:12px;">' + place.place_name + '</div>');
//	        infowindow.open(map, marker);
//	    });
//	}
	
	
	
});

//지도 업데이트 함수(맵)	
function updateMap(map, searchText){ 
	//alert(searchText);

	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();

	// 주소로 좌표를 검색합니다
	geocoder.addressSearch(searchText, function(result, status) {

		// 정상적으로 검색이 완료된다면
		if (status === kakao.maps.services.Status.OK) {

			var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

			// 기존에 표시된 마커 제거
			//map.removeOverlayMapTypeId(kakao.maps.MapTypeId.MARKER);

			// 결과값으로 받은 위치를 마커로 표시
			var marker = new kakao.maps.Marker({
				map: map,
				position: coords
			});

			// 인포윈도우로 장소에 대한 설명을 표시합니다
			var infowindow = new kakao.maps.InfoWindow({
				content: '<div style="width:150px;text-align:center;padding:6px 0;">매물위치</div>'
			});
			infowindow.open(map, marker);

			// 지도의 중심을 결과값으로 받은 위치로 이동
			map.setCenter(coords);
		}else{
			alert("주소를 찾을 수 없습니다.");
		}
	}); 
	
	
	// 주변시설
	var mapContainer2 = document.getElementById('map2');
	
	var mapOptions2 = {
			center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울의 좌표
			level: 3
	};
	
	var map2 = new kakao.maps.Map(mapContainer2, mapOptions2);
	 
}



