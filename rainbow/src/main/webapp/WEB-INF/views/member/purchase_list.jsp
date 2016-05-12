<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<section id="wrapper" class="container"  style="margin-top:50px">
	<div class="col-sm-12">
    	<h2 class="page-heading">Movie History</h2>
    	<c:choose>
	    	<c:when test="${page.countById == 0}">
	    		<div class="movie movie--preview movie--full release">
	     			<div class="col-sm-4 col-md-3 col-lg-3">
	                    <h4 class="movie__title"><b>예매내역이 없습니다</b></h4>
					</div>
	    		</div>	
			</c:when>
			<c:otherwise>
		    	<c:forEach var="list" items="${purchaseList}">
					<div class="movie movie--preview movie--full release">
		     			<div class="col-sm-4 col-md-3 col-lg-3">
		         			<div class="movie__images">
		            			<img alt='' src="${context}/resources/rainbow/images/main/${list.image}" height="283">
		     				</div>
						</div>
						<div class="col-sm-8 col-md-9 col-lg-9 movie__about">
							<p><h4 class="movie__title"><b>${list.movieTitle}</b></h4></p>
							<p class="movie__option"><strong>관람일: </strong>${list.date}</p>
							<p class="movie__option"><strong>관람시간: </strong>${list.beginTime}</p>                            
							<p class="movie__option"><strong>관람좌석: </strong>${list.reserveSeat}</p>
		           		</div>
		    		</div>
				</c:forEach>
				
				<div class="booking-pagination booking-pagination--margin">
					<c:if test="${page.start - page.end >= 0}">
						<a href="${context}/purchase/purchase_list/${page.start - page.end}" class="booking-pagination__prev" id="pagePrev">
							<span class="arrow__text arrow--prev">prev</span>
							<span class="arrow__info">이전 페이지</span>
						</a>
					</c:if>
					<c:if test="${page.start + page.end < page.countById}">
						<a href="${context}/purchase/purchase_list/${page.start + page.end}" class="booking-pagination__next" id="pageNext">
							<span class="arrow__text arrow--next">next</span>
							<span class="arrow__info">다음 페이지</span>
						</a>
					</c:if>
				</div>
			</c:otherwise>
		</c:choose>
	</div>
</section>