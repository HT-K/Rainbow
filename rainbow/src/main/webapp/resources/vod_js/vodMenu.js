/**
 * 최신 , 일반, 프리 메뉴 처리
 */

var vodMenu = {
		
	vodAtLeastForm : function(context) {
		$('#content').empty(); 
		var atLeastForm = '<div class="row">\
			<img class="col-xs-12" style="padding-left: 30%; padding-right: 30%; " src="'+context+'/resources/vod_image/advertising/ad.png">\
			</div>\
			<hr />\
		    <div class="col-xs-12">\
	         <h2>최신 영화</h2>\
	         <a href="'+context+'/vod_menu/new_form.do" class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all"></a>\
	      </div>';
	$.getJSON(context+'/vod/vodAtLeastUn/',function(data){ 
		atLeastForm += '<div class="row" >';
		$.each(data.atLeast,function(index,value){ 
			if(index < 3){
				atLeastForm += '<div class="col-xs-4 well" style="background: white;">\
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
				
			}
				});
		atLeastForm +=	 '</div>';
		atLeastForm += '<div class="row" >';
		$.each(data.atLeast,function(index,value){ 
			if(index >= 3 && index < 6){
				atLeastForm += '<div class="col-xs-4 well" style="background: white;">\
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
				
			}
				});
		atLeastForm +=	 '</div>';
		atLeastForm += '<div class="row" >';
		$.each(data.atLeast,function(index,value){ 
			if(index > 5 && index < 10){
				atLeastForm += '<div class="col-xs-4 well" style="background: white;">\
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
				
			}
				});
		atLeastForm +=	 '</div>';
		$('#content').html(atLeastForm); 
	});
	},
	vodCommonForm : function(context) {
		$('#content').empty(); 
		var commonForm = '<div class="row">\
			<img class="col-xs-12" style="padding-left: 30%; padding-right: 30%; " src="'+context+'/resources/vod_image/advertising/ad.png">\
			</div>\
			<hr />\
		    <div class="col-xs-12">\
	         <h2>일반 영화</h2>\
	         <a href="'+context+'/vod_menu/new_form.do" class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all"></a>\
	      </div>';
	$.getJSON(context+'/vod/vodCommonUn/',function(data){ 
		commonForm += '<div class="row" >';
		$.each(data.common,function(index,value){ 
			if(index < 3){
				commonForm += '<div class="col-xs-4 well" style="background: white;">\
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
				
			}
				});
		commonForm +=	 '</div>';
		commonForm += '<div class="row" >';
		$.each(data.common,function(index,value){ 
			if(index >= 3 && index < 6){
				commonForm += '<div class="col-xs-4 well" style="background: white;">\
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
				
			}
				});
		commonForm +=	 '</div>';
		commonForm += '<div class="row" >';
		$.each(data.common,function(index,value){ 
			if(index > 5 && index < 10){
				commonForm += '<div class="col-xs-4 well" style="background: white;">\
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
				
			}
				});
		commonForm +=	 '</div>';
		$('#content').html(commonForm); 
	});
	},
	vodFreeForm : function(context) {
		$('#content').empty(); 
		var freeForm = '<div class="row">\
			<img class="col-xs-12" style="padding-left: 30%; padding-right: 30%; " src="'+context+'/resources/vod_image/advertising/ad.png">\
			</div>\
			<hr />\
		    <div class="col-xs-12">\
	         <h2>무료 영화</h2>\
	         <a href="'+context+'/vod_menu/new_form.do" class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all"></a>\
	      </div>';
	$.getJSON(context+'/vod/vodFreeUn/',function(data){ 
		freeForm += '<div class="row" >';
		$.each(data.free,function(index,value){ 
			if(index < 3){
				freeForm += '<div class="col-xs-4 well" style="background: white;">\
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
				
			}
				});
		freeForm +=	 '</div>';
		freeForm += '<div class="row" >';
		$.each(data.free,function(index,value){ 
			if(index >= 3 && index < 6){
				freeForm += '<div class="col-xs-4 well" style="background: white;">\
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
				
			}
				});
		freeForm +=	 '</div>';
		freeForm += '<div class="row" >';
		$.each(data.free,function(index,value){ 
			if(index > 5 && index < 10){
				freeForm += '<div class="col-xs-4 well" style="background: white;">\
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
					</div>';
				
			}
				});
		freeForm +=	 '</div>';
		$('#content').html(freeForm); 
	});
	}

}