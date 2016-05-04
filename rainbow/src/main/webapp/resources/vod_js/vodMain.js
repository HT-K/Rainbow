/**
 * Vod Main
 */

var vodMain = {
	vodMainForm : function(context) {	 
		$('#content').empty(); 
		var mainForm = '<div class="row">\
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
					<a href="'+context+'/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'"></a>\
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
							<img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'">\
					</div>';
			});
			mainForm += '</div>\
				<div class="col-xs-12">\
				<h2>무료 영화</h2>\
				<a href="${context}/vod_menu/free_form.do" data-icon="bars" data-iconpos="notext" class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all"  data-role="button" role="button"></a></div>\
				<div class="row">';
			$.each(data.free,function(index,value){
				mainForm +=	'<div class="col-xs-4 well" style="background: white;">\
					<img class="col-xs-12" src="'+context+'/resources'+value.vodImage+'">\
					</div>';
			});
			mainForm += '</div>';
			$('#content').html(mainForm); 
			
			
		});
			

		
	}
}