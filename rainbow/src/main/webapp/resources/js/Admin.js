
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
	},
	addVodForm :  function(context) {
/*		<insert id="addMovie" parameterType="com.rainbow.app.vod.VodDTO">
		INSERT INTO
		Vod(vod_name,vod_content,vod_price,vod_category,vod_time,vod_rating,vod_url,vod_image,vod_date,vod_free,vod_grade,vod_actor,vod_director,vod_country)
		values(
		#{vodName},#{vodContent},#{vodPrice},#{vodCategory},#{vodTime},
		#{vodRating},#{vodUrl},#{vodImage},NOW(),#{vodFree},
		#{vodGrade},#{vodActor},#{vodDirector},#{vodCountry})
		
		insert into Vod(vod_name,vod_content_title,vod_content,vod_price,vod_category
,vod_time,vod_rating,vod_url,vod_image,vod_date,vod_free,vod_grade,vod_actor,vod_director,vod_country) 
values(
	'연인들 : Die geliebten Schwestern, Beloved Sisters, 2014'
	,'천재시인 프리드리히 쉴러의 숨겨졌던 러브 스토리 세상이 허락하지 않은 사랑이 시작된다!'
	,'몰락한 귀족집안의 두 딸 카롤린과 샬롯은 서로를 자신처럼 아끼는 둘도 없는 자매다. 쓰러져 가는 가문을 살리기 위해 17세의 어린 나이에 부유한 귀족의 아내가 된 장녀 카롤린은 원치 않았던 결혼이었음에도 불구하고 어머니와 샬롯을 위해 모든 걸 이겨낸다. 그런 언니의 모습을 안타깝게 지켜보던 동생 샬롯은 어느 날, 가난하지만 장래가 촉망되는 시인 프리드리히 쉴러를 운명처럼 만나 사랑에 빠진다. 그러던 중 결혼 승낙을 받기 위해 노력하던 두 사람 앞에 언니 카롤린이 나타나면서 세 사람의 운명은 예측할 수 없는 길을 향해 흘러가는데...'
	,'3500'
	,'드라마, 멜로/로맨스'
	,139
	,'7.11'
	,'http://movie.naver.com/movie/bi/mi/videoPlayer.nhn?code=121367&type=movie&videoId=A6779EFD9CDBC0B8E56A0298BD90FA246E42&videoInKey=V128777d039c23c0f1984cfd91956b6c53e9e5954c74976f66879e025b29b016376bbcfd91956b6c53e9e&coverImage=/multimedia/MOVIECLIP/TRAILER/29256_20151204101240.jpg&mid=29256&autoPlay=true&playerSize=665x480'
	,'/vod_image/drama/DiegeliebtenSchwestern.png'
	,'2015-12-31'
	,'n'
	,'[국내] 청소년 관람불가'
	,'도미닉 그래프'
	,'한나 헤르츠스프룽(캐롤라인 본 렝필드), 플로리안 슈테터(프레드리히 쉴러 역)'
	,'독일, 오스트리아, 스위스'
	);
	</insert>*/
		
		var addVodForm = '<article class="container" style="margin-top: 30px">'
			+ '<h2>　</h2>'
			+ '<div class="editTop"><h2 class="text-center"> THE MOIVE ADD PAGE</h2>'
			+ '</div>'
	        +'<form class="form-horizontal"  id="form" style="margin-top: 30px" enctype="multipart/form-data" action="/admin/input" method="post">'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="title">VOD NAME</label>'
			+ '<div class="col-sm-6">'
			+ '<input type="text" id="vodName" name="vodName"class="form-control" />'
			+ '</div>'
			+ '</div>'
			+ '<div class="row form-group">'
			+ '<label class="col-sm-3 control-label" for="subTitle">VOD SUB TITLE</label>'
			+ '<div class="col-sm-6">'
			+ '<input type="text" id="vodSubTitle" name="vodSubTitle" class="form-control"/>'
			+ '</div>'
			+ '</div>'
			+ '<div class="row form-group">'
			+ '<label class="col-sm-3 control-label" for="content">VOD CONTENT</label>'
			+ '<div class="col-sm-6"><textarea class="form-control" rows="3"  id="vodContent" name="vodContent" ></textarea>'
			+ '</div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="price">VOD PRICE</label>'
			+ '<div class="col-sm-6">'
			+ '<input type="text" id="vodPrice" name="vodPrice" class="form-control"/>'
			+ '</div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="cate">VOD CATEGORY</label>'
			+ '<div class="col-sm-6">'
			+ '<select name="hobby">'
		    + '<option value="축구">축구</option>'
		    + '<option value="농구">농구</option>'
		    + '<option value="게임">게임</option>'
		    + '</select></div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="time">VOD TIME</label>'
			+ '<div class="col-sm-6">'
			+ '<input type="text"  id="vodTime" name="vodTime" class="form-control" /></div>'
			+ '</div>'
			+'<div class="form-group">'
			+'<label class="col-sm-3 control-label" for="rating">VOD RATING</label>'
			+ '<div class="col-sm-6">'
			+ '<input type="text"  id="vodRating" name="vodRating" class="form-control" />'
			+ '</div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="url">VOD URL</label>'
			+ '<div class="col-sm-6"><input type="text" id="vodUrl" name="vodUrl" class="form-control" /></div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="date">VOD DATE</label>'
			+ '<div class="col-sm-6"><input type="date"  id="vodDate" name="vodDate"  class="form-control" /></div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="free">VOD FREE</label>'
			+ '<div class="col-sm-6"><input type="text" id="vodFree" name="vodFree"  class="form-control" /></div>'
			+ '</div>' 
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="grade">VOD GRADE</label>'
			+ '<div class="col-sm-6"><input type="text" id="vodGrade" name="vodGrade"  class="form-control" /></div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="actor">VOD ACTOR</label>'
			+ '<div class="col-sm-6"><input type="text" id="vodActor" name="vodActor"  class="form-control" /></div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="actor">VOD DIRECTORY</label>'
			+ '<div class="col-sm-6"><input type="text" id="vodDirectory" name="vodDirectory"  class="form-control" /></div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label class="col-sm-3 control-label" for="actor">VOD COUNTRY</label>'
			+ '<div class="col-sm-6"><input type="text" id="vodCountry" name="vodCounty"  class="form-control" /></div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<label for="input_id" class="col-sm-4 control-label" for="Image">VOD POSTER</label>'
			+ '<div class="col-sm-2">'
			+ '<img src="'+context+'/resources/rainbow/images/preview" alt="" id="uploadedImg" style="width:180px;height:230px"/>'
			+ '</div>'
			+ '<div class="col-sm-2">'
			+ '<input type="file" onchange="readURL(this);"  id="image" name="image" />'
			+ '</div>'
			+ '</div>'
			+ '<div class="form-group">'
			+ '<div class="col-sm-12 text-center">'
			+ '<button class="btn btn-primary" id="inputBtn" name="inputBtn">ADD<i class="fa fa-check spaceLeft"></i></button>'
			+ '<button class="btn btn-danger" id="cancelBtn" name="cancelBtn">CANCEL<i class="fa fa-times spaceLeft"></i></button>'
			+ '</div>' + '</div>' + '</form>'
			+ '</article>';
	$('#content').empty();
	$('#content').html(addVodForm);
	$('#inputBtn').click(function(e) {
		e.preventDefault();
	      var $form = $('#form')[0];
          var formData = new FormData(form);
        $.ajax({
               url: context+'/admin/input',
               mimeType: 'multipart/form-data',
               contentType: false, 
               processData : false,
               data: formData,
               type: 'POST',
               success : function(result) {
                    alert('영화 등록 완료 되었습니다 .');
                     location.href = context+'/admin/content'; 
               },
               error : function(xhr, status, msg) {
                  alert('에러발생상태 :' + status + ',내용 : ' + msg);
               }
            });
	});
	$('#cancelBtn').click(function(e) {
		e.preventDefault();
		alert("취소버튼 클릭");
		location.href = context+'/admin/content'; 
	});
	},
	addMovieForm :  function(context) {
			var addMovieForm = '<article class="container" style="margin-top: 30px">'
					+ '<h2>　</h2>'
					+ '<div class="editTop"><h2 class="text-center"> THE MOIVE ADD PAGE</h2>'
					+ '</div>'
			        +'<form class="form-horizontal"  id="form" style="margin-top: 30px" enctype="multipart/form-data" action="/admin/input" method="post">'
					+ '<div class="form-group">'
					+ '<label class="col-sm-3 control-label" for="title">TITLE</label>'
					+ '<div class="col-sm-6">'
					+ '<input type="text" id="title" name="title"class="form-control" />'
					+ '</div>'
					+ '</div>'
					+ '<div class="form-group">'
					+ '<label class="col-sm-3 control-label" for="rating">RATING</label>'
					+ '<div class="col-sm-6">'
					+ '<input type="text" id="rating" name="rating" class="form-control"/>'
					+ '</div>'
					+ '</div>'
					+ '<div class="form-group">'
					+ '<label class="col-sm-3 control-label" for="genre">GENRE</label>'
					+ '<div class="col-sm-6">'
					+ '<input type="text"  id="genre" name="genre" class="form-control" /></div>'
					+ '</div>'
					+ '<div class="form-group">'
					+ '<label class="col-sm-3 control-label" for="openDate">RELEASE DATE</label>'
					+ '<div class="col-sm-6">'
					+ '<input type="text"  id="openDate" name="openDate" class="form-control" /></div>'
					+ '</div><div class="form-group"><label class="col-sm-3 control-label" for="grade">AGE</label>'
					+ '<div class="col-sm-6">'
					+ '<input type="text"  id="grade" name="grade" class="form-control" />'
					+ '</div>'
					+ '</div>'
					+ '<div class="form-group">'
					+ '<label class="col-sm-3 control-label" for="runningtime">RUNNING TIME</label>'
					+ '<div class="col-sm-6"><input type="text" id="runningtime" name="runningtime" class="form-control" /></div>'
					+ '</div>'
					+ '<div class="form-group">'
					+ '<label class="col-sm-3 control-label" for="director">DIRECTOR</label>'
					+ '<div class="col-sm-6"><input type="text"  id="director" name="director"  class="form-control" /></div>'
					+ '</div>'
					+ '<div class="form-group">'
					+ '<label class="col-sm-3 control-label" for="actor">ACTOR</label>'
					+ '<div class="col-sm-6"><input type="text" id="actor" name="actor"  class="form-control" /></div>'
					+ '</div>'
					+ '<div class="form-group">'
					+ '<label class="col-sm-3 control-label" for="content">SUMMARY</label>'
					+ '<div class="col-sm-6"><textarea class="form-control" rows="3"  id="content" name="content" ></textarea></div>'
					+ '</div>'
					+ '<div class="form-group">'
					+ '<label for="input_id" class="col-sm-4 control-label" for="Image">POSTER</label>'
					+ '<div class="col-sm-2">'
					+ '<img src="${context}/resources/rainbow/images/main" alt="" id="uploadedImg" style="width:180px;height:230px"/>'
					+ '</div>'
					+ '<div class="col-sm-2">'
					+ '<input type="file" onchange="readURL(this);"  id="image" name="image" />'
					+ '</div>'
					+ '</div>'
					+ '<div class="form-group">'
					+ '<div class="col-sm-12 text-center">'
					+ '<button class="btn btn-primary" id="inputBtn" name="inputBtn">ADD<i class="fa fa-check spaceLeft"></i></button>'
					+ '<button class="btn btn-danger" id="cancelBtn" name="cancelBtn">CANCEL<i class="fa fa-times spaceLeft"></i></button>'
					+ '</div>' + '</div>' + '</form>'
					+ '</article>';
			$('#content').empty();
			$('#content').html(addMovieForm);
			$('#inputBtn').click(function(e) {
				e.preventDefault();
				alert('영화등록 버튼클릭');
			      var $form = $('#form')[0];
		          var formData = new FormData(form);
		        $.ajax({
		               url: context+'/admin/input',
		               mimeType: 'multipart/form-data',
		               contentType: false, 
		               processData : false,
		               data: formData,
		               type: 'POST',
		               success : function(result) {
		                    alert('영화 등록 완료 되었습니다 .');
		                    location.href = context+'/rainbow';
		               },
		               error : function(xhr, status, msg) {
		                  alert('에러발생상태 :' + status + ',내용 : ' + msg);
		               }

		            });
			});
			$('#cancelBtn').click(function(e) {
				e.preventDefault();
				alert("취소버튼 클릭");
				location.href = context+'/rainbow';
			});
	
},
	movieListForm : function(context){
			var movieListForm = '<style>'
			+'#content{border : 1px solid black}'
			+'#content th {border : 1px solid black; text-align : center}'
			+'#content tr td{border : 1px solid black; text-align : center}'
			+'#content tr {border : 1px solid black}'
			+'</style>'
			+ '<h2>　</h2>'
			+'<th class="col-sm-12 text-center">'
			+'</th>'
			+'<table id="content" style="width: 100%; margin-top: 30px" >'
			+'<tr style="background-color: #E39919;">'
			+'<th style="width: 5%;">Movie Sequence</th>'
			+'<th style="width: 6%;">Movie Title</th>'
			+'<th style="width: 4%;">Movie Rating</th>'
			+'<th style="width: 7%;">Genre</th>'
			+'<th style="width: 6%;">Release Date</th>'
			+'<th style="width: 5%;">Age</th>'
			+'<th style="width: 5%;">Running Time</th>'
			+'<th style="width: 5%;">Director</th>'
			+'<th style="width: 10%;">Main actor</th>'
			+'<th style="width: 35%;">Summary</th>'
			+'<th>Poster</th>'
			+'<th style="width: 5%;">Reply</th>'
			+'</tr>';
	        $.ajax({
	               url: context+'/admin/content',
	               success : function(data) {
	       			$.each(data.list, function(index, movie) {
	   				movieListForm+=
	   				'<tr>'
	   				+'<td>'+movie.movieSeq+'</td>'
	   				+'<td><a href="#" id="movieUpdate" onclick="admin.movieUpdate('+'\''+context+'\''+','+'\''+movie.movieSeq+'\''+');">'+movie.title+'</a></td>'
	   				+'<td>'+movie.rating+'</td>'
	   				+'<td>'+movie.genre+'</td>'
	   				+'<td>'+movie.openDate+'</td>'
	   				+'<td>'+movie.grade+'</td>'
	   				+'<td>'+movie.runningtime+'</td>'
	   				+'<td>'+movie.director+'</td>'
	   				+'<td>'+movie.actor+'</td>'
	   				+'<td>'+movie.content+'</td>'
	   				+'<td><img src="'+context+'/resources/rainbow/images/main/'+movie.image+'" alt="" style="width:200px;height:230px"/></a></td>'
	   				+'<td><a  href="#" id="replypost" onclick="admin.replypost('+'\''+context+'\''+','+'\''+movie.movieSeq+'\''+');">댓글관리</a></td>'
	   				+'</tr>';
	   			});
	       			movieListForm+='</table>'
	       		 $('#content').html(movieListForm);
	                 }
	          });
	   },

	   replypost : function(context, movieSeq){
	   	  $.ajax({
	   	        url: context+'/admin/reply_content/'+movieSeq,
	   	        data : { 
	   	           reply : movieSeq
	   	        },
	   	        success : function(data) { 
	   	var replyForm = '<style>'
	   	+'#content{border : 1px solid black}'
	   	+'#content th {border : 1px solid black; text-align : center}'
	   	+'#content tr td{border : 1px solid black; text-align : center}'
	   	+'#content tr {border : 1px solid black}'
	   	+'input[type="checkbox"] {-webkit-appearance: checkbox; border-radius: 0;}'
	   	+'</style>'
	   	+'<form id = "replyContentForm" class="form-horizontal" style="margin-top: 30px" enctype="multipart/form-data" class="table table-striped">'
	   	+'<div class="editTop" >'
	   	+'<h1>　</h1>'
	   	+'<h1 class="text-center" align="center">ADMIN REPLY Page</h1>'
	   	+'</div>'
	   	+'<table id="content" style="width: 100%; margin-top: 30px">'
	   	+'<tr style="background-color: gray;">'
	   	+'<th style="width: 5%;">DELETE BUTTON</th>'
	   	+'<th style="width: 5%;">replySeq</th>'
	   	+'<th style="width: 6%;">writerName</th>'
	   	+'<th style="width: 4%;">regTime</th>'
	   	+'<th style="width: 5%;">movieSeq</th>'
	   	+'<th style="width: 35%;">replyContent</th>'
	   	+'</tr>';
	   	$.ajax({
	              url: context+'/admin/reply_content/'+movieSeq,
	              success : function(data) {
	      			$.each(data.list, function(index, reply) {
	      				replyForm+='<tr>'
	   			+'<td><input type="checkbox" name="replySeq" value="'+reply.replySeq+'"/></td>'
	   			+'<td>'+reply.replySeq+'</td>'
	   			+'<td>'+reply.writerName+'</td>'
	   			+'<td>'+reply.regTime+'</td>'
	   			+'<td>'+reply.movieSeq+'</td>'
	   			+'<td>'+reply.replyContent+'</td>'
	   			+'</tr>';
	      			});
	      			
	      			replyForm+='</table>'
	   	+'<div class="col-sm-12 text-center">'
	   	+'<div class="col-sm-12 text-center">'
	   	+'<button  type="submit" class="btn btn-primary" id="replyDeleteBtn">DELETE</button>'
	   	+'</div>'
	   	+'</div>'
	   	+'</form>';
	      	$('#content').html(replyForm);
	      	$('#replyDeleteBtn').click(function(e) {
	    		e.preventDefault();
	    		alert("삭제버튼 클릭");
	    		$.ajax({
	   			url : context+'/admin/reply_delete',
	   			data : {
	   				replySeqs : movieSeq
	   			},
	   			dataType : 'json',
	   			type : 'post',
	   			success : function() {
	   				alert('성공하셨습니다. 리스트 화면으로 이동합니다.');
	   				admin.movieListForm(context);
	   			},
	   			error : function(xhr, status, msg) {
	   				alert("삭제 시 에러발생 : " + msg);
	   }
	    		});
	      	});
	              },
movieUpdate : function(context,movieSeq) {
  $.ajax({
        url: context+'/admin/update/'+movieSeq,
        data : {
           movieTitle : movieSeq
        },
        success : function(data) { 
	var movieUpdateForm = 
 	   '<article class="container" style="margin-top: 30px">'
 		+'<div class="editTop">'
 		+'<h1>　</h1>'
 		+'<h2 class="text-center"> '+data.movie.title+' INFORMATION</h2></div>'
 		+'<form class="form-horizontal" id="form" style="margin-top: 30px">'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="title">TITLE</label>'
 		+'<div class="col-sm-6">'
 		+'<input type="text" value="'+data.movie.title+'"  class="form-control" />'
 		+'</div>'
 		+'</div>'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="rating">RATING</label>'
 		+'<div class="col-sm-6">'
 		+'<input type="text" value="'+data.movie.rating+'"  class="form-control" />' 
 		+'</div>'
 		+'</div>'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="genre">GERNE</label>'
 		+'<div class="col-sm-6">'
 		+'<input type="text" value="'+data.movie.genre+'"  class="form-control" />' 
 		+'</div>'
 		+'</div>'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="openDate">RELEASE DATE</label>'
 		+'<div class="col-sm-6">'
 		+'<input type="text" value="'+data.movie.openDate+'"  class="form-control" /></div>'
 		+'</div>'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="grade">AGE</label>'
 		+'<div class="col-sm-6">'
 		+'<input type="text" value="'+data.movie.grade+'"  class="form-control" />'
 		+'</div>'
 		+'</div>'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="runningtime">RUNNNIG TIME</label>'
 		+'<div class="col-sm-6">'
 		+'<input type="text" value="'+data.movie.runningtime+'"  class="form-control" />' 
 		+'</div>'
 		+'</div>'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="director">DIRECTOR</label>'
 		+'<div class="col-sm-6">'
 		+'<input type="text" value="'+data.movie.director+'"  class="form-control" />' 
 		+'</div>'
 		+'</div>'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="actor">MAIN ACTOR</label>'
 		+'<div class="col-sm-6">'
 		+'<input type="text" value="'+data.movie.actor+'"  class="form-control" />'
 		+'</div>'
 		+'</div>'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="content">SUMMARY</label>'
 		+'<div class="col-sm-6" >'
 		+'<input type="text" value="'+data.movie.content+'"  class="form-control" />' 
 		+'</div>'
 		+'</div>'
 		+'<div class="form-group">'
 		+'<label class="col-sm-3 control-label" for="image">POSTER</label>'
 		+'<div class="col-sm-6">'
 		+'<img src="'+context+'/resources/rainbow/images/main/'+data.movie.image+'" alt="" style="width:200px;height:230px"/>'
 		+'<div class="col-sm-2">'
 		+'<input type="file" id="image" name="image" />'
 		+'</div>' 
 		+'</div>'
 		+'<div class="form-group">'
 		+'<div class="col-sm-12 text-center">'
 		+'<button class="btn btn-primary" id="updateBtn" name="updateBtn">UPDATE<i class="fa fa-check spaceLeft"></i></button>'
 		+'<button class="btn btn-warning" id="cancelBtn" name="cancelBtn">CANCEL<i class="fa fa-times spaceLeft"></i></button>'
 		+'<button class="btn btn-warning" id="deleteBtn" name="deleteBtn">DELETE<i class="fa fa-times spaceLeft"></i></button>'
 		+'</div>'
 		+'</div>'
 		+'</form>'
 		+'</article>';
     $('#content').empty();
     $('#content').html(movieUpdateForm);
     $('#updateBtn').click(function(e) {
			e.preventDefault();
			alert('영화수정 버튼클릭');
		      var $form = $('#form')[0];
	          var formData = new FormData(form);
	        $.ajax({
	               url: context+'/admin/update/'+movieSeq,
	               mimeType: 'multipart/form-data',
	               contentType: false, 
	               processData : false,
	               data: formData,
	               type: 'POST',
	               success : function(result) {
	                    alert('영화 수정 완료 되었습니다 .');
	                    location.href = context+'/rainbow';
	               },
	               error : function(xhr, status, msg) {
	                  alert('에러발생상태 :' + status + ',내용 : ' + msg);
	               }

	            });
		});
	 $('#cancelBtn').click(function(e) {
		e.preventDefault();
		alert("취소버튼 클릭");
		location.href = context+'/rainbow';
	
        });
	 $('#deleteBtn').click(function(e) {
 		e.preventDefault();
 		alert("삭제버튼 클릭");
 		$.ajax({
			url : context+'/admin/delete',
			data : {
				movieSeq : movieSeq
			},
			dataType : 'json',
			type : 'post',
			success : function() {
				alert('성공하셨습니다. 메인 화면으로 이동합니다.');
				location.href = context + "/rainbow";
			},
			error : function(xhr, status, msg) {
				alert("삭제 시 에러발생 : " + msg);
			}
		});
     });
}
	  });
}
	   	});
	   	        }
	   	  });
}
}

	