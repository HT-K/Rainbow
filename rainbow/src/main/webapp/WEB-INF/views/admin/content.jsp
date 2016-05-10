<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	#content{border : 1px solid black}
	#content th {border : 1px solid black; text-align : center}
	#content tr td{border : 1px solid black; text-align : center}
	#content tr {border : 1px solid black}
</style>
	<div class="editTop" >
			<h3 class="text-center" align="center"> Admin Movie Page</h3>
	</div>
	<th class="col-sm-12 text-center">
 	    <h2 align="right"><a href="${context}/admin/input_form">Movie Add</a></h2>
 	    <h3 align="right"><a href="${context}/member/logout">LOGOUT</a></h3>
	</th>
        
    
<table id="content" style="width: 100%; margin-top: 30px">
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
			<td><a href="${context}/admin/edit/${movie.movieSeq}">${movie.title}</a></td>
			<td>${movie.rating}</td>
			<td>${movie.genre}</td>
			<td>${movie.openDate}</td>
			<td>${movie.grade}</td>
			<td>${movie.runningtime}</td>
			<td>${movie.director}</td>
			<td>${movie.actor}</td>
			<td>${movie.content}</td>
			<td><img src="${context}/resources/rainbow/images/main/${movie.image}" alt="" style="width:200px;height:230px"/></td>
		</tr>
	</c:forEach>
</table>
		
<script type="text/javascript">
	$(function() {
		$('#movie').css('border', '2px solid black');
		$('#movie th').css('border', '2px solid black').css('text-align',
				'center');
		$('#movie tr').css('border', '2px solid black');
		$('#movie tr td').css('border', '2px solid black').css(
				'text-align', 'center');
	});
</script>
