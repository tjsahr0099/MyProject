/**
 * 공통 사용 스크립트
 */

function ajax2Json(url, param, callback) {
	var ajaxurl = url;
	var syn = true;
	$.ajax({
		url : ajaxurl,
		async : syn,
		type : "POST", // POST , GET
		data : param,
		dataType : 'json', // json , xml
//		contentType : "application/json;charset=UTF-8",   이거 쓰면 왜 안되는거야!!
		beforeSend : function() {
			// 요청 전 행동
		},
		complete : function() {
			// 요청 후 행동
		},
		success : callback,
		error : function(jqXHR, textStatus, errorThrown) {
			alert("개발용 오류 메시지 :: " + errorThrown);
		}
	});
}

jQuery.fn.serializeObject = function() {
	var obj = null;
	try {
		if (this[0].tagName && this[0].tagName.toUpperCase() == "FORM") {
			var arr = this.serializeArray();
			if (arr) {
				obj = {};
				jQuery.each(arr, function() {
					obj[this.name] = this.value;
				});
			}
		}
	} catch (e) {
		alert(e.message);
	} finally {
	}
	return obj;
}
