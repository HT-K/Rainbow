<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- login content -->
<form id="joinform" class="login" style="margin-top: 30px;">
	<p class="login__title">
		Join Member <br>
		<span class="login-edition">welcome to Rainbow Cinema</span>
	</p>
	
	<div class="social social--colored">
		<a href='#' class="social__variant fa fa-facebook"></a> 
		<a href='#' class="social__variant fa fa-twitter"></a> 
		<a href='#' class="social__variant fa fa-tumblr"></a>
	</div>

	<div class="field-wrap">
		<input type="text" placeholder='아이디를 입력하세요' id="id" name='id' class="login__input"/> 
		<input type='text' placeholder='비밀번호를 입력하세요' id="password" name='password' class="login__input"/>
		<input type='text' placeholder='이름을 입력하세요' id="name" name='name' class="login__input"/>
		<input type='text' placeholder='이메일' id="email" name='email' class="login__input"/>
		<input type='text' placeholder='주소' id="addr" name='addr' class="login__input"/>
	</div>

	<div class="login__control">
		<button id="joinBtn" name="joinBtn" class="btn btn-md btn--warning btn--wider">가입완료</button>
		<button id="cancelBtn" name="cancelBtn" class="btn btn-md btn--warning btn--wider">취소</button>
	</div>
</form>
<!-- login content End -->

<script type="text/javascript">
	$(function() {
		$('#joinBtn').click(function() { // 로그인 버튼 클릭 시 $() 로 form 태그를 찾아서 객체로 리턴받아 action을 걸고 post방식으로 보낸다.
			$('form').attr('action',"${context}/member/join").attr('method','post').submit();
		});
		$('#cancelBtn').click(function() {
			$('form').reset();
		});
	});
</script>