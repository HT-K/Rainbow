/**
 * Vod Main
 */

var vodMain = {	
		vodDetailForm : function(context,vodName) { 
			document.getElementById('indexFooter').style.display = '';
			$.getJSON(context+'/vod/vodDetail/'+vodName,function(data){
				$('#content').empty(); 
				var detailForm = '<div class="row"><br/>\
					   <img class="col-xs-12" style="padding-left: 30%; padding-right: 30%; " src="'+context+'/resources/vod_image/advertising/ad.png">\
			         </div>\
					<hr />\
					<div class="row" >\
					<div class="col-xs-12 well" style="background: white;">\
					<p><img class="col-xs-12" src="'+context+'/resources/'+data.vodInfo.vodImage+'"></p><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>\
					<hr />\
					</div>\
					</div>\
					 <div>\
				      <p style="text-align: center; font-size:26px;">상세정보</p>\
				      <hr />\
			        <p style="text-align: left;">영화 제목 : '+data.vodInfo.vodName+'</p>\
		               <p style="text-align: left;">영화 장르 : '+data.vodInfo.vodCategory+'&nbsp;'+data.vodInfo.vodTime+' 분</p>\
		               <p style="text-align: left;">이용가 : '+data.vodInfo.vodFree+'</p>\
		               <p style="text-align: left;">감독/연출 : '+data.vodInfo.vodDirector+'</p>\
		               <p style="text-align: left;">배우/출연 : '+data.vodInfo.vodActor+'</p>\
					</div>\
					<div>\
					<h4>줄거리</h4>\
					<text >\
					</text >\
					</div>\
					<p style="text-align: left;"> '+data.vodInfo.vodGrade+'</p></div>\
					<div id="demo">\
					<button id = "buyBtn" style="margin: auto;width: 95%"  class=" btn btn-lg btn-block purple-bg">구매하기</button>\
					</div>';
				 
				$('#content').html(detailForm);
				$('text').append(data.vodInfo.vodContent);
				$('#buyBtn').click(function(e) {
					e.preventDefault();
					$.ajax(context+'/buy/getBuy',{
						data : {
							vodTitle : vodName
						}, 
						dataType : 'json',
						async : true,
						success : function(data) { 
							alert(data.vodName);
						},
						error : function(xhr,status,msg) {
							alert('에러발생상태 :'+status+',내용 : '+msg);
						}
						
					});
				})
				
			});
		},
	vodMainForm : function(context) {
		$('#content').empty(); 
		var mainForm = '<div class="row"><br/>\
				<img class="col-xs-12" style="padding-left: 30%; padding-right: 30%; " src="'+context+'/resources/vod_image/advertising/ad.png">\
				</div>\
				<hr />\
			    <div class="col-xs-12">\
		         <h2>최신 영화</h2>\
		         <a href="'+context+'/vod_menu/new_form.do" class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all"></a>\
		      </div>\
		      <div class="row" >';
		$.getJSON(context+'/vod/vodLimit/',function(data){  
			$.each(data.atLeast,function(index,value){ 
				mainForm += '<div class="col-xs-4 well" style="background: white;">\
					<a class ="latestMovie" onclick="vodMain.vodDetailForm('+'\''+context+'\''+','+'\''+value.vodName+'\''+');"  href="#"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
					});
			mainForm +=	 '</div>\
				<div class="col-xs-12">\
				<h2>일반 영화</h2>\
				<a href="'+context+'/vod_menu/normal_form.do" data-icon="bars" data-iconpos="notext" class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all" data-role="button" role="button">Menu</a>\
				</div>\
				<div class="row">';
			$.each(data.common,function(index,value){
				mainForm +=	'<div class="col-xs-4 well" style="background: white;">\
					<a class ="latestMovie" onclick="vodMain.vodDetailForm('+'\''+context+'\''+','+'\''+value.vodName+'\''+');"  href="#"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
			});
			mainForm += '</div>\
				<div class="col-xs-12">\
				<h2>무료 영화</h2>\
				<a href="${context}/vod_menu/free_form.do" data-icon="bars" data-iconpos="notext" class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all"  data-role="button" role="button"></a></div>\
				<div class="row">';
			$.each(data.free,function(index,value){
				mainForm +=	'<div class="col-xs-4 well" style="background: white;">\
					<a class ="latestMovie" onclick="vodMain.vodDetailForm('+'\''+context+'\''+','+'\''+value.vodName+'\''+');"  href="#"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
			});
			mainForm += '</div>';
			$('#content').html(mainForm);  
				
		});
			

		
	},
	vodSearchForm : function(context) {
		$('#content').empty();	 
		var searchView ='';
		var searchForm = '<div role="main" class="ui-content" id="content"><div class="container">\
		<div class="row"><br>\
		  <div class="col-sm-6 col-sm-offset-3">\
		<div class="input-group stylish-input-group">\
	      <form autocomplete="on">\
        <input  type="text" name="keywords" id="keywords" class="form-control"  placeholder="Search" value="" >\
        </form>\
        <span class="input-group-addon" style="background: white !important;">\
        <button id ="search" style="border:0;background:transparent;">\
		<span class="glyphicon glyphicon-search"></span></button>\
		</span>\
        </div></div></div><div class="col-xs-12 display-cell" id="result"><hr /></div>\
		</div></div>';
	$('#content').html(searchForm);
	$('#keywords').keyup(function(event) { 
  		$('#result').empty();
  		if($('#keywords').val != ""){
		$.ajax(context+'/vod/earlySearch',{
			data : {
				keyword : $('#keywords').val()	
			}, 
			dataType : 'json',
			async : true,
			success : function(data) {
			 $.each(data.serchList,function(index,value){
				 searchView += '<div class="row">\
					 <div class="col-xs-4">\
					 <a class="searchMovie" href="#" onclick="vodMain.vodDetailForm('+'\''+context+'\''+','+'\''+value.vodName+'\''+');">\
					 <img style="width: 100%" src="'+context+'/resources/'+value.vodImage+'">\
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
			$.ajax(context+'/vod/earlySearch',{
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
	
	}
}