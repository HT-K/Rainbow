
//관리자
var admin = {
	adminForm : function(context) {
		$('body').empty();
			  var addMovieForm = '<article class="container" style="margin-top: 30px">'
					+'<div class="editTop"><h2 class="text-center"> THE MOIVE ADD PAGE</h2>'
					+'</div>'
					+'<form class="form-horizontal" id="input" style="margin-top: 30px" enctype="multipart/form-data">'
					+'<div class="form-group">'
			        	+'<label class="col-sm-3 control-label" for="title">TITLE</label>'
				        +'<div class="col-sm-6">'
				        	+'<input type="text" id="title" name="title"class="form-control" />'
				        +'</div>'
			        +'</div>'
			        +'<div class="form-group">'
			        	+'<label class="col-sm-3 control-label" for="rating">RATING</label>'
				        +'<div class="col-sm-6">'
				        	+'<input type="text" id="rating" name="rating" class="form-control"/>'
				        +'</div>'
			        +'</div>'
			        +'<div class="form-group">'
			        	+'<label class="col-sm-3 control-label" for="genre">GENRE</label>'
				        +'<div class="col-sm-6">'
				        	+'<input type="text"  id="genre" name="genre" class="form-control" /></div>'
				       +'</div>'
			          +'<div class="form-group">'
			        	+'<label class="col-sm-3 control-label" for="openDate">RELEASE DATE</label>'
				        +'<div class="col-sm-6">'
				        	+'<input type="text"  id="openDate" name="openDate" class="form-control" /></div>'
			        +'</div><div class="form-group"><label class="col-sm-3 control-label" for="grade">AGE</label>'
				       +'<div class="col-sm-6">'
				        	+'<input type="text"  id="grade" name="grade" class="form-control" />'
				        +'</div>'
			        +'</div>'
			        +'<div class="form-group">'
			        	+'<label class="col-sm-3 control-label" for="runningtime">RUNNING TIME</label>'
				        +'<div class="col-sm-6"><input type="text" id="runningtime" name="runningtime" class="form-control" /></div>'
			        +'</div>'
			        +'<div class="form-group">'
			        	+'<label class="col-sm-3 control-label" for="director">DIRECTOR</label>'
				        +'<div class="col-sm-6"><input type="text"  id="director" name="director"  class="form-control" /></div>'
			        +'</div>'
			        +'<div class="form-group">'
			        	+'<label class="col-sm-3 control-label" for="actor">ACTOR</label>'
				        +'<div class="col-sm-6"><input type="text" id="actor" name="actor"  class="form-control" /></div>'
			        +'</div>'
			        +'<div class="form-group">'
			        	+'<label class="col-sm-3 control-label" for="content">SUMMARY</label>'
				        +'<div class="col-sm-6"><textarea class="form-control" rows="3"  id="content" name="content" ></textarea></div>'
			        +'</div>'
			        +'<div class="form-group">'
					 	+'<label for="input_id" class="col-sm-4 control-label" for="Image">POSTER</label>'
					 	+'<div class="col-sm-2">'
							+'<img src="${context}/resources/rainbow/images/main" alt="" style="width:180px;height:230px"/>'
						+'</div>'
					 	+'<div class="col-sm-2">'
							+'<input type="file" id="image" name="image" />'
						+'</div>'
					+'</div>'
		      			+'<div class="form-group">'
			        	+'<div class="col-sm-12 text-center">'
			            	+'<button class="btn btn-primary" id="inputBtn" name="inputBtn">ADD<i class="fa fa-check spaceLeft"></i></button>'
			            	+'<button class="btn btn-danger" id="cancelBtn" name="cancelBtn">CANCEL<i class="fa fa-times spaceLeft"></i></button>'
			           	+'</div>'
			        +'</div>'
				+'</form>'
		+'</article>';    
					$('#content').html(addMovieForm);
					$('#inputBtn').click(function(e) {
						e.preventDefault();
						alert('영화등록 버튼클릭');
						$.ajax(context+'/admin/input', {
							data : {
								title : $('#title').val(),
								rating : $('rating').val(),
								genre : $('genre').val(),
								openDate : $('openDate').val(),
								grade : $('grade').val(),
								runningtime : $('runningtime').val(),
								actor : $('actor').val(),
								content : $('content').val(),
								Image : $('Image').val()
							},
							type : 'post',
							dataType : 'json',
							contentType : 'application/json',
							mimeType : 'application/json',
							async : true,
							success : function(data) {
						        alert('영화 등록 완료 되었습니다 . ' + data.check.title);
						        location.href = context+'/admin/content';
							},
							error : function(xhr, status, msg) {
								alert('에러발생상태 :' + status + ',내용 : ' + msg);
							}

						});
					}); 
					$('#cancelBtn').click(function(e) {
						e.preventDefault();
						alert('영화등록 취소 버튼클릭');
						$.ajax(context+'/admin/input',{
							data : {
							success : function(data) {
								alert(data.message);
								location.href = article.getContext()+'/admin/conent';
							},
							error : function(xhr,status,msg) {
								alert('에러발생상태 :'+status+',내용 : '+msg);
							}
				},
				error : function(xhr,status,msg) {
					alert('에러발생상태 :'+status+',내용 : '+msg);
				}
					});
					});
	}
}