<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>


<!-- css -->
<link rel="stylesheet" type="text/css" href="${contextPath }/resources/css/common.css?${timestamp}">

<!-- javascript -->
<script type="text/javascript" src="${contextPath }/resources/js/jquery/jquery-3.3.1.min.js" ></script>
<script type="text/javascript" src="${contextPath }/resources/js/common.js" ></script>

</head>
<body>
	<div class="body">
		<div class="header">
			 <tiles:insertAttribute name="header" />  
		</div>
		<div class="contents">
			<div class="leftMenu">
				 <tiles:insertAttribute name="menu" />  
			</div>
			<div class="content">
				 <tiles:insertAttribute name="content" />  
			</div>
		</div>
		
		<div class="footer">
			 <tiles:insertAttribute name="footer" />  
		</div>
	</div>
</body>
</html>