<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<footer>
                <div class="navbar navbar-default navbar-static-bottom">
                    <p class="navbar-text pull-left">
                        Built by <a href="http://google.com" target="_blank">Master Vs Slaves
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
 	 $('#logoutBtn').click(function() {
 	      window.location.assign("${context}/vod_main/main.do?logout=y");    
 	   });
   $('#loginForm').click(function() {
      window.location.assign("${context}/vod_member/login_form.do");    
   });
   $('#joinForm').click(function() {
      window.location.assign("${context}/vod_member/join_form.do");    
   });
   $('#home').click(function() {
      window.location.assign("${context}/vod_main/main.do");    
   });
   $('#new').click(function() {
      window.location.assign("${context}/vod_menu/new_form.do");    
   });
   $('#normal').click(function() {
      window.location.assign("${context}/vod_menu/normal_form.do");    
   });
   $('#free').click(function() {
      window.location.assign("${context}/vod_menu/free_form.do");    
   });
   $('#search').click(function() {
      window.location.assign("${context}/vod_menu/search_form.do");    
   });
});
   
   function myFunction() {
	
      var txt;
       var r = confirm("구매하시겠습니까?");
       if (r == true) {
           $(location).attr('href',"${vod.vodUrl}");
           return false;
       }else{
          return false;
       } 
       document.getElementById("demo").innerHTML = txt;
   };
</script>