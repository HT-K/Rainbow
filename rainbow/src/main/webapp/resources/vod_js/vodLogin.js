/**
 * vodLogin
 */

var vodLogin = {
	vodLoginForm : function(context) {
		$('#content').empty();
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
                <input type="text" class="form-control" placeholder="ID" name="id" required autofocus />\
            </div>\
            <div class="form-group">\
                <input type="password" class="form-control" placeholder="Password" name="password" required />\
            </div>\
		  </form>\
            <button id="loginBtn" class="btn btn-lg btn-block purple-bg">Sign Up</button>\
            <hr />\
            <button class="span4 btn btn-lg  purple-bg" style="width:32%">Find Id</button>\
             <button class="span4 btn btn-lg  purple-bg" style="width:32%">Find Psw</button>\
             <button class="span4 btn btn-lg  purple-bg" style="width:32%">Join</button>\
			  </div>\
	        </div>\
			</div>\
			</div>';

		$('#content').html(loginFrom);

	}

}