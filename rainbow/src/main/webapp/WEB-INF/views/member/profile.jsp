<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form id="detailform" class="login" style="margin-top: 30px;">
	<p class="login__title">
		${sessionScope.user.name}님 환영합니다. <br>
		<span class="login-edition">회원님의 개인정보입니다.</span>
	</p>
	
	<div class="social social--colored">
		<a href='#' class="social__variant fa fa-facebook"></a> 
		<a href='#' class="social__variant fa fa-twitter"></a> 
		<a href='#' class="social__variant fa fa-tumblr"></a>
	</div>

	<div class="field-wrap">
		<input type="text" value="${sessionScope.user.id}"  class="login__input"/> 
		<input type='text' value="${sessionScope.user.password}" class="login__input"/>
		<input type='text' value="${sessionScope.user.name}" class="login__input"/>
		<input type='text' value="${sessionScope.user.email}" class="login__input"/>
		<input type='text' value="${sessionScope.user.addr}" class="login__input"/>
	</div>

	<div class="login__control">
		<button id="updateBtn" name="joinBtn" class="btn btn-md btn--warning btn--wider">회원정보 수정</button>
		<button id="cancelBtn" name="cancelBtn" class="btn btn-md btn--warning btn--wider">취소</button>
	</div>
</form>

<script type="text/javascript">
	$(function() {
		$('#updateBtn').click(function() { // 로그인 버튼 클릭 시 $() 로 form 태그를 찾아서 객체로 리턴받아 action을 걸고 post방식으로 보낸다.
			$('form').attr('action',"${context}/member/update_form.do").attr('method','post').submit();
		});
		$('#cancelBtn').click(function() {
			$('form').attr('action',"${context}/member/mypage.do").attr('method','post').submit();
		});
	});
</script>