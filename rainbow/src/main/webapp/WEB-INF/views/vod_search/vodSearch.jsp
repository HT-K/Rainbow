<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.2.0/jquery.min.js"></script>

</head>
<body>
<div class="container">
	<div class="row"><br>
        <div class="col-sm-6 col-sm-offset-3"> 
                <div class="input-group stylish-input-group">
                <form autocomplete="on">
                    <input  type="text"   name="keywords" id="keywords" class="form-control"  placeholder="Search" value="" >
                    </form>
                    <span class="input-group-addon" style="background: white !important;">
                        <button id ="search" style="border:0;background:transparent;">
                            <span class="glyphicon glyphicon-search"></span>
                        </button>  
                    </span>
            </div>
        </div>
		</div>
		<div class="col-xs-12 display-cell" id="result">
		<hr />
		</div>
</div>

</body>
</html>
<script>
$(function() { 
	var searchView = '';
  	$('#keywords').keyup(function(event) { 
  		$('#result').empty();
  		if($('#keywords').val != ""){
		$.ajax('${context}/vod/earlySearch',{
			data : {
				keyword : $('#keywords').val()	
			}, 
			dataType : 'json',
			async : true,
			success : function(data) {
				
			 $.each(data.serchList,function(index,value){ 
				 searchView += '<div class="row">\
					 <div class="col-xs-4">\
					 <a class="searchMovie" href="${context}/vod_detail/vod_detailForm.do?vodName=${list.vodName}">\
					 <img style="width: 100%" src="${context}/resources/'+value.vodImage+'">\
					 </a>\
					 </div>\
					 <div class="col-xs-8" style="font-style:normal;">\
					 <div>'+value.vodName+'</div>\
					 <div>'+value.vodGrade+'</div>\
					 <div>'+value.vodActor+'</div>\
			         </div>\
			         </div>\
			         <hr />';
			 });
			$('#result').append(searchView);
			searchView = '';
			},
			error : function(xhr,status,msg) {
				alert('에러발생상태 :'+status+',내용 : '+msg);
			}
			
		});
  		}
		
	});  
	$('#search').click(function() { 
		var keywords =$('#keywords').val();
		if(keywords == "")
		{
		alert('영화제목을 입력하세요');
		}else if(keywords.length <= 1){
			alert('두글자 이상 입력 하세요');
		}else {  
			$('#result').empty();
			$.ajax('${context}/vod/earlySearch',{
				data : {
					keyword : $('#keywords').val()	
				}, 
				dataType : 'json',
				async : true,
				success : function(data) {
					
				 $.each(data.serchList,function(index,value){ 
					 searchView += '<div class="row">\
						 <div class="col-xs-4">\
						 <a href="${context}/vod_detail/vod_detailForm.do?vodName=${list.vodName}">\
						 <img style="width: 100%" src="${context}/resources/'+value.vodImage+'">\
						 </a>\
						 </div>\
						 <div class="col-xs-8" style="font-style:normal;">\
						 <div>'+value.vodName+'</div>\
						 <div>'+value.vodGrade+'</div>\
						 <div>'+value.vodActor+'</div>\
				         </div>\
				         </div>\
				         <hr />';
				 });
				$('#result').append(searchView);
				searchView = '';
				},
				error : function(xhr,status,msg) {
					alert('에러발생상태 :'+status+',내용 : '+msg);
				}
				
			});
		}
	}); 
});
</script>
 