<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<!--   <style type="text/css">
.account-box
{
    border: 2px solid rgba(153, 153, 153, 0.75);
    border-radius: 2px;
    -moz-border-radius: 2px;
    -webkit-border-radius: 2px;
    -khtml-border-radius: 2px;
    -o-border-radius: 2px;
    z-index: 3;
    font-size: 13px !important;
    font-family: "Helvetica Neue" ,Helvetica,Arial,sans-serif;
    background-color: #ffffff;
    padding: 20px;
}
.logo
{
    width: 138px;
    height: 30px;
    text-align: center;
    margin: 10px 0px 27px 40px;
    background-position: 0px -4px;
    position: relative;
}
.forgotLnk
{
    margin-top: 10px;
    display: block;
}
.purple-bg
{
    background-color: #6E329D;
    color: #fff;
}
.or-box
{
    position: relative;
    border-top: 1px solid #dfdfdf;
    padding-top: 20px;
    margin-top:20px;
}
.or
{
    color: #666666;
    background-color: #ffffff;
    position: absolute;
    text-align: center;
    top: -8px;
    width: 40px;
    left: 90px;
}
.account-box .btn:hover
{
    color: #fff;
}
.btn-facebook
{
    background-color: #3F639E;
    color: #fff;
    font-weight:bold;
}
.btn-google
{
    background-color: #454545;
    color: #fff;
    font-weight:bold;
}
p.serif {
   	 font-style: normal;
   	 font-weight: 600;
   	 font-size : 15px;
     text-align: center;
} 
.setwidth {
  width: 100%;
  margin: auto; 
   /* max-width: none !important; */
}
</style>-->
</head>
<body>
	<div class="container">
		<br />
		<div class="row">
			<div class="col-xs-3 col-xs-offset-4"
				style="width: 100%; margin: auto;">
				<div class="account-box">
					<p class="serif">회원가입</p>
					<hr />
					<div class="logo ">
						<img src="http://placehold.it/90x38/fff/6E329D&text=LOGO" alt="" />
					</div>
					<form>
						<div>
							<input type="text" class="form-control" name="id"
								placeholder="ID" required autofocus />
						</div>
						<br />
						<div>
							<input type="password" class="form-control" name="password"
								placeholder="Password" required />
						</div>
						<br />
						<div>
							<input type="password" class="form-control" name="password2"
								placeholder="Check Password" required />
						</div>
						<br />
						<div>
							<input type="text" name="name" class="form-control"
								placeholder="Name" required autofocus />
						</div>
						<br />
						<div>
							<input type="text" maxlength="50" name="email"
								pattern="^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$"
								class="form-control" placeholder="Email" required autofocus />
						</div>
						<br />
						<div>
							<input type="text" maxlength="200" name="addr"
								pattern="^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$"
								class="form-control" placeholder="Addr" required autofocus />
						</div>
						<br />
						<div>
							<input type="text" maxlength="10" name="gender"
								pattern="^[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[@]{1}[-A-Za-z0-9_]+[-A-Za-z0-9_.]*[.]{1}[A-Za-z]{2,5}$"
								class="form-control" placeholder="Gender" required autofocus />
						</div>
						<br />
						<div> 
							<input class="form-control" type="date" name="date" id="date" >
						</div>
						<br />
					</form> 
					<button id="joinBtn" class="btn btn-lg btn-block  ">Sign
						Up</button>
					<hr />
					<button class="col-xs-4 btn btn-lg">Find Id</button>
					<button class="col-xs-4  btn btn-lg">Find Psw</button>
					<button class="col-xs-4  btn btn-lg">Join</button> 
				</div>
			</div>
		</div> 
	</div>
</body>
</html>
<script>
	$(function() {
		$('#joinBtn').click(
				function(e) {
					e.preventDefault(); 
					var id = $('input:text[name=id]').val();
					var password = $('input:text[name=password]').val();
					var name = $('input:text[name=name]').val();
					var email = $('input:text[name=email]').val();
					var addr = $('input:text[name=addr]').val();  
					var year = $('#date').val(); 
					alert('아이디 : ' + id + ', 비번 : ' + password + ', 이름 : '
							+ name + ', 이메일 : ' + email + ', 주소 :' + addr
							+ ', 년도 : ' + year);
					$('form').attr('method', 'post').attr('action',
							'${context}/member/vod_join').submit();
				});

	});
</script>