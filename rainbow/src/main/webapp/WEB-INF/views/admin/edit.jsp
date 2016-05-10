<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> <!-- 부트스트랩 홈페이지에서 CDN으로 가져온다. -->

<!-- edit content -->
<article class="container" style="margin-top: 30px">
		<div class="editTop">
			<h2 class="text-center"> ${movie.title}상세정보</h2>
		</div>
		
		<form class="form-horizontal" id="edit" style="margin-top: 30px">
			<div class="form-group">
	        	<label class="col-sm-3 control-label" for="title">title</label>
		        <div class="col-sm-6">
		        	<input type="text" value="${movie.title}"  class="form-control" readonly="readonly"/> 
		        </div>
	        </div>
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="rating">rating</label>
		        <div class="col-sm-6">
		        	<input type="text" value="${movie.rating}"  class="form-control" readonly="readonly"/> 
		        </div>
	        </div>
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="genre">genre</label>
		        <div class="col-sm-6">
		        	<input type="text" value="${movie.genre}"  class="form-control" readonly="readonly"/> 
		        </div>
	        </div>
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="openDate">openDate</label>
		        <div class="col-sm-6">
		        	<input type="text" value="${movie.openDate}"  class="form-control" readonly="readonly"/> 
		        </div>
	        </div>
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="grade">grade</label>
		        <div class="col-sm-6">
		        	<input type="text" value="${movie.grade}"  class="form-control" readonly="readonly"/> 
		        </div>
	        </div>
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="runningtime">runningtime</label>
		        <div class="col-sm-6">
		        	<input type="text" value="${movie.runningtime}"  class="form-control" readonly="readonly"/> 
		        </div>
	        </div>
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="director">director</label>
		        <div class="col-sm-6">
		        	<input type="text" value="${movie.director}"  class="form-control" readonly="readonly"/> 
		        </div>
	        </div>
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="actor">actor</label>
		        <div class="col-sm-6">
		        	<input type="text" value="${movie.actor}"  class="form-control" readonly="readonly"/> 
		        </div>
	        </div>
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="content">content</label>
		        <div class="col-sm-6" >
		        	<input type="text" value="${movie.content}"  class="form-control" readonly="readonly"/> 
		        </div>
	        </div>
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="image">image</label>
		        <div class="col-sm-6">
		        	<img src=img src="${context}/resources/rainbow/images/main/${movie.image}" alt="" style="width:200px;height:230px"/>
		        </div>
	        </div>
			
			<div class="form-group">
	        	<div class="col-sm-12 text-center">
	            	<button class="btn btn-primary" id="updateBtn" name="updateBtn">영화정보 수정<i class="fa fa-check spaceLeft"></i></button>
	            	<button class="btn btn-danger" id="cancelBtn" name="cancelBtn">취소<i class="fa fa-times spaceLeft"></i></button>
	        	</div>
	        </div>
		</form>
</article>
<!-- edit content End -->
 

<script type="text/javascript">
	$(function() {
			$('#updateBtn').click(function(e) { 
			e.preventDefault();
			location.href = "${context}/admin/update"
		});
			
		$('#cancelBtn').click(function(e) {
			e.preventDefault();
			location.href = "${context}/admin/content";
		});
	});
	 
</script>
