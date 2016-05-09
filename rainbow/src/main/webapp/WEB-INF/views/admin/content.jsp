<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	#content{border : 1px solid black}
	#content th {border : 1px solid black; text-align : center}
	#content tr td{border : 1px solid black; text-align : center}
	#content tr {border : 1px solid black}
</style>
<table id="content" style="width: 100%; margin-top: 30px">
	<tr style="background-color: yellow;">
		<th style="text-align: center;">movie_seq</th>
		<th>title</th>
		<th>rating</th>
		<th>genre</th>
		<th>open_date</th>
		<th>grade</th>
		<th>runningtime</th>
		<th>director</th>
		<th>actor</th>
		<th>content</th>
		<th>image</th>
	</tr>
	<c:forEach items="${requestScope['list']}" var="movie">
		<tr>
			<td>${movie.movieSeq}</td>
			<td><a href="${context}/admin/edit/${movie.title}">${movie.title}</a></td>
			<td>${movie.rating}</td>
			<td>${movie.genre}</td>
			<td>${movie.openDate}</td>
			<td>${movie.grade}</td>
			<td>${movie.runningtime}</td>
			<td>${movie.director}</td>
			<td>${movie.actor}</td>
			<td>${movie.content}</td>
			<td><img src="${movie.image}" alt="" style="width:200px;height:230px"/></td>
		</tr>
	</c:forEach>
</table>
<script type="text/javascript">
	$(function() {
		$('#movie').css('border', '1px solid black');
		$('#movie th').css('border', '1px solid black').css('text-align',
				'center');
		$('#movie tr').css('border', '1px solid black');
		$('#movie tr td').css('border', '1px solid black').css(
				'text-align', 'center');

	});
</script>
