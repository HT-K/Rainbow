/**
<script src="${context}/resources/app/js/Global.js"></script>
<script src="${context}/resources/app/js/Member.js"></script>
<script src="${context}/resources/app/js/Main.js"></script>
<script src="${context}/resources/app/js/Rainbow.js"></script>


<script type="text/javascript">
	$(function(){
		var context = $.fn.global('${context}').getContext();
		var member = $.fn.member(); 
		$('#headerLogin').click(function(e){
			e.preventDefault();
		 	member.loginForm(context); 
		});
		
		$('#headerJoin').click(function(e){
			e.preventDefault();
		 	member.joinForm(context); 
		});
	
	});


</script><script src="${context}/resources/app/js/Global.js"></script>
<script src="${context}/resources/app/js/Member.js"></script>
<script src="${context}/resources/app/js/Main.js"></script>
<script src="${context}/resources/app/js/Rainbow.js"></script>


<script type="text/javascript">
	$(function(){
		var context = $.fn.global('${context}').getContext();
		var member = $.fn.member(); 
		$('#headerLogin').click(function(e){
			e.preventDefault();
		 	member.loginForm(context); 
		});
		
		$('#headerJoin').click(function(e){
			e.preventDefault();
		 	member.joinForm(context); 
		});
	
	});


</script> * Global
 */

//생성자 개념
function Global(arg){
	this.context= arg;
};
//(@Overriding ==prototype 같은 개념임)
Global.prototype.setContext = function(context){
	this.context= context;
}
Global.prototype.getContext = function() {
	return this.context;
}