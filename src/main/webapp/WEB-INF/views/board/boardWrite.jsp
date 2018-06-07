<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<script type="text/javascript">
$(function(){
	
	//글작성 이벤트
	$("#btn_write").click(function(){
		var frmObj = $("form[name=frm]");
		var param = frmObj.serialize();
// 		var param = frmObj.serializeObject();
		console.log(param);
		ajax2Json("${contextPath}/board/insertBoard.do",param,function(res){
			alert(res.msg);
		});
	});
	
	
	
	
});


</script>

</head>
<body>
	<div class="title">
		자유 게시판
	</div>
	<div class="writeFormDiv">
		<form method="post" name="frm" >
			<input type="hidden" name="writeUserSeq" value="seq_000001"/>
			<input type="hidden" name="depth" value="0"/>
			<table>
				<colgroup>
					<col width="50px"/>
					<col width="100px"/>
					<col width="100px"/>
					<col width=""/>
				</colgroup>
				<tr>
					<td>제목</td>
					<td colspan="3">
						<input type="text" class="w400" name="title" value=""/> 
					</td>
				</tr>
				<tr>
					<td colspan="4">
						비밀글 <input type="checkbox" name="secret_yn"/>
						비밀번호 <input type="text" name="secretPassword" value=""/>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea name="cont"></textarea>
					</td>
				</tr>
				<tr><td colspan="3"></td><td><button type="button" id="btn_write">글쓰기</button></td></tr>
			</table>
		</form>
		
	</div>
</body>
</html>