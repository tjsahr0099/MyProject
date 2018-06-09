<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">

$(function(){
	
	$("#btn_write").click(function(){
		
		location.href="${contextPath}/board/boardWrite.do";
		return false;
	});
});


</script>


</head>
<body>
	<div class="title">
		카드
	</div>
	<div class="tableDiv">
	
	</div>
	
	<div class="buttonDiv">
		<button type="button" id="btn_write">글쓰기</button>
	</div>
	
	<div class="paging">
		<a>&lt;&lt;</a>
		<a>&lt;</a>
		<a>1</a>
		<a>2</a>
		<a>3</a>
		<a>4</a>
		<a>5</a>
		<a>6</a>
		<a>7</a>
		<a>8</a>
		<a>9</a>
		<a>10</a> 
		<a>&gt;</a> 
		<a>&gt;&gt;</a> 
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
		<form method="post" name="frm">
			<input type="text" name="searchWord" value=""/>
			<button type="button">검색</button>
		</form>
	</div>
</body>
</html>