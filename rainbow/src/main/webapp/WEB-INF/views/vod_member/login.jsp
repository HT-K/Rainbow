<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
   <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
   <style type="text/css">
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
</style>
</head>
<body>
<div class="container">
<br/>
    <div class="row">
        <div class="col-md-3 col-md-offset-4 setwidth" >
            <div class="account-box">
            <p class="serif">로그인</p>
           <hr />
                <div class="logo"  >
                    <img   src="http://placehold.it/90x38/fff/6E329D&text=LOGO" alt=""/>
                </div>
                <form>
                <div class="form-group">
                    <input type="text" class="form-control" placeholder="ID" name="id" required autofocus />
                </div>
                <div class="form-group">
                    <input type="password" class="form-control" placeholder="Password" name="password" required />
                </div>
    		  </form>
                <button id="loginBtn" class="btn btn-lg btn-block purple-bg">Sign Up</button>
               
               
         		 <hr />
                <button class="span4 btn btn-lg  purple-bg" style="width:32%">Find Id</button>
                 <button class="span4 btn btn-lg  purple-bg" style="width:32%">Find Psw</button>
                 <button class="span4 btn btn-lg  purple-bg" style="width:32%">Join</button>
 
     
  </div>
        </div>
    </div>
</div>
</body>
</html>
<script>
$(function() {
	$('#loginBtn').click(function() {
		 	var id =$('input:text[name=id]').val();
			var password =$('input:text[name=password]').val();
			alert("loginBtn@ "+ id);
			alert("loginBtn@ "+ password);
		$('form').attr('method','post').attr('action','${context}/member/vod_login').submit();
		});
});
</script>