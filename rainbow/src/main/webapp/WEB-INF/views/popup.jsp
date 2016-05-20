<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div>
	<div>
		<img alt="" width="4%" height="4%" align="right" src="${context}/resources/img/closeBtn.png" class="popupClose closeBtn cursor">
	</div>
	<div align="center" >
		<h3>김희태의 포트폴리오</h3>
		
		<iframe width="560" height="315" src="https://www.youtube.com/embed/3RIckT4VhEQ?rel=0&autoplay=1" frameborder="0" allowfullscreen></iframe>
		<p>테스트용 Id : kim pw :1 </p>
		<p>관리자용 Id : admin pw :1 </p>
		<p><a id="mobileURL" href="#">모바일 앱 용 웹페이지 URL</a></p>
		
	<p>
	  <button id="ppt" type="button" class="btn btn-primary" style="width: 150px">프로젝트 PPT보기</button>
	</p>
	</div>
</div>
<script>

	/* $('.popupClose').hover(function() {
		$(this).attr("src","${context}/resources/img/close_button.png");
	}, function(){
		$(this).attr("src","${context}/resources/img/close_button.png");
	}); */
	
	$('.popupClose').click(function(e) {
		e.preventDefault();
		$.magnificPopup.close();
	});
	
	$('#ppt').click(function(e) {
		e.preventDefault();
		location.href = "http://www.slideshare.net/heetaekim50/rainbow-62209819";
		/*http://www.slideshare.net/heetaekim50/rainbow-62209819  */
	});
	
	$('#mobileURL').click(function(e) {
		e.preventDefault();
		location.href = "http://ec2-52-79-102-177.ap-northeast-2.compute.amazonaws.com/mobile";
	});
</script>