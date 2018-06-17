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
	
	$("#btn_search").click(function(){
		getBoardList();
	});
	
	getBoardList();
});


function getBoardList(){
	
	var param =$("#frm").serialize();
	var url = "${contextPath}/board/getBoardList.do";
	console.log(param);
	ajax2Json(url,param,getBoardListCallBack);
}

function getBoardListCallBack(res){
	
	var frmObj = $("#frm");
	var pageNum = $("#frm").find("input[name=pageNum]").val()*1;
	var onePageCnt = $("#frm").find("input[name=onePageCnt]").val()*1;
	var totalCnt = res.totalCnt;
	var totalPageCnt = Math.ceil(totalCnt/onePageCnt);
	
	
	
	var htmlText = "";
	
	for(var row=0;row<res.list.length;row++){
		
		htmlText+="<tr><td class='center'>"+res.list[row].rnum+"</td><td>"+res.list[row].title+"</td><td class='center'>"+res.list[row].writeUserSeq+"</td><td class='center'>"+res.list[row].writeDate+"</td><td class='center'>0</td></tr>";
		
	}
	
	$("#tbody").empty().append(htmlText);
	
	
	
	
	
	//페이징
	var pagingText = "";
	var startPage = 0;
	var endPage = 0;
	
	pagingText += "<li><a href='#none' aria-label='Previous'><span aria-hidden='true'>&laquo;</span></a></li>";
	
	console.log("totalPageCnt : " + totalPageCnt);
	if(pageNum<5){
		console.log("현재페이지 : " + pageNum + " 페이지 출력 타입 1");
		if(totalPageCnt>10){
			endPage=10;
		}else{
			endPage=totalPageCnt;
		}
		for(var i=startPage;i<endPage;i++){
			pagingText += "<li";
			if((i+1)==pageNum){
				pagingText += " class='active' ";
			}
			pagingText += "><a href='#none' onclick='pageClick("+(i+1)+")'>"+(i+1)+"</a></li>";
		}
	}else if((pageNum+5)>totalPageCnt){
		console.log((pageNum+10));
		console.log(totalPageCnt);
		console.log("현재페이지 : " + pageNum + " 페이지 출력 타입 2");
		startPage=totalPageCnt-10;
		endPage=totalPageCnt;
		for(var i=startPage;i<endPage;i++){
			pagingText += "<li";
			if((i+1)==pageNum){
				pagingText += " class='active' ";
			}
			pagingText += "><a href='#none' onclick='pageClick("+(i+1)+")'>"+(i+1)+"</a></li>";
		}
	}else{
		console.log("현재페이지 : " + pageNum + " 페이지 출력 타입 3");
		startPage=pageNum-5;
		endPage=pageNum+5;
		console.log("startPage = " + startPage + " endPage = " + endPage);
		for(var i=startPage;i<endPage;i++){
			pagingText += "<li";
			if((i+1)==pageNum){
				pagingText += " class='active' ";
			}
			pagingText += "><a href='#none' onclick='pageClick("+(i+1)+")'>"+(i+1)+"</a></li>";
		}
	}
	
	
	
	pagingText += "<li><a href='#none' aria-label='Next'><span aria-hidden='true'>&raquo;</span></a></li>";
	$("#pagination").empty().append(pagingText);

}

function pageClick(pageNum){
	var frmObj = $("#frm");
	var pageNum = $("#frm").find("input[name=pageNum]").val(pageNum);
// 	var pagingNum = $("#frm").find("input[name=pagingNum]").val();
	getBoardList();

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
		
		<form method="post" name="frm" id="frm">
			<input type="hidden" name="pageNum" value="1"/>
			<input type="hidden" name="onePageCnt" value="10"/>
			
			<select name="searchDate" id="aa">
				<option value="">전체기간</option>
				<option value="DAY">1일</option>
				<option value="WEEK">1주</option>
				<option value="MONTH">1개월</option>
				<option value="HALF-YEAR">6개월</option>
				<option value="YEAR">1년</option>
			</select>
			<select name="searchWordOption">
				<option value="CT">제목+내용</option>
				<option value="C">제목</option>
				<option value="T">내용</option>
				<option value="W">작성자</option>
			</select>
			<div class="row">
				<div class="col-sm-4">
				</div>
				
				<div class="col-sm-4">
					<div class="input-group">
						<input type="text" class="form-control" placeholder="Search" name="searchWord">
						<div class="input-group-btn">
							<button class="btn btn-default" type="button" id="btn_search">
								<i class="glyphicon glyphicon-search"></i>
							</button>
							<button type="button" id="btn_write">글쓰기</button>
						</div>
					</div>
				</div>
				
				<div class="col-sm-4">
				</div>
			</div>
			
			 
			
		</form>
	</div>
</body>
</html>