<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>지도 생성하기</title>
</head>
<body>

<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:100%;height:1100px;"></div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=231d9546f932fa54c056a42fd04894e8"></script>
<script>
	var mapContainer = document.getElementById('map');
	mapOption = {
			center : new daum.maps.LatLng(33.450701, 126.570667),
			level : 6	
	};
	
	var map = new daum.maps.Map(mapContainer, mapOption);
	var geocoder = new daum.maps.services.Geocoder();
	var addressArray = [];
	var wishList = $('.de_add');
	
	for (var i = 0; i < wishList.length; i++){
		addressArray.push({
			'groupAddress' : $("input[name='address']").eq(i).val()
		});
	}
	
	for (var i = 0; i < addressArray.length; i++){
		geocoder.addressSearch(
				addressArray[i].groupAddress,
				function(result, status, data){
					
					if( status === daum.maps.services.Status.OK){
						var coords = new daum.maps.LatLng(
							result[0].y , result[0].x);		
						
						var marker = new daum.maps.Marker({
							map: map,
							position : coords
						});
						
						marker.setMap(map);
						
						var content = '<div class ="labelWish"><span class="leftWish"></span><span class="centerWish">'
						+ result[0].address_name
						+ '</span><span class=rightWish></span></div>'
						
						var customOverlay = new daum.maps.CustomOverlay({
							position : coords,
							content : content
						});
						
						customOverlay.setMap(map);
						
						map.setCenter(coords);
					}
				});
	}
	
</script>


</body>
</html>