<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>타이트트으으</title>

<script type="text/javascript" src="http://openapi.map.naver.com/openapi/v3/maps.js?clientId=2BFuoEB5mdnzTP5RdklJ&submodules=geocoder"></script>
<!-- <script type="text/javascript" src="https://openapi.map.naver.com/openapi/v3/maps.js?clientId=2BFuoEB5mdnzTP5RdklJ&callback=initMap"></script> -->

<script>
var map = null;

$(function(){
	initMap("불정로 6");
});

function initMap(location) {
	var map = new naver.maps.Map('map');
    var myaddress = location;// 도로명 주소나 지번 주소만 가능 (건물명 불가!!!!)
    naver.maps.Service.geocode({address: myaddress}, function(status, response) {
        if (status !== naver.maps.Service.Status.OK) {
            return alert(myaddress + "의 검색 결과가 없거나 기타 네트워크 에러");
        }
        var result = response.result;
        // 검색 결과 갯수: result.total
        // 첫번째 결과 결과 주소: result.items[0].address
        // 첫번째 검색 결과 좌표: result.items[0].point.y, result.items[0].point.x
        var myaddr = new naver.maps.Point(result.items[0].point.x, result.items[0].point.y);
        map.setCenter(myaddr); // 검색된 좌표로 지도 이동
        // 마커 표시
        var marker = new naver.maps.Marker({
          position: myaddr,
          map: map
        });
        // 마커 클릭 이벤트 처리
        naver.maps.Event.addListener(marker, "click", function(e) {
          if (infowindow.getMap()) {
              infowindow.close();
          } else {
              infowindow.open(map, marker);
          }
        });
        // 마크 클릭시 인포윈도우 오픈
        var infowindow = new naver.maps.InfoWindow({
            content: '<h4> [네이버 개발자센터]</h4><a href="https://developers.naver.com" target="_blank"><img src="https://developers.naver.com/inc/devcenter/images/nd_img.png"></a>'
        });
    });
}

function searchLocation(){
	
	var location = $ ( "input[name='address']" ).val();
	
	initMap(location);
	
}

</script>

</head>
<body>
	<div class="title">
		<div class="page-header">
		  	<h1>데이트 지도</h1>
		</div>
		<form>
			<div class="input-group">
			    <input name="address" type="text" class="form-control" placeholder="Search">
			    <div class="input-group-btn">
			      <button class="btn btn-default" type="button" onclick="searchLocation();">
			        <i class="glyphicon glyphicon-search"></i>
			      </button>
			    </div>
			</div>
		</form>
		<br>
		<div id="map" style="width:100%;height:400px;"></div>
	</div>
</body>
</html>