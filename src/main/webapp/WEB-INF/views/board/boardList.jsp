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
		자유 게시판
	</div>
	<div class="tableDiv">
	
		<table>
			<colgroup>
			<col width="10%" />
			<col width="50%" />
			<col width="10%" />
			<col width="20%" />
			<col width="10%" />
			</colgroup>
			<thead>
				<tr><td colspan="2">제목</td><td>작성자</td><td>작성일</td><td>조회</td></tr>
			</thead>
			<tbody>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
				<tr><td class="center">1</td><td>안녕하세요?</td><td class="center">김선목</td><td class="center">2018-06-06</td><td class="center">0</td></tr>
			</tbody>
		</table>
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
		<input type="text" name="searchWord" value=""/>
		<button type="button">검색</button>
	</div>
</body>
</html>