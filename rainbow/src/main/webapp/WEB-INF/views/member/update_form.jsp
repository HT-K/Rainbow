<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<form id="detailform" class="login" style="margin-top: 30px;">
	<p class="login__title">
		${sessionScope.user.name}님 환영합니다. <br>
		<span class="login-edition">회원님의 정보 수정 페이지입니다.</span>
	</p>
	
	<div class="social social--colored">
		<a href='#' class="social__variant fa fa-facebook"></a> 
		<a href='#' class="social__variant fa fa-twitter"></a> 
		<a href='#' class="social__variant fa fa-tumblr"></a>
	</div>

	<div class="field-wrap">
		<input type="text" class="login__input" id="id" name="id" value="${sessionScope.user.id}" readonly="readonly"/> 
		<input type='text' class="login__input" id="password" name='password' value="${sessionScope.user.password}"/>
		<input type='text' class="login__input" id="name" name="name" value="${sessionScope.user.name}" readonly="readonly"/>
		<input type='text' class="login__input" id="email" name="email" value="${sessionScope.user.email}"/>
		<input type='text' class="login__input" id="addr" name="addr" value="${sessionScope.user.addr}"/>
	</div>

	<div class="login__control">
		<button id="updateBtn" name="joinBtn" class="btn btn-md btn--warning btn--wider">수정완료</button>
		<button id="cancelBtn" name="cancelBtn" class="btn btn-md btn--warning btn--wider">취소</button>
	</div>
</form>

<script type="text/javascript">
	$(function() {
		$('#updateBtn').click(function() { // 로그인 버튼 클릭 시 $() 로 form 태그를 찾아서 객체로 리턴받아 action을 걸고 post방식으로 보낸다.
			$('form').attr('action',"${context}/member/update").attr('method','post').submit();
		});
		$('#cancelBtn').click(function() {
			$('form').attr('action',"${context}/member/profile").attr('method','post').submit();
		});
	});
</script>