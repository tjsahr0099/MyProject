<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<script>
$(function(){
	
	var uri = "${uri}";
	
	//메뉴 선택 표시
	for(var i=0;i<$("li").length;i++){
		if($("li").eq(i).find("a").attr("href").split("/")[2]==uri.split("/")[2]){
			$("li").eq(i).attr("class","active")
		}
	}
	
});


</script>
</head>
<body>

	<div class="col-sm-3 sidenav">
		<ul class="nav nav-pills nav-stacked" id="menu">
	        <li><a href="#section1">Home</a></li>
	        <li><a href="${contextPath }/board/boardList.do">게시판</a></li>
	        <li><a href="${contextPath }/card/cardCreate.do">카드생성</a></li>
	        <li><a href="#section3">Photos</a></li>
	        <li><a href="${contextPath }/dateMap/dateMap.do">데이트 지도</a></li>
	      </ul><br>
	</div>
	
</body>
</html>