<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Kakao Maps Example</title>
    <script src="https://dapi.kakao.com/v2/maps/sdk.js?appkey=e4d5069dc9a490e0b400e0844235a47e"></script>
    <style>
        #map {
            width: 100%;
            height: 400px;
        }
    </style>
</head>
<body>
    <div id="map"></div>
    <script>
        var mapContainer = document.getElementById('map');
        var mapOptions = {
            center: new kakao.maps.LatLng(37.5665, 126.9780), // 서울의 좌표
            level: 3
        };

        var map = new kakao.maps.Map(mapContainer, mapOptions);

        // 현재 위치 받아오기
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
    </script>
</body>
</html>
