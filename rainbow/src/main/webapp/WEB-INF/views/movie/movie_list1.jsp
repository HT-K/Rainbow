<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

        <!-- Main content -->
        <section class="container">
            <div class="col-sm-12">
                <h2 class="page-heading">Movies</h2>
                
                <div class="select-area">
                    <form class="select" method='get'>
                          <select name="select_item" class="select__sort" tabindex="0">
                            <option value="1" selected='selected'>London</option>
                            <option value="2">New York</option>
                            <option value="3">Paris</option>
                            <option value="4">Berlin</option>
                            <option value="5">Moscow</option>
                            <option value="3">Minsk</option>
                            <option value="4">Warsawa</option>
                            <option value="5">Kiev</option>
                        </select>
                    </form>

                    <div class="datepicker">
                      <span class="datepicker__marker"><i class="fa fa-calendar"></i>Date</span>
                      <input type="text" id="datepicker" value='03/10/2014' class="datepicker__input">
                    </div>

                    <form class="select select--cinema" method='get'>
                          <select name="select_item" class="select__sort" tabindex="0">
                            <option value="1" selected='selected'>Cineworld</option>
                            <option value="2">Empire</option>
                            <option value="3">Everyman</option>
                            <option value="4">Odeon</option>
                            <option value="5">Picturehouse</option>
                        </select>
                    </form>

                    <form class="select select--film-category" method='get'>
                          <select name="select_item" class="select__sort" tabindex="0">
                            <option value="2" selected='selected'>Children's</option>
                            <option value="3">Comedy</option>
                            <option value="4">Drama</option>
                            <option value="5">Fantasy</option>
                            <option value="6">Horror</option>
                            <option value="7">Thriller</option>
                        </select>
                    </form>

                </div>

                 <div class="tags-area">
                    <div class="tags tags--unmarked">
                        <span class="tags__label">Sorted by:</span>
                            <ul>
                                <li class="item-wrap"><a href="#" class="tags__item item-active" data-filter='all'>all</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='release'>release date</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='popularity'>popularity</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='comments'>comments</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='ending'>ending soon</a></li>
                            </ul>
                    </div>
                    
                                    <!-- Movie preview item -->
                
                <c:forEach var="movie" items="${list}">
                <div class="movie movie--preview movie--full release">
                     <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                                <img alt='' src="http://placehold.it/380x600">
                            </div>
                            <div class="movie__feature"><!-- 
                                <a href="#" class="movie__feature-item movie__feature--comment">123</a>
                                <a href="#" class="movie__feature-item movie__feature--video">7</a>
                                <a href="#" class="movie__feature-item movie__feature--photo">352</a>
                             --></div>
                    </div>
					
					 
                    <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href='movie-page-full.html' class="movie__title link--huge">${movie.title}</a>

                            <p class="movie__time">105 min</p>

                            <p class="movie__option"><strong>장르: </strong>${movie.genre}</p>
                            <p class="movie__option"><strong>개봉일: </strong>${movie.openDate}</p>                            
                            <p class="movie__option"><strong>감독: </strong>${movie.director}</p>
                            <p class="movie__option"><strong>배우: </strong>${movie.actor}</p>
                            <p class="movie__option"><strong>등급: </strong>${movie.grade}</p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="preview-footer">
                                <div class="movie__rate"><div class="score"></div><span class="movie__rate-number">170 votes</span> <span class="movie__rating">5.0</span></div>
                                
                            </div>
                    </div>
                     </c:forEach>
                   </div>
				
                   
