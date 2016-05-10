<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<!-- /header -->
<div>
   <div data-role="page" id="c">
 
      <div role="main" class="ui-content" id="content">
<!-- 광고 -->
         <div class="row">
            <img class="col-xs-12" style="padding-left: 30%; padding-right: 30%; " src="${context}/resources/vod_image/advertising/ad.png">
         </div>
         <!--  -->

         <!-- 최신영화 -->
         <hr />
         <div class="row" >

            <div class="col-xs-12 well" style="background: white;">
            
               <p><img class="col-xs-12" src="${context}/resources/${vod.vodImage}"></p><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
      <hr />
       <div id="demo">
      <!-- <a href="https://www.youtube.com/embed/y08233t2ehY"> -->
      <button onclick="myFunction()">구매하기</button>
      <!-- </a> -->
      </div>
      <hr />
            </div>

         </div>
   

      <div>
      <p style="text-align: center; font-size:26px;">상세정보</p>
      <hr />
               <p style="text-align: left;">영화 제목 : ${vod.vodName}</p>
               <p style="text-align: left;">영화 장르 : ${vod.vodCategory}&nbsp;${vod.vodTime} 분</p>
               <p style="text-align: left;">이용 : ${vod.vodFree}</p>
               <p style="text-align: left;">감독/연출 : ${vod.vodDirector}</p>
               <p style="text-align: left;">배우/출연 : ${vod.vodActor}</p>
      </div>
      
      
      <div>
      <h4>줄거리</h4>
      <text >
 	
      </text >
      </div>
      <p style="text-align: left;">${vod.vodContent}</p>   
      </div><!-- /content --> 
 <%-- <jsp:include page="../vod_global/footer.jsp" /> --%>
   </div><!-- /page -->
</div>