        <!-- Main content -->
        
        <section class="container">
            <div class="col-sm-12">
                <div class="movie">
                <c:forEach var="list" items="${list}">
                    <h2 class="page-heading">${list.title}</h2>
                    
                    <div class="movie__info">
                        <div class="col-sm-4 col-md-3 movie-mobile">
                            <div class="movie__images">
								<span class="movie__rating">5.0</span>
								<img alt='' src="../resources/img/movie/${list.image}">
                            </div>
                            <div class="movie__rate">Your vote: <div id='score' class="score"></div></div>
                        </div>

                        <div class="col-sm-8 col-md-9">
                            <p class="movie__time">${list.runningtime}</p>

                            <p class="movie__option"><strong>Country: </strong><a href="#">New Zeland</a>, <a href="#">USA</a></p>
                            <p class="movie__option"><strong>Year: </strong><a href="#">2012</a></p>
                            <p class="movie__option"><strong>장르: </strong>${list.genre}</p>
                            <p class="movie__option"><strong>개봉일: </strong>${list.openDate}</p> 
                            <p class="movie__option"><strong>감독: </strong>${list.director}</p>
                            <p class="movie__option"><strong>배우: </strong>${list.actor}</p>
                            <p class="movie__option"><strong>등급: </strong>${list.grade}</p>
                            <p class="movie__option"><strong>Box office: </strong><a href="#">$1 017 003 568</a></p>

                            <a href="#" class="comment-link">Comments:  15</a>

                            <div class="movie__btns movie__btns--full">
                                <a href="#" class="btn btn-md btn--warning">book a ticket for this movie</a>
                                <a href="#" class="watchlist">Add to watchlist</a>
                            </div>

                            <div class="share">
                                <span class="share__marker">Share: </span>
                                <div class="addthis_toolbox addthis_default_style ">
                                    <a class="addthis_button_facebook_like" fb:like:layout="button_count"></a>
                                    <a class="addthis_button_tweet"></a>
                                    <a class="addthis_button_google_plusone" g:plusone:size="medium"></a>
                                </div>
                            </div>
                        </div>
                    </div>
                    
                    <div class="clearfix"></div>
                    
                    <h2 class="page-heading">The plot</h2>

                    <p class="movie__describe">Bilbo Baggins is swept into a quest to reclaim the lost Dwarf Kingdom of Erebor from the fearsome dragon Smaug. Approached out of the blue by the wizard Gandalf the Grey, Bilbo finds himself joining a company of thirteen dwarves led by the legendary warrior, Thorin Oakenshield. Their journey will take them into the Wild; through treacherous lands swarming with Goblins and Orcs, deadly Wargs and Giant Spiders, Shapeshifters and Sorcerers. Although their goal lies to the East and the wastelands of the Lonely Mountain first they must escape the goblin tunnels, where Bilbo meets the creature that will change his life forever ... Gollum. Here, alone with Gollum, on the shores of an underground lake, the unassuming Bilbo Baggins not only discovers depths of guile and courage that surprise even him, he also gains possession of Gollum's "precious" ring that holds unexpected and useful qualities ... A simple, gold ring that is tied to the fate of all Middle-earth in ways Bilbo cannot begin to ... </p>

                    <h2 class="page-heading">photos &amp; videos</h2>
                    </c:forEach>
                    <div class="movie__media">
                        <div class="movie__media-switch">
                            <a href="#" class="watchlist list--photo" data-filter='media-photo'>234 photos</a>
                            <a href="#" class="watchlist list--video" data-filter='media-video'>10 videos</a>
                        </div>

                        <div class="swiper-container">
                          <div class="swiper-wrapper">
                              <!--First Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Y5AehBA3IsE' class="movie__media-item ">
                                     <img alt='' src="http://placehold.it/400x240">
                                </a>
                              </div>
                              
                              <!--Second Slide-->
                              <div class="swiper-slide media-video">
                                <a href='https://www.youtube.com/watch?v=Kb3ykVYvT4U' class="movie__media-item">
                                    <img alt='' src="http://placehold.it/400x240">
                                </a>
                              </div>
                              
                              <!--Third Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>

                              <!--Four Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>

                              <!--Slide-->
                              <div class="swiper-slide media-photo"> 
                                    <a href='http://placehold.it/2100x1250' class="movie__media-item">
                                        <img alt='' src="http://placehold.it/400x240">
                                     </a>
                              </div>
                              </div>
                              </div>
                              </div>
                              </div>
                              </div>
                              </section>

