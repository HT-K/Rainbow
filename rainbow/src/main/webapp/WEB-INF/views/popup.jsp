<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div>
	<img src="${context}/resources/img/closeBtn.png" alt="" class="popupClose closeBtn cursor"
	align="right" width="60px" height="60px"/>
</div>
<div>
	테스트
</div>

<script>
	$('.popupClose').click(function(e) {
		e.preventDefault();
		$.magnificPopup.close();
	});
</script>