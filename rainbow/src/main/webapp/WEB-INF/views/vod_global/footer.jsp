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
<script>
   $(function() {
 	 var user = '${user.id}';
 	 if(user == null || user == ''){
 		 alert("null");
 		 }else{
		document.getElementById('logintab').style.display = 'none';
		document.getElementById('logouttab').style.display = '';
		document.getElementById('purchasetab').style.display = '';
 		}
   });
  	 $('#logoutBtn').click(function(e) {
  	   e.preventDefault();
       location.href = "${context}/member/vod_logout";     
 	   }); 
   $('#loginForm').click(function(e) {
	   e.preventDefault();
     location.href = "${context}/member/vod_login";    
   });
   $('#joinForm').click(function(e) {
	   e.preventDefault();
	   location.href = "${context}/member/vod_join";    
   });
   $('#home').click(function(e) {
	   e.preventDefault();
	   alert("home");
      //window.location.assign("${context}/vod_main/main.do");    
   });
   $('#new').click(function(e) {
	   e.preventDefault();
	   alert("new");
     // window.location.assign("${context}/vod_menu/new_form.do");    
   });
   $('#normal').click(function(e) {
	   e.preventDefault();
	   alert("normal");
     // window.location.assign("${context}/vod_menu/normal_form.do");    
   });
   $('#free').click(function(e) {
	   e.preventDefault();
	   alert("free");
     // window.location.assign("${context}/vod_menu/free_form.do");    
   });
   $('#search').click(function(e) {
	   e.preventDefault();
	   alert("search");
	   location.href = "${context}/vod/search";     
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