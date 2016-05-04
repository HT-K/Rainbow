<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<div class="wrapper">
	<!-- Main content -->
	<section class="container">
		<div class="order-container">
			<div class="order">
				<img class="order__images" alt='' src="${context}/resources/rainbow/images/tickets.png">
				<p class="order__title">Book a ticket <br><span class="order__descript">and have fun movie time</span></p>
			</div>
		</div>
		<div class="order-step-area">
			<div class="order-step first--step">1. What &amp; When</div>
		</div>
		<h2 class="page-heading heading--outcontainer">Choose a movie</h2>
	</section>
		
	<div class="choose-film">
		<div class="swiper-container">
			<div class="swiper-wrapper">
				<c:forEach var="movie" items="${list}">
					<div class="swiper-slide" data-film='The Fifth Estate'> 
						<div class="film-images"><img alt='' src="${context}/resources/rainbow/images/movie/${movie.image}"></div>
						<p class="choose-film__title">${movie.title}</p>
					</div>
				</c:forEach>
			</div>
		</div>
	</div>
        
	<section class="container">
		<div class="col-sm-12">
			<div class="choose-indector choose-indector--film">
				<strong>Choosen: </strong><span class="choosen-area"></span>
			</div>
			<h2 class="page-heading">Date</h2>
			<div class="choose-container choose-container--short">
				<div class="datepicker">
					<span class="datepicker__marker"><i class="fa fa-calendar"></i>Date</span>
					<input type="text" id="datepicker" value='04/05/2016' class="datepicker__input">
				</div>
			</div>
						
			<h2 class="page-heading">Pick time</h2>
			<div class="time-select time-select--wide">
				<div class="time-select__group group--first">
					<ul class="col-sm-6 items-wrap">
						<li class="time-select__item" data-time='09:40'>09:40</li>
						<li class="time-select__item" data-time='13:45'>13:45</li>
						<li class="time-select__item" data-time='15:45'>15:45</li>
						<li class="time-select__item" data-time='19:50'>19:50</li>
						<li class="time-select__item" data-time='21:50'>21:50</li>
					</ul>
				</div>
			</div>
			<div class="choose-indector choose-indector--time">
				<strong>Choosen: </strong><span class="choosen-area"></span>
			</div>
		</div>
	</section>
        
	<div class="clearfix"></div>

	<form id='film-and-time' class="booking-form" method='get' action='#'>  <!-- 선택된 영화, 날짜, 시간 데이터 전송 -->
		<input type='text' name='choosen-movie' class="choosen-movie">
		<input type='text' name='choosen-date' class="choosen-date">
		<input type='text' name='choosen-cinema' class="choosen-cinema">
		<input type='text' name='choosen-time' class="choosen-time">
		<div class="booking-pagination">
			<a href="${context}/purchase/step2" class="booking-pagination__next">
				<span class="arrow__text arrow--next">next step</span>
				<span class="arrow__info">choose a sit</span>
			</a>
		</div>
	</form>
</div>
<script type="text/javascript">
	$(document).ready(function() {
	    init_BookingOne();
	});
</script> 