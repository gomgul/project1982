<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>커스텀 오버레이</title>
<style>
    .wrap {position: absolute;left: 0;bottom: 40px;width: 288px;height: 132px;margin-left: -144px;text-align: left;overflow: hidden;font-size: 12px;font-family: 'Malgun Gothic', dotum, '돋움', sans-serif;line-height: 1.5;}
    .wrap * {padding: 0;margin: 0;}
    .wrap .info {width: 286px;height: 120px;border-radius: 5px;border-bottom: 2px solid #ccc;border-right: 1px solid #ccc;overflow: hidden;background: #fff;}
    .wrap .info:nth-child(1) {border: 0;box-shadow: 0px 1px 2px #888;}
    .info .title {padding: 5px 0 0 10px;height: 30px;background: #eee;border-bottom: 1px solid #ddd;font-size: 18px;font-weight: bold;}
    .info .close {position: absolute;top: 10px;right: 10px;color: #888;width: 17px;height: 17px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/overlay_close.png');}
    .info .close:hover {cursor: pointer;}
    .info .body {position: relative;overflow: hidden;}
    .info .desc {position: relative;margin: 13px 0 0 90px;height: 75px;}
    .desc .ellipsis {overflow: hidden;text-overflow: ellipsis;white-space: nowrap;}
    .desc .jibun {font-size: 11px;color: #888;margin-top: -2px;}
    .info .img {position: absolute;top: 6px;left: 5px;width: 73px;height: 71px;border: 1px solid #ddd;color: #888;overflow: hidden;}
    .info:after {content: '';position: absolute;margin-left: -12px;left: 50%;bottom: 0;width: 22px;height: 12px;background: url('https://t1.daumcdn.net/localimg/localimages/07/mapapidoc/vertex_white.png')}
    .info .link {color: #5085BB;}
</style>


</head>
<body>
<!-- 지도를 표시할 div 입니다 -->
<div id="map" style="width:100%;height:1100px;" ></div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=231d9546f932fa54c056a42fd04894e8"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = { 
        center: new kakao.maps.LatLng(37.47890986331366, 126.88141931604768), // 지도의 중심좌표
        level: 2 // 지도의 확대 레벨
    };


// 지도를 표시할 div와  지도 옵션으로  지도를 생성합니다
var map = new kakao.maps.Map(mapContainer, mapOption); 

//지도에 교통정보를 표시하도록 지도타입을 추가합니다
map.addOverlayMapTypeId(kakao.maps.MapTypeId.TRAFFIC);





//HTML5의 geolocation으로 사용할 수 있는지 확인합니다 
if (navigator.geolocation) {
    
// GeoLocation을 이용해서 접속 위치를 얻어옵니다
navigator.geolocation.getCurrentPosition(function(position) {
        
     var lat = position.coords.latitude, // 위도
         lon = position.coords.longitude; // 경도
        
     var locPosition = new kakao.maps.LatLng(lat, lon), // 마커가 표시될 위치를 geolocation으로 얻어온 좌표로 생성합니다
    	 message = '<div style="padding:5px;"= my>현재 내 위치</div>'; // 인포윈도우에 표시될 내용입니다.
        
        // 마커와 인포윈도우를 표시합니다
     displayMarker(locPosition, message);
            
     });
    
} else { // HTML5의 GeoLocation을 사용할 수 없을때 마커 표시 위치와 인포윈도우 내용을 설정합니다
    
    var locPosition = new kakao.maps.LatLng(37.478984, 126.881552),    
        message = 'geolocation을 사용할수 없어요..'
        
    displayMarker(locPosition, message);
}
//지도에 마커와 인포윈도우를 표시하는 함수입니다
function displayMarker(locPosition, message) {
	
	
    // 마커를 생성합니다
    var marker = new kakao.maps.Marker({  
        map: map, 
        position: locPosition // 내 현재 위치
    }); 
    
    var iwContent = message, // 인포윈도우에 표시할 내용
        iwRemoveable = true;

    // 인포윈도우를 생성합니다
    var infowindow = new kakao.maps.InfoWindow({
        content : iwContent,
        removable : iwRemoveable
    });
	
	// 인포윈도우를 마커위에 표시합니다 
	infowindow.open(map, marker);
    // 지도 중심좌표를 접속위치로 변경합니다
    map.setCenter(locPosition);      
	}   // 현재 내 위치 마커 설정 끝
	
	//롯데리아
	var lotteria = new kakao.maps.Marker({
	    map: map, 
	    position: new kakao.maps.LatLng(37.477085206942625, 126.88587939338012)
	});

	// 커스텀 오버레이에 표시할 컨텐츠 입니다
	// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
	// 별도의 이벤트 메소드를 제공하지 않습니다 
	var content = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            '            롯데리아(구로 가산점)' + 
	            '            <div class="close" onclick="closelotteria()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="resources/images/lotteria.PNG" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">장소 : 서울 금천구 디지털로 188W-MALL 지하 1층</div>' + 
	            '                <div><a href="user/lotteria.do" target="_blank" class="link" >상세정보</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	// 마커 위에 커스텀오버레이를 표시합니다
	// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var lotterialay = new kakao.maps.CustomOverlay({
	    content: content,
	    map: map,
	    position: lotteria.getPosition()       
	});

	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(lotteria, 'click', function() {
		lotterialay.setMap(map);
	});

	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	function closelotteria() {
		lotterialay.setMap(null);     
	}
	
	
	var noodle = new kakao.maps.Marker({
	    map: map, 
	    position: new kakao.maps.LatLng(37.477178467852696, 126.88221343793577)
	});

	// 커스텀 오버레이에 표시할 컨텐츠 입니다
	// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
	// 별도의 이벤트 메소드를 제공하지 않습니다 
	var content = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            '            국수나무(가산 BYC점)' + 
	            '            <div class="close" onclick="closenoodle()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="resources/images/noodle.PNG" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">장소 : 서울 금천구 가산디지털1로 131 BYC타워 A동 111호</div>' + 
	            '                <div><a href="user/noodle.do" target="_blank" class="link" >상세정보</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	// 마커 위에 커스텀오버레이를 표시합니다
	// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var noodlelay = new kakao.maps.CustomOverlay({
	    content: content,
	    map: map,
	    position: noodle.getPosition()       
	});

	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(noodle, 'click', function() {
		noodlelay.setMap(map);
	});

	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	function closenoodle() {
		noodlelay.setMap(null); 
	    
	}
	var eleven = new kakao.maps.Marker({
	    map: map, 
	    position: new kakao.maps.LatLng(37.47786634240238, 126.88307441181091)
	});

	// 커스텀 오버레이에 표시할 컨텐츠 입니다
	// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
	// 별도의 이벤트 메소드를 제공하지 않습니다 
	var content = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            '            세븐일레븐(가산STXV타워점)' + 
	            '            <div class="close" onclick="closeeleven()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="resources/images/eleven.PNG" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">장소 : 서울 금천구 가산디지털1로 128 (가산동,에스티엑스브이)</div>' + 
	            '                <div><a href="user/eleven.do" target="_blank" class="link" >상세정보</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	// 마커 위에 커스텀오버레이를 표시합니다
	// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var elevenlay = new kakao.maps.CustomOverlay({
	    content: content,
	    map: map,
	    position: eleven.getPosition()       
	});

	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(eleven, 'click', function() {
		elevenlay.setMap(map);
	});

	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	function closeeleven() {
		elevenlay.setMap(null);     
	}
	
	//비어킹
	var beerking = new kakao.maps.Marker({
	    map: map, 
	    position: new kakao.maps.LatLng(37.480467857528744, 126.88067348381402)
	});

	// 커스텀 오버레이에 표시할 컨텐츠 입니다
	// 커스텀 오버레이는 아래와 같이 사용자가 자유롭게 컨텐츠를 구성하고 이벤트를 제어할 수 있기 때문에
	// 별도의 이벤트 메소드를 제공하지 않습니다 
	var content = '<div class="wrap">' + 
	            '    <div class="info">' + 
	            '        <div class="title">' + 
	            '            펀 비어킹(금천 가산W센터점)' + 
	            '            <div class="close" onclick="closebeerking()" title="닫기"></div>' + 
	            '        </div>' + 
	            '        <div class="body">' + 
	            '            <div class="img">' +
	            '                <img src="resources/images/beerking.PNG" width="73" height="70">' +
	            '           </div>' + 
	            '            <div class="desc">' + 
	            '                <div class="ellipsis">장소 : 서울 금천구 가산디지털1로 181 209호</div>' + 
	            '                <div><a href="user/beerking.do" target="_blank" class="link" >상세정보</a></div>' + 
	            '            </div>' + 
	            '        </div>' + 
	            '    </div>' +    
	            '</div>';

	// 마커 위에 커스텀오버레이를 표시합니다
	// 마커를 중심으로 커스텀 오버레이를 표시하기위해 CSS를 이용해 위치를 설정했습니다
	var beerkinglay = new kakao.maps.CustomOverlay({
	    content: content,
	    map: map,
	    position: beerking.getPosition()       
	});

	// 마커를 클릭했을 때 커스텀 오버레이를 표시합니다
	kakao.maps.event.addListener(beerking, 'click', function() {
		beerkinglay.setMap(map);
	});

	// 커스텀 오버레이를 닫기 위해 호출되는 함수입니다 
	function closebeerking() {
		beerkinglay.setMap(null);     
	}
</script>
</body>
</html>