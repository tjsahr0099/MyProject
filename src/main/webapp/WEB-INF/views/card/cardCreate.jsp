<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
$(function(){
	
	
	$("#btn_create").click(function(){
		//선택된 DIV를 그대로 캔버스에 그려준다.
		html2canvas(document.querySelector(".cardImgWrap")).then(canvas => {
			console.log(canvas);
		    $("#canvas").append(canvas);
		});
		
		
	});
	
	
	
});

	
	
html2canvas(document.body, {
	onrendered: function(canvas) {
		
		canvas.toBlob(function(blob) {
			
			saveAs(blob, "pretty image.png");
		});
	
	}
});


</script>

</head>
<body>
	<div class="title">
		카드 생성 <button type="button" id="btn_create">생성</button>
	</div>
	<div class="cardBodyDiv">
		<div class="cardImgWrap">
			<img class="mainImg" src="${contextPath }/resources/image/card/ironman.PNG"/>
			<img class="mark" src="${contextPath }/resources/image/card/avengers_mark.PNG"/>
			<div class="cardTemplitWrap"><img class="templit" src="${contextPath }/resources/image/card/card_templit.png"/></div>
		</div>
	</div>
	<div id="canvas" style="display:none;"></div>
</body>
</html>