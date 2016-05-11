<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.0/jquery.min.js"></script>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script> <!-- 부트스트랩 홈페이지에서 CDN으로 가져온다. -->
<style>
	#content{border : 1px solid black}
	#content th {border : 1px solid black; text-align : center}
	#content tr td{border : 1px solid black; text-align : center}
	#content tr {border : 1px solid black}
</style>
	<!-- <div class="editTop" >
			<h2></h2>
			<h1 class="text-center" align="center"> Admin Movie Page</h1>
	</div> -->
	<th class="col-sm-12 text-center">
 	    <h3 align="right"><a href="#"onclick="location.href='${context}/member/logout'">LOGOUT</a></h3>
	</th>

        
    
<table id="content" style="width: 100%; margin-top: 30px" class="table table-striped">
	<tr style="background-color: gray;">
		<th style="width: 5%;">Movie Sequence</th>
		<th style="width: 6%;">Movie Title</th>
		<th style="width: 4%;">Movie Rating</th>
		<th style="width: 7%;">Genre</th>
		<th style="width: 6%;">Release Date</th>
		<th style="width: 5%;">Age</th>
		<th style="width: 5%;">Running Time</th>
		<th style="width: 5%;">Director</th>
		<th style="width: 10%;">Main actor</th>
		<th style="width: 35%;">Summary</th>
		<th>Poster</th>
	</tr>
	<c:forEach items="${list}" var="movie">
		<tr>
			<td>${movie.movieSeq}</td>
			<td><a href="#"onclick="location.href='${context}/admin/edit/${movie.movieSeq}'">
			${movie.title}</a></td>
			<td>${movie.rating}</td>
			<td>${movie.genre}</td>
			<td>${movie.openDate}</td>
			<td>${movie.grade}</td>
			<td>${movie.runningtime}</td>
			<td>${movie.director}</td>
			<td>${movie.actor}</td>
			<td>${movie.content}</td>
			<td><a id="replypost" href="#" onclick="location.href='${context}/admin/reply_content/${movie.movieSeq}'">
			<img src="${context}/resources/rainbow/images/main/${movie.image}" alt="" style="width:200px;height:230px"/></a></td>
		</tr>
	</c:forEach>
</table>
		
<script>
$(function() {
	  
});
   
</script>
