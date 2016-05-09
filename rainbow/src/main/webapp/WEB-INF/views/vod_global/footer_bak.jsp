<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer>
                <div class="navbar navbar-default navbar-static-bottom">
                    <p class="navbar-text pull-left">
                        Built by <a href="http://google.com" target="_blank"> Bingoori
                    </p>
                </div>
 
</footer>
</body>
</html>
<script src="${js}/vod_js/vodMain.js"></script>
<script src="${js}/vod_js/vodMenu.js"></script>
<script src="${js}/vod_js/vodLogin.js"></script>
<script src="${js}/vod_js/vodJoin.js"></script>
<script>
   $(function() {
	   var context  = '${context}';
	   	vodMain.vodMainForm(context);
	   
 	 var user = '${user.id}';
 	 if(user == null || user == ''){
 		 alert("null");
 		 }else{
		document.getElementById('logintab').style.display = 'none';
		document.getElementById('logouttab').style.display = '';
		document.getElementById('purchasetab').style.display = '';
 		}
   });
   $('#new').click(function(e) {
	   e.preventDefault(); 
	   vodMenu.vodAtLeastForm('${context}'); 
   });
   $('#normal').click(function(e) {
	   e.preventDefault();
	   vodMenu.vodCommonForm('${context}'); 
     // window.location.assign("${context}/vod_menu/normal_form.do");    
   });
   $('#free').click(function(e) {
	   e.preventDefault();
	   vodMenu.vodFreeForm('${context}'); 
     // window.location.assign("${context}/vod_menu/free_form.do");    
   });
  	 $('#logoutBtn').click(function(e) {
  	   e.preventDefault();
       location.href = "${context}/member/vod_logout";     
 	   }); 
   $('#loginForm').click(function(e) {
	   e.preventDefault();
	   //location.href = "${context}/member/vod_login";
	   vodLogin.vodLoginForm('${context}');
	   
   });
   $('#joinForm').click(function(e) {
	   e.preventDefault();
	    vodJoin.vodJoinForm('${context}'); 
	  //window.location.assign("${context}/member/vod_join");  
   });
   $('#home').click(function(e) {
	   e.preventDefault();
	   vodMain.vodMainForm('${context}');
      //window.location.assign("${context}/vod_main/main.do");    
   });
  
   $('#search').click(function(e) {
	   e.preventDefault();
	   vodMain.vodSearchForm('${context}');
   });
   $('#info').click(function(e) {
  	   e.preventDefault();
  	   alert("info");
       //location.href = "${context}/member/vod_logout";     
 	   }); 
   $('#qna').click(function(e) {
	   e.preventDefault();
	   alert("qna");
     //location.href = "${context}/member/vod_login";    
   });
   $('#setting').click(function(e) {
	   e.preventDefault();
	   alert("setting");
	  // location.href = "${context}/member/vod_join";    
   });
   $('#developer').click(function(e) {
	   e.preventDefault();
	   alert("developer");
	 //  location.href = "${context}/member/vod_join";    
   });
 	
 /*  function myFunction() {
	
      var txt;
       var r = confirm("구매하시겠습니까?");
       if (r == true) {
           $(location).attr('href',"${vod.vodUrl}");
           return false;
       }else{
          return false;
       } 
       document.getElementById("demo").innerHTML = txt;
   };*/
   
</script>