<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div id="edit">
		<div class="editTop">
			<h2 class="text-center">${movie.title} 상세정보</h2>
		</div>					
		<div class="editCenter row">
			<form >
				<fieldset class="editField">
					<div class="form-group">
					 	<label for="input_id" class="col-sm-4 control-label">title</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="title" name="title" value="${movie.title}" />
						</div>
					</div>
					<div class="form-group">
						<label for="input_pw" class="col-sm-4 control-label">rating</label>
					 	<div class="col-sm-4">
						<input type="text" class="form-control" id="rating" name="rating" value="${movie.rating}"/>
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">genre</label>
					 	<div class="col-sm-4">
								<input type="text" class="form-control" id="genre" name="genre" value="${movie.genre}" />
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">openDate</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="openDate" name="openDate" value="${movie.openDate}" />
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">grade</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="grade" name="grade" value="${movie.grade}" />
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">runningtime</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="runningtime" name="runningtime" value="${movie.runningtime}" />
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">director</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="director" name="director" value="${movie.director}" />
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">actor</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="actor" name="actor" value="${movie.actor}" />
						</div>
					</div>
					<div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">content</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="content" name="content" value="${movie.content}" />
						</div>
					</div>
					<%-- <div class="form-group">
						<label for="input_name" class="col-sm-4 control-label">image</label>
					 	<div class="col-sm-4">
							<input type="text" class="form-control" id="image" name="image" value="${movie.image}" />
						</div>
					</div> --%>
					<div class="form-group">
					 	<label for="input_id" class="col-sm-4 control-label">movie Image</label>
					 	<div class="col-sm-2">
							<img src="${img}/movie/${movie.image}" alt="" style="width:200px;height:230px"/>
						</div>
					 	<div class="col-sm-2">
							<input type="file" id="image" name="image" />
						</div>
					</div>
					
					
				</fieldset>
			</form>
      			   <div class="input_button text-center">
						<button  id="updateButton">영화정보 수정</button>
						<button  id="deleteButton">영화정보 삭제</button>
					</div>
		</div>
	</div>
		<script>
	$(function() {
		$form = $('form');
		/*
		=== AJAX 적용 전 방식 ===
		$form.addClass('form-horizontal').attr('method','post')
			.attr('action','${context}/member/update.do');
		*/
		$form.addClass('form-horizontal');
		$('#updateButton').addClass('btn btn-primary').click(function() {
			global.setContext('${context}');
			movie.update();
		});
		$('#deleteButton').addClass('btn btn-primary').click(function() {
		       location.href = '${context}/admin/delete?title=${moive.title}';
	          	 });
	         });

	</script>