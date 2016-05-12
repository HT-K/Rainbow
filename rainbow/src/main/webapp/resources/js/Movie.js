/**
 * Movie.js
 */

var movie = {
		
	/*	getArticleAllTable : function(context) {
			   return this.movieList;
		},
		*/
		movieList : function(context){
			
			$.getJSON(context+'/movie/movie_list/0', function(data) {
			
				
				var start = data.page.start;
				var end = data.page.end;
				var keyField =data.page.keyField;
				var keyWord = data.page.keyWord;
				var totalMovie = data.page.totalMovie;

				alert("start : "+start+" end : "+end+" keyField : " +keyField+" keyWord : "+keyField+" totalMovie : "+totalMovie);
				var movieList =
			        '<div class="search-wrapper" style="margin-top: 55px; padding-top: 17px;">\
			            <div class="container container--add">\
			                <form class="search" id="search_form" name="search_form">\
			                    <input type="text" class="search__field" id="keyWord" name="keyWord" placeholder="Search">\
			                    <select class="search__sort" id="keyField" name="keyField" tabindex="0">\
			                        <option value="title" selected="selected">By title</option>\
			                        <option value="director">By director</option>\
			                    </select>\
			                    <button class="btn btn-md btn--danger search__button" id="searchBtn" name="searchBtn">search a movie</button>\
			                </form>\
			            </div>\
			        </div>\
			        <!-- Main content -->\
			        <section id="wrapper" class="container">\
			            <div class="col-sm-12">\
			                <h2 class="page-heading">Movies</h2>\
			                 <div class="tags-area">\
			                    <div class="tags tags--unmarked">\
			                        <span class="tags__label">상영 영화 목록 리스트 : </span>\
			                            <ul>\
			                                <li class="item-wrap"><a href="#" class="tags__item item-active" data-filter="all">평점순</a></li>\
			                                <li class="item-wrap"><a href="#" class="tags__item" data-filter="release">개봉일순</a></li>\
			                            </ul>\
			                    </div>\
			                </div>';
				
							$.each(data.movieList, function(index, list) {
							movieList += 
								'<!-- Movie preview item -->\
				                   <div class="movie movie--preview movie--full release">\
				                        <div class="col-sm-4 col-md-3 col-lg-3">\
				                            <div class="movie__images">\
				                               <img alt="" src="'+context+'/resources/rainbow/images/main/'+list.image+'" height="283">\
				                            </div>\
				                       </div>\
				                       <div class="col-sm-8 col-md-9 col-lg-9 movie__about">\
				                            <a href="'+context+'/movie/movie_detail/'+list.movieSeq+'" class="movie__title link--huge">'+list.title+'</a>\
				                            <p class="movie__time">'+list.runningtime+'</p>\
											<p class="movie__option"><strong>장르: </strong>'+list.genre+'</p>\
				                          	<p class="movie__option"><strong>개봉일: </strong>'+list.openDate+'</p>\
				                          	<p class="movie__option"><strong>감독: </strong>'+list.director+'</p>\
				                          	<p class="movie__option"><strong>배우: </strong>'+list.actor+'</p>\
				                            <p class="movie__option"><strong>등급: </strong>'+list.grade+'</p>\
				                            <div class="movie__btns">\
				                                <a href="#" class="watchlist">Add to watchlist</a>\
				                            </div>\
				                            <div class="preview-footer">\
				                                  <div class="movie__rate">\
				                                  <div class="score" style="margin-left: -15px;"></div>\
				                                  <span class="movie__rating">'+list.rating+'</span></div>\
				                              </div>\
				                       </div>\
				                       <div class="clearfix"></div>\
				                   </div>\
				                   <!-- end movie preview item -->';
								
							});
							movieList +=
							'<div class="booking-pagination booking-pagination--margin">';
								if((start-end)>=0){
									movieList +=
									'<a onclick="#"  href="'+context+'/movie/movie_list/'+(start-end)+'&keyField='+keyField+'&keyWord='+keyWord+'" class="otherPage booking-pagination__prev" id="pagePrev">\
										<span class="arrow__text arrow--prev">prev</span>\
										<span class="arrow__info">이전 페이지</span>\
									</a>';
									
								}
								
								if((start+end)<totalMovie){
									movieList+=
									'<a href="'+context+'/movie/movie_list/'+(start+end)+'&keyField='+keyField+'&keyWord='+keyWord+'" class="otherPage booking-pagination__next" id="pageNext">\
										<span class="arrow__text arrow--next">next</span>\
										<span class="arrow__info">다음 페이지</span>\
									</a>';
								}
								
								
								/*if((start-end)>=0){
								movieList +=
								'<a href="'+context+'/movie/movie_list?startRow='+(start-end)+'&keyField='+keyField+'&keyWord='+keyWord+'" class="booking-pagination__prev" id="pagePrev">\
									<span class="arrow__text arrow--prev">prev</span>\
									<span class="arrow__info">이전 페이지</span>\
								</a>';
								
								if((start+end)<totalMovie){
									movieList+=
									'<a href="'+context+'/movie/movie_list?startRow='+(start+end)+'&keyField='+keyField+'&keyWord='+keyWord+'" class="booking-pagination__next" id="pageNext">\
										<span class="arrow__text arrow--next">next</span>\
										<span class="arrow__info">다음 페이지</span>\
									</a>';
								}
								
							}*/
								movieList+=
								'<input type="hidden" id="total" name="total" value="'+totalMovie+'" />\
							</div>\
			            </div>\
			        </section>';
				$('#content').html(movieList);
				
				$('.otherPage').click(function(e) {
			         e.preventDefault();
			        
			         alert($(this).attr('href'))
			         
			         $.ajax({
			            url : $(this).attr('href'),
			            success : function(data) {
			            	
			               $('#content').html(movieList);
			            },
			            error : function(request,status,msg) {
			                 alert("code:" + request.status+"\n"+"message:"+request.responseText+"\n"+"msg:"+msg);
			            }
			         });
			      });
			});	
		},
		
		movidDetail : function(context) {
			
		}
}