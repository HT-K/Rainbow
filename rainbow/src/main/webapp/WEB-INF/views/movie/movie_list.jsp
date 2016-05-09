<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- Search bar -->
        <div class="search-wrapper" style="margin-top: 55px; padding-top: 17px;">
            <div class="container container--add">
                <form id='search-form' method='get' class="search">
                    <input id="keyField" type="text" class="search__field" placeholder="Search">
                    <select name="sorting_item" id="search-sort" class="search__sort" tabindex="0">
                        <option value="title" selected='selected'>By title</option>
                        <option value="director">By director</option>
                    </select>
                    <button type='submit' class="btn btn-md btn--danger search__button" onclick="searchBtn()">search a movie</button>
                </form>
            </div>
        </div>
        
        <!-- Main content -->
        <section id="wrapper" class="container">
            <div class="col-sm-12">
                <h2 class="page-heading">Movies</h2>
                
                 <div class="tags-area">
                    <div class="tags tags--unmarked">
                        <span class="tags__label">상영 영화 목록 리스트 : </span>
                            <ul>
                                <li class="item-wrap"><a href="#" class="tags__item item-active" data-filter='all'>개봉일순</a></li>
                                <li class="item-wrap"><a href="#" class="tags__item" data-filter='release'>평점순</a></li>
                            </ul>
                    </div>
                </div>
                
                <c:forEach var="list" items="${list}"> <!-- 컨트롤러에서 보내온 list를 member에 담는다 -->
                   <!-- Movie preview item -->
                   <div class="movie movie--preview movie--full release">
                        <div class="col-sm-3 col-md-2 col-lg-2">
                            <div class="movie__images">
                               <img alt='' src="../resources/img/movie/${list.image}">
                            </div>
                       </div>
   
                       <div class="col-sm-9 col-md-10 col-lg-10 movie__about">
                            <a href="${content}/movie/movie_detail" class="movie__title link--huge">${list.title}</a>

                            <p class="movie__time">${list.runningtime}</p>

                            <p class="movie__option"><strong>장르: </strong>${list.genre}</p>
                            <p class="movie__option"><strong>개봉일: </strong>${list.openDate}</p>                            
                            <p class="movie__option"><strong>감독: </strong>${list.director}</p>
                            <p class="movie__option"><strong>배우: </strong>${list.actor}</p>
                            <p class="movie__option"><strong>등급: </strong>${list.grade}</p>

                            <div class="movie__btns">
                                <a href="#" class="btn btn-md btn--warning">book a ticket <span class="hidden-sm">for this movie</span></a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>
                            
                            <div class="preview-footer">
                                  <div class="movie__rate">
                                  <div class="score"></div>
                                  <span class="movie__rating">5.0</span></div>                          
                                  
                              </div>
                       </div>
   
                       <div class="clearfix"></div>
                   </div>
                   <!-- end movie preview item -->
                </c:forEach>

                <div class="coloum-wrapper">
                    <div class="page paginatioon--full">
                            <a href='#' class="page__prev">prev</a>
                            <a href='#' class="page__next">next</a>
                    </div>
                </div>

            </div>

        </section>

<script type="text/javascript">
$(function() {
	 init_MovieList();
});
/* function searchBtn() {
	alert('버튼이 클릭되었습니다');
	var title = $('select[name=sorting_item] option:selected').val();
	alert(title);
	var keyField = $('#keyField').val();
	alert(keyField);
	$('#wrapper').empty();
	$('#wrapper').load(context+'/movie/search?keyField='+keyField+'&title='+title);
	alert('check');
}
$(function(e) {
	e.preventDefault();
    init_MovieList();
}); */
</script>
