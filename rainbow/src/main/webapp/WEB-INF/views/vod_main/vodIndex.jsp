<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<jsp:include page="../vod_global/header.jsp" />
<!-- /header -->
<div>
   <div data-role="page" id="c">
 
      <div role="main" class="ui-content">
<!-- 광고 -->
         <div class="row">
            <img class="col-xs-12" style="padding-left: 30%; padding-right: 30%; " src="${context}/resources/vod_image/advertising/ad.png">
         </div>
         <!--  -->

         <!-- 최신영화 -->
         <hr />
      <div class="col-xs-12">
         <h2>최신 영화</h2>
         <a href="${context}/vod_menu/new_form.do" class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all"></a>
      </div>
         <div class="row" >
            <div class="col-xs-4 well" style="background: white;">
               <!-- <legend id="anch1"></legend> -->
               <a href="${context}/vod_detail/vod_detailForm.do?vodName=친구(Friend)"><img class="col-xs-12" src="${context}/resources/vod_image/noir/friend1.png"></a>
            </div>
            <div class="col-xs-4 well" style="background: white;">
               <!-- <legend id="anch1"></legend> -->
               <img class="col-xs-12" src="${context}/resources/vod_image/noir/friend.png">
            </div>
            <div class="col-xs-4 well" style="background: white;">
               <!-- <legend id="anch1"></legend> -->
               <img class="col-xs-12" src="${context}/resources/vod_image/noir/friend.png">
            </div>
         </div>
         <!--  -->

         <!-- 일반영화 -->
         <div class="col-xs-12">
            <h2>일반 영화</h2>
            <a href="${context}/vod_menu/normal_form.do" data-icon="bars" data-iconpos="notext"
         class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all"
         data-role="button" role="button">Menu</a>
         </div>
         <div class="row">
            <div class="col-xs-4 well" style="background: white;">
               <!-- <legend id="anch1"></legend> -->
               <img class="col-xs-12" src="${context}/resources/vod_image/noir/friend.png">
            </div>
            <div class="col-xs-4 well" style="background: white;">
               <!-- <legend id="anch1"></legend> -->
               <img class="col-xs-12" src="${context}/resources/vod_image/noir/friend.png">
            </div>
            <div class="col-xs-4 well" style="background: white;">
               <!-- <legend id="anch1"></legend> -->
               <img class="col-xs-12" src="${context}/resources/vod_image/noir/friend.png">
            </div>
         </div>
         <!--  -->

         <!-- 무료영화 -->
         <div class="col-xs-12">
            <h2>무료 영화</h2>
            <a href="${context}/vod_menu/free_form.do" data-icon="bars" data-iconpos="notext"
         class="ui-btn-right ui-link ui-btn ui-icon-carat-r ui-btn-icon-notext ui-shadow ui-corner-all"
         data-role="button" role="button"></a>
         </div>
         <div class="row">
            <div class="col-xs-4 well" style="background: white;">
               <!-- <legend id="anch1"></legend> -->
               <img class="col-xs-12" src="${context}/resources/vod_image/noir/friend.png">
            </div>
            <div class="col-xs-4 well" style="background: white;">
               <!-- <legend id="anch1"></legend> -->
               <img class="col-xs-12" src="${context}/resources/vod_image/noir/friend.png">
            </div>
            <div class="col-xs-4 well" style="background: white;">
               <!-- <legend id="anch1"></legend> -->
               <img class="col-xs-12" src="${context}/resources/vod_image/noir/friend.png">
            </div>
         </div>
         <!--  -->
    
      </div><!-- /content --> 
 <jsp:include page="../vod_global/footer.jsp" />
   </div><!-- /page -->
</div>