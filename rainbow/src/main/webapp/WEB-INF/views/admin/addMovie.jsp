<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> <!-- 부트스트랩 홈페이지에서 CDN으로 가져온다. -->
	

<!-- add Movie content -->
<article class="container" style="margin-top: 30px">
		<div class="editTop">
			<h2 class="text-center"> 영화 등록 페이지입니다.</h2>
		</div>
		<form class="form-horizontal" id="addmoive">
	        <div class="form-group" style="margin-top: 30px">
	        	<label class="col-sm-3 control-label" for="title">title</label>
	        	<div class="col-sm-6">
	        		<div class="input-group">
	                	<input type="text" class="form-control" id="title" name="title" placeholder="영화제목을 입력해주세요" />
	                </div>
	            </div>
	        </div>
	        
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="rating">rating</label>
		        <div class="col-sm-6">
		        	<input type="text" class="form-control" id="rating" name="rating" placeholder="예매율을 입력해주세요" />
		        </div>
	        </div>
	        
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="genre">genre</label>
	        	<div class="col-sm-6">
	            	<input type="text" class="form-control" id="genre" name="genre" placeholder="장르를 입력해주세요" />
	        	</div>
	        </div>
	        
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="openDate">openDate</label>
	        	<div class="col-sm-6">
	                <input type="text" class="form-control" id="openDate" name="openDate" placeholder="개봉일을 입력해주세요" />
	            </div>
	        </div>
	        
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="grade">grade</label>
	        	<div class="col-sm-6">
	                <input type="text" class="form-control" id="grade" name="grade" placeholder="연령등급을 입력해주세요" />
	            </div>
	        </div>
	        
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="runningtime">runningtime</label>
	        	<div class="col-sm-6">
	                <input type="text" class="form-control" id="runningtime" name="runningtime" placeholder="상영시간을 입력해주세요" />
	            </div>
	        </div>
	        
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="director">director</label>
	        	<div class="col-sm-6">
	                <input type="text" class="form-control" id="director" name="director" placeholder="감독 이름을 입력해주세요" />
	            </div>
	        </div>
	        
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="actor">actor</label>
	        	<div class="col-sm-6">
	                <input type="text" class="form-control" id="actor" name="actor" placeholder="주연배우 이름을 입력해주세요" />
	            </div>
	        </div>
	        
	        <div class="form-group">
	        	<label class="col-sm-3 control-label" for="runningtime">content</label>
	        	<div class="col-sm-6">
	                <input type="text" class="form-control" id="content" name="content" placeholder="영화 내용을 입력해주세요" />
	            </div>
	        </div>
	        
	        <div class="form-group">
			 	<label for="input_id" class="col-sm-4 control-label" for="Image">Image</label>
			 	<div class="col-sm-2">
					<img src="${img}/main/${movie.image}" alt="" style="width:200px;height:230px"/>
				</div>
			 	<div class="col-sm-2">
					<input type="file" id="image" name="image" />
				</div> 
			</div>
	        
	        <div class="form-group">
	        	<div class="col-sm-12 text-center">
	            	<button class="btn btn-primary" id="addBtn">영화등록<i class="fa fa-check spaceLeft"></i></button>
	            	<button class="btn btn-danger" id="cancelBtn">등록취소<i class="fa fa-times spaceLeft"></i></button>
	        	</div>
	        </div>
		</form>
</article>
<!-- addMovie content End -->

<script type="text/javascript">
	$(function() {
		$('#addBtn').click(function(e) {
			e.preventDefault();
			$('#addMoive').attr('action',"${context}/admin/addMoive").attr('method','post').submit();
			alert('영화등록 버튼 클릭')
		});
		$('#cancelBtn').click(function(e) {
			e.preventDefault();
			location.href = "${context}/global/main";
		});
	});
</script>