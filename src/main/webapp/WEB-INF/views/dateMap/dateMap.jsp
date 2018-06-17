<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>타이트트으으</title>

<script src="http://maps.google.com/maps/api/js" type="text/javascript"></script>
<script type="text/javascript" src="/js/map.google.js"></script>

<script type="text/javascript">

$(function(){
	
	$("#btn_write").click(function(){
		
		location.href="${contextPath}/board/boardWrite.do";
		return false;
	});
	
	
	
	
	getBoardList();
});


function getBoardList(){
	
	var param ="";
	var url = "${contextPath}/board/getBoardList.do";
	ajax2Json(url,param,getBoardListCallBack);
}

function getBoardListCallBack(res){
	
	var frmObj = $("#frm");
	var pageNum = $("#frm").find("input[name=pageNum]").val();
	var pagingNum = $("#frm").find("input[name=pagingNum]").val();
	var onePageCnt = $("#frm").find("input[name=onePageCnt]").val();
	var totalCnt = res.totalCnt;
	var totalPageCnt = Math.ceil(totalCnt/onePageCnt);
	
	console.log(onePageCnt);
	console.log(totalCnt);
	console.log(totalPageCnt);
	
	
	
	var htmlText = "";
	
	for(var row=0;row<res.list.length;row++){
		
		htmlText+="<tr><td class='center'>"+row+"</td><td>"+res.list[row].title+"</td><td class='center'>"+res.list[row].writeUserSeq+"</td><td class='center'>"+res.list[row].writeDate+"</td><td class='center'>0</td></tr>";
		
		
		
	}
	
	$("#tbody").empty().append(htmlText);
	
	
	
	
	
	//페이징
	var pagingText = "";
	
	
	pagingText += "<li><a href='#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>";
	
	for(var i=0;i<totalPageCnt;i++){
		pagingText += "<li><a href='#'>"+(i+1)+"</a></li>";
	}
	pagingText += "<li><a href='#' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>";
	
	$("#pagination").empty().append(pagingText);

}


</script>


</head>
<body>
	<div class="title">
		<div class="page-header">
		  	<h1>데이트 지도ㅏㅏ</h1>
		</div>
		<section>
			<div id="mapContainer" class="ui-dialog-content ui-widget-content" style="width: auto; min-height: 0px; max-height: none; height: 900px;">
			</div>
		</section>
	</div>
</body>
</html>