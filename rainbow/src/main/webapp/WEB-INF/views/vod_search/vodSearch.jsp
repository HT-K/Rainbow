<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>
  
	<style>
	#imaginary_container{
    margin-top:20%; /* Don't copy this */
}
.stylish-input-group .input-group-addon{
    background: white !important; 
}
.stylish-input-group .form-control{
	border-right:0; 
	box-shadow:0 0 0; 
	border-color:#ccc;
}
.stylish-input-group button{
    border:0;
    background:transparent;
}
</style>
</head>
<body>
<div class="container">
	<div class="row"><br>
        <div class="col-sm-6 col-sm-offset-3"> 
                <div class="input-group stylish-input-group">
                    <input  type="text" name="keywords" class="form-control"  placeholder="Search" >
                    <span class="input-group-addon">
                        <button id ="search">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
            </div>
        </div>
		</div>
		<div class="col-xs-12 col-sm-8 display-cell" id="result">
		<hr />
		</div>
</div>

</body>
</html>

<script>
$(function() {
	
	$('#search').click(function() { 
		var keywords =$('input:text[name=keywords]').val();
		if(keywords == "")
		{
		alert('영화제목을 입력하세요');
		}else {

					$('#result').load('${context}/vod_search/search_view.do?vodName='+keywords);
		}
	}); 
});
</script>
	<%--           $.ajax({
	               url: "<%=request.getContextPath()%>/vod_search/search_view.do",
	               type: "GET",           
	               data: {"vodName":keywords},
	               async : false,
	               success: function(data) {                   
	                   var as = eval(data);
	                   alert("data:"+as[0]+"/"+as[1]);
	               },
	               error: function(msg, error) {
	                   alert(error);
	               }
	           });  --%>  