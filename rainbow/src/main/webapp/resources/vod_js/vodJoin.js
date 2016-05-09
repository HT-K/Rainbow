/**
 * Join Script
 */

var vodJoin = {
	vodJoinForm : function(context) {
		$('body').empty();
		var joinForm = '<div class="container">\
				<br/>\
				<div class="row">\
				<div class="col-xs-3 col-xs-offset-4" style="width : 100%; margin: auto;">\
				<div class="account-box">\
				<p class="serif">회원가입</p>\
				 <hr />\
				 <div class="logo ">\
                <img src="http://placehold.it/90x38/fff/6E329D&text=LOGO" alt=""/>\
            </div>\
			<form>\
			  <div >\
            <input type="text" class="form-control"  name ="id" placeholder="ID" required autofocus />\
        </div><br/>\
        <div >\
            <input type="password" class="form-control" id = "password" name="password" placeholder="Password"  required />\
        </div><br/>\
         <div >\
            <input type="password" class="form-control" name ="password2" placeholder="Check Password" required />\
        </div><br/>\
          <div >\
            <input type="text"   name="name"  class="form-control" placeholder="Name" required autofocus />\
        </div><br/>\
        <div >\
            <input type="text" maxlength="50" name="email" pattern="^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$" class="form-control" placeholder="Email" required autofocus />\
        </div><br/>\
          <div >\
            <input type="text" maxlength="200" name="addr" pattern="^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$" class="form-control" placeholder="Addr" required autofocus />\
        </div>\
			<br/>\
         <div>\
			<input class="form-control" type="date" name="date" id="date" > </div>\
			<br/>\
       </form>\
			<button id ="joinBtn" class="btn btn-lg btn-block purple-bg">Sign Up</button>\
			<hr />\
  			<button class="col-xs-4 btn btn-lg"  >Find Id</button>\
            <button class="col-xs-4 btn btn-lg"  >Find Psw</button>\
            <button class="col-xs-4 btn btn-lg"  >Login</button>\
            </div>\
	        </div>\
	    </div>\
	    </div>';
		$('body').html(joinForm); 
		$('#joinBtn').click(function(e) {
			e.preventDefault();
			$.ajax(context + '/member/vod_join', {
				data : {
				 	id : $('input:text[name=id]').val(),
				 	password : $('#password').val(),
					name : $('input:text[name=name]').val(),
					email : $('input:text[name=email]').val(),
					addr : $('input:text[name=addr]').val(),
					year : $('#date').val()
				},
				type : 'post',
				dataType : 'json',
				async : true,
				success : function(data) {
			        alert('회원가입이 완료 되었습니다 . ' + data.check.id);
			        location.href = context+"/mobile"
				},
				error : function(xhr, status, msg) {
					alert('에러발생상태 :' + status + ',내용 : ' + msg);
				}

			});
		});
	}
};