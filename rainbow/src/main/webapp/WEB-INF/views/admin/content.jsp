<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	#content{border : 1px solid black}
	#content th {border : 1px solid black; text-align : center}
	#content tr td{border : 1px solid black; text-align : center}
	#content tr {border : 1px solid black}
</style>
<table id="content" style="width: 100%; margin-top: 30px">
	<tr style="background-color: yellow">
		<th style="width: 4%;">영화순서</th>
		<th style="width: 6%;">영화제목</th>
		<th style="width: 3%;">예메율</th>
		<th style="width: 3%;">장르</th>
		<th style="width: 3%;">개봉일</th>
		<th style="width: 3%;">연령</th>
		<th style="width: 3%;">상영시간</th>
		<th style="width: 3%;">감독</th>
		<th style="width: 3%;">주연</th>
		<th style="width: 50%;">내용</th>
		<th>포스터</th>
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
