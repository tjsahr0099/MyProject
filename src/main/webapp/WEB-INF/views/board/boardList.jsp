<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>타이트트으으</title>

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
		  	<h1>자유게시판<small>게시판리스트</small></h1>
		</div>
	</div>
	
	<div>
	
		<table class="table table-striped">
			<thead>
				<tr><td colspan="2">제목</td><td>작성자</td><td>작성일</td><td>조회</td></tr>
			</thead>
			<tbody id="tbody">
			</tbody>
		</table>
	</div>
	
	<div class="paging">
		<nav>
			<ul class="pagination" id="pagination">
				
			</ul>
		</nav>
	</div>
	
	<div class="searchDiv">
		<select>
			<option>전체기간</option>
			<option>1일</option>
			<option>1주</option>
			<option>1개월</option>
			<option>6개월</option>
			<option>1년</option>
		</select>
		<select>
			<option>제목+내용</option>
			<option>제목</option>
			<option>내용</option>
			<option>작성자</option>
		</select>
		<form method="post" name="frm" id="frm">
			<input type="hidden" name="pageNum" value=""/>
			<input type="hidden" name="pagingNum" value=""/>
			<input type="hidden" name="onePageCnt" value="10"/>
		
		
			<input type="text" name="searchWord" value=""/>
			<button type="button">검색</button>
			<button type="button" id="btn_write">글쓰기</button>
		</form>
	</div>
</body>
</html>