/**
 * vodLogin
 */

var vodLogin = {
	vodLoginForm : function(context) {
		//$('#outside').empty();
		$('body').empty();
		var loginFrom = '<div class="container">\
			<br/>\
			<div class="row">\
			<div class="col-md-3 col-md-offset-4 setwidth" >\
			<div class="account-box">\
	           <p class="serif">로그인</p>\
	           <hr />\
	                <div class="logo" >\
			<img   src="http://placehold.it/90x38/fff/6E329D&text=LOGO" alt=""/>\
            </div>\
            <form>\
            <div class="form-group">\
                <input type="text" class="form-control" placeholder="ID" name="id" id ="loginId" required autofocus />\
            </div>\
            <div class="form-group">\
                <input type="password" class="form-control" placeholder="Password" id="loginPassword" name="password" required />\
            </div>\
		  </form>\
            <button id="loginBtn" class="btn btn-lg btn-block purple-bg">Sign Up</button>\
            <hr />\
            <button class="col-xs-4 btn btn-lg  purple-bg" >Find Id</button>\
             <button class="col-xs-4 btn btn-lg  purple-bg"  >Find Psw</button>\
             <button class="col-xs-4 btn btn-lg  purple-bg" >Join</button>\
			  </div>\
	        </div>\
			</div>\
			</div>';

		$('body').html(loginFrom);
		
		$('#loginBtn').click(function(e) {
			 e.preventDefault();
			alert("로그인 시도!");
			$.ajax(context+'/member/vod_login',{
				data : {
					id : $('#loginId').val(),
					password : $('#loginPassword').val()
				},
				type : 'post',
				dataType : 'json',
				async : true,
				success : function(data) {
					if(data.check == null){
						alert('아이디 또는 패스워드가 틀렸습니다.')
					}else{
						location.href = context+"/vod/vodMain"
					}
					
				},
				error : function(xhr,status,msg) {
					alert('에러발생상태 :'+status+',내용 : '+msg);
				}
				
				
			});
		});

	}

}