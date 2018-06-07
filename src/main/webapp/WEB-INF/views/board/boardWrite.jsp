<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="title">
		자유 게시판
	</div>
	<div class="writeFormDiv">
		<form method="post" name="frm" >
			<table>
				<tr>
					<td colspan="3">
						<input type="text" name="title" value=""/>
					</td>
					<td>
						<input type="checkbox" name="secret_yn"/>
						<input type="text" name=secretPassword value=""/>
					</td>
				</tr>
				<tr>
					<td colspan="4">
						<textarea name="cont"></textarea>
					</td>
				</tr>
			</table>
		</form>
		
	</div>
</body>
</html>