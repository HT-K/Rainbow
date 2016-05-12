/**
 * Member
 */
var member = {
	loginForm : function(context) {
		var loginForm = 
			'<form class="login" id="login_form" style="margin-top: 30px;">\
				<p class="login__title">\
					sign in <br>\
					<span class="login-edition">welcome to Rainbow Cinema</span>\
				</p>\
				<div class="social social--colored">\
					<a href="#" class="social__variant fa fa-facebook"></a>\
					<a href="#" class="social__variant fa fa-twitter"></a>\
					<a href="#" class="social__variant fa fa-tumblr"></a>\
				</div>\
				<p class="login__tracker">or</p>\
				<div class="field-wrap">\
					<input type="text" placeholder="아이디를 입력하세요" id="id" name="id" class="login__input"/>\
					<input type="text" placeholder="비밀번호를 입력하세요" id="password" name="password" class="login__input"/>\
				</div>\
				<div class="login__control">\
					<input type="button" id="loginBtn" name="loginBtn" class="btn btn-md btn--warning btn--wider" value="sign in">\
					<a href="#" class="login__tracker form__tracker">Forgot password?</a>\
				</div>\
			</form>';
		$('#content').html(loginForm);
		$('#loginBtn').click(function(e) {
			e.preventDefault();
			$.ajax({
				url : context+'/member/login',
				data : {
					id : $('#id').val(),	
					password : $('#password').val()
				},
				dataType : 'json',
				type : 'post',
				success : function(data) {
					alert(data.member.name+ '님 로그인 성공');
					location.href = context+'/home/main';
				},
				error : function(xhr, status, msg) {
					alert("로그인 시 에러발생 : " + msg);
				}
			});
			/*$('#login_form').attr('action', context+"/member/login").attr('method',"post").submit();*/
		});
	},
	joinForm : function(context) {
		var joinForm = 
			'<article class="container" style="margin-top: 30px">\
				<div class="col-md-12 login">\
					<p class="login__title">\
						Join Member <br>\
						<span class="login-edition">welcome to Rainbow Cinema</span>\
					</p>\
					<div class="social social--colored">\
						<a href="#" class="social__variant fa fa-facebook"></a> \
						<a href="#" class="social__variant fa fa-twitter"></a> \
						<a href="#" class="social__variant fa fa-tumblr"></a>\
					</div>\
					<form class="form-horizontal" id="join_form">\
		        		<div class="form-group" style="margin-top: 30px">\
		        			<label class="col-sm-3 control-label" for="inputId">아이디</label>\
		        			<div class="col-sm-6">\
		        				<div class="input-group">\
		                			<input type="text" class="form-control" id="id" name="id" placeholder="아이디를 입력해주세요" />\
		                			<span class="input-group-btn">\
		                    			<button class="btn btn-success">아이디 중복체크<i class="fa fa-mail-forward spaceLeft"></i></button>\
		                			</span>\
		                		</div>\
		            		</div>\
		        		</div>\
		        		<div class="form-group">\
		        			<label class="col-sm-3 control-label" for="inputPassword">비밀번호</label>\
			        		<div class="col-sm-6">\
			        			<input type="text" class="form-control" id="password" name="password" placeholder="비밀번호를 입력해주세요" />\
			        		</div>\
		        		</div>\
		        		<div class="form-group">\
		        			<label class="col-sm-3 control-label" for="inputName">이름</label>\
		        			<div class="col-sm-6">\
		            			<input type="text" class="form-control" id="name" name="name" placeholder="이름을 입력해주세요" />\
		        			</div>\
		        		</div>\
		        		<div class="form-group">\
		        			<label class="col-sm-3 control-label" for="inputBirth">생년월일</label>\
		        			<div class="col-sm-6">\
		                		<input type="text" class="form-control" id="birth" name="birth" placeholder="생년월일을 입력해주세요" />\
		            		</div>\
		        		</div>\
		        		<div class="form-group">\
		        			<label class="col-sm-3 control-label" for="inputAddr">주소</label>\
		        			<div class="col-sm-6">\
		                		<input type="text" class="form-control" id="addr" name="addr" placeholder="주소를 입력해주세요" />\
		            		</div>\
		        		</div>\
		        		<div class="form-group">\
		        			<label class="col-sm-3 control-label" for="inputEmail">이메일</label>\
		        			<div class="col-sm-6">\
		                		<input type="text" class="form-control" id="email" name="email" placeholder="이메일을 입력해주세요" />\
		            		</div>\
		        		</div>\
		        		<div class="form-group">\
		        			<div class="col-sm-12 text-center">\
		            			<button class="btn btn-primary" id="joinBtn">회원가입<i class="fa fa-check spaceLeft"></i></button>\
		            			<button class="btn btn-danger" id="cancelBtn">가입취소<i class="fa fa-times spaceLeft"></i></button>\
		        			</div>\
		        		</div>\
					</form>\
				</div>\
			</article>';
		$('#content').html(joinForm);
		
		$('#joinBtn').click(function(e) { 
			e.preventDefault();
			var $frm = $('#join_form');
			var postData = new FormData($('#join_form')[0]);
			$.ajax({
				url : context+'/member/join',
				data : postData,
				dataType : 'json',
				type : 'post',
				mimeType: 'multipart/form-data',
			    contentType: false, 
			    processData : false,
				success : function() {
					alert('회원가입에 성공하셨습니다. 로그인 화면으로 이동합니다.');
					member.loginForm(context);
				},
				error : function(xhr, status, msg) {
					alert("로그인 시 에러발생 : " + msg);
				}
			});
				/*$('#joinForm').attr('action', context+"/member/join").attr('method','post').submit();*/
		});
		$('#cancelBtn').click(function(e) {
			e.preventDefault();
			$('#joinForm').reset();
		});
	},
	profileForm : function(context) {
		var profileForm = 
			'<article class="container" style="margin-top: 30px">\
				<div class="col-md-12 login">\
					<p class="login__title">\
						'+ sessionScope.user.name +'님 환영합니다. <br>\
						<span class="login-edition">회원님의 개인정보입니다.</span>\
					</p>\
					<div class="social social--colored">\
						<a href="#" class="social__variant fa fa-facebook"></a> \
						<a href="#" class="social__variant fa fa-twitter"></a> \
						<a href="#" class="social__variant fa fa-tumblr"></a>\
					</div>\
					<form class="form-horizontal" id="detailform" style="margin-top: 30px">\
						<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="id">아이디</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" value="'+ sessionScope.user.id +'"  class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="password">비밀번호</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" value="'+ sessionScope.user.password +'"  class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="name">이름</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" value="'+ sessionScope.user.name +'"  class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="birth">생년월일</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" value="'+ sessionScope.user.birth +'"  class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="addr">주소</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" value="'+ sessionScope.user.addr +'"  class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="email">이메일</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" value="'+ sessionScope.user.email +'"  class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
						<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="point">회원 포인트</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" value="'+ sessionScope.user.point +'"  class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="grade">회원등급</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" value="'+ sessionScope.user.grade +'"  class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
						<div class="form-group">\
	        				<div class="col-sm-12 text-center">\
								<button class="btn btn-primary" id="updateBtn" name="updateBtn">회원정보 수정<i class="fa fa-check spaceLeft"></i></button>\
	            				<button class="btn btn-danger" id="cancelBtn" name="cancelBtn">취소<i class="fa fa-times spaceLeft"></i></button>\
	        				</div>\
	        			</div>\
					</form>\
				</div>\
			</article>';
		
		$('#content').html(profileForm);
		$('#updateBtn').click(function(e) {
			e.preventDefault();
			location.href = context + "/member/update_form";
			//$('#detailform').attr('action', context + "/member/update_form").attr('method','post').submit();
		});
		$('#cancelBtn').click(function(e) {
			e.preventDefault();
			location.href = context + "/home/main";
		});
	},
	updateForm : function(context) {
		var updateForm = 
			'<article class="container" style="margin-top: 30px">\
				<div class="col-md-12 login">\
					<p class="login__title">\
						'+ sessionScope.user.name +'님 환영합니다. <br>\
						<span class="login-edition">회원님의 정보 수정 페이지입니다.</span>\
					</p>\
					<div class="social social--colored">\
						<a href="#" class="social__variant fa fa-facebook"></a> \
						<a href="#" class="social__variant fa fa-twitter"></a> \
						<a href="#" class="social__variant fa fa-tumblr"></a>\
					</div>\
					<form class="form-horizontal" id="updateForm" name="updateForm" style="margin-top: 30px">\
						<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="id">아이디</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" class="form-control" id="id" name="id" value="'+ sessionScope.user.id +'" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="password">비밀번호</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" class="form-control" id="password" name="password" value="'+ sessionScope.user.password +'" /> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="name">이름</label>\
							<div class="col-sm-6">\
		        				<input type="text" class="form-control" id="name" name="name" value="'+ sessionScope.user.name +'" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="birth">생년월일</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" class="form-control" id="birth" name="birth" value="'+ sessionScope.user.birth +'" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="addr">주소</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" class="form-control" id="addr" name="addr" value="'+ sessionScope.user.addr +'" /> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="email">이메일</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" class="form-control" id="email" name="email" value="'+ sessionScope.user.email +'" /> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="point">회원 포인트</label>\
		        			<div class="col-sm-6">\
		        				<input type="text" value="'+ sessionScope.user.point +'" id="point" name="point" class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
	        			<div class="form-group">\
	        				<label class="col-sm-3 control-label" for="grade">회원등급</label>\
		        			<div class="col-sm-6">\
								<input type="text" value="'+ sessionScope.user.grade +'" id="grade" name="grade" class="form-control" readonly="readonly"/> \
		        			</div>\
	        			</div>\
						<div class="form-group">\
				        	<div class="col-sm-12 text-center">\
				            	<button class="btn btn-primary" id="updateOkBtn" name="updateOkBtn">수정완료<i class="fa fa-check spaceLeft"></i></button>\
				            	<button class="btn btn-danger" id="cancelBtn" name="cancelBtn">취소<i class="fa fa-times spaceLeft"></i></button>\
				        	</div>\
				        </div>\
					</form>\
				</div>\
			</article>';
		
		$('#content').html(updateForm);
		$('#updateOkBtn').click(function(e) {
			e.preventDefault();
			$('#updateForm').attr('action', context + "/member/update").attr('method','post').submit();
		});
		$('#cancelBtn').click(function(e) {
			e.preventDefault();
			$('#updateForm').reset();
		});
	}
}