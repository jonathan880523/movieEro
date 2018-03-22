<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c"  uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="f"  uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn"  uri="http://java.sun.com/jsp/jstl/functions"%>
<c:import url="../inc/head.jsp"/>
<c:import url="../inc/header.jsp"/>

<!-- fullwidth-slider -->
<div class="fullwidth-slider">
    <div id="headerslider" class="carousel slide"> 
        <ol class="carousel-indicators">
            <li data-target="#headerslider" data-slide-to="0" class="active"></li>
            <li data-target="#headerslider" data-slide-to="1"></li>
            <li data-target="#headerslider" data-slide-to="2"></li>
        </ol>
        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <div class="fill" data-bg-image="images/bg/main_bg01.jpg">
                 <div class="bs-slider-overlay"></div>
                    <div class="container movie-slider-container"> 
                        <div class="row">
                             <div class="col-sm-12 movie-slider-content"> 
                                <div class="slider-content" >
                                    <ul class="subtitle"  data-animation="animated bounceInRight">
                                        <li>Action</li>
                                        <li>Science Fiction</li>
                                        <li>Adventure</li>
                                    </ul>
                                    <div class="title" data-animation="animated bounceInRight" >Lord of the rings: The return of the kings <i>(2017)</i></div>
                                    <div class="slide_right" data-animation="animated bounceInRight">
                                        <a href="javascript:;" class="btn-trailer">watch trailer</a> <a href="javascript:;" class="btn-ticket">buy ticket</a>
                                        <ul class="award-logo">
                                            <li><img src="images/header/icon1.png" alt="icon" ></li>
                                            <li><img src="images/header/icon2.png" alt="icon"></li>
                                            <li><img src="images/header/icon3.png" alt="icon"></li>
                                            <li><img src="images/header/icon4.png" alt="icon"></li>
                                        </ul>
                                    </div>
                                    <div class="chart-cirle">
                                        <div class="chart-circle-l" data-animation="animated bounceInUp">
                                            <div class="circle-chart" data-circle-width="7" data-percent="64" data-text="6.4" >
                                            </div>
                                            <span>IMDB Ratffing</span>
                                        </div>
                                        <div class="chart-circle-r" data-animation="animated bounceInUp">
                                            <div class="circle-chart" data-circle-width="7" data-percent="84" data-text="8.4" >
                                            </div>
                                            <span>Rotten Rating</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="fill" data-bg-image="images/bg/main_bg02.jpg">
                 <div class="bs-slider-overlay"></div>
                    <div class="container movie-slider-container"> 
                        <div class="row">
                             <div class="col-sm-12 movie-slider-content"> 
                                <div class="slider-content" >
                                    <ul class="subtitle"  data-animation="animated bounceInRight">
                                        <li>Action</li>
                                        <li>Science Fiction</li>
                                        <li>Adventure</li>
                                    </ul>
                                    <div class="title" data-animation="animated bounceInRight" >The Battle of Algiers (La Battaglia)  <i>(1967)</i></div>
                                    <div class="slide_right" data-animation="animated bounceInRight">
                                        <a href="javascript:;" class="btn-trailer">watch trailer</a> <a href="javascript:;" class="btn-ticket">buy ticket</a>
                                        <ul class="award-logo">
                                            <li><img src="images/header/icon1.png" alt="icon" ></li>
                                            <li><img src="images/header/icon2.png" alt="icon"></li>
                                            <li><img src="images/header/icon3.png" alt="icon"></li>
                                            <li><img src="images/header/icon4.png" alt="icon"></li>
                                        </ul>
                                    </div>
                                    <div class="chart-cirle">
                                        <div class="chart-circle-l" data-animation="animated bounceInUp">
                                            <div class="circle-chart" data-circle-width="7" data-percent="94" data-text="9.4">
                                            </div>
                                            <span>IMDB Ratffing</span>
                                        </div>
                                        <div class="chart-circle-r" data-animation="animated bounceInUp">
                                            <div class="circle-chart" data-circle-width="7" data-percent="84" data-text="8.4">
                                            </div>
                                            <span>Rotten Rating</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <div class="item">
                <div class="fill" data-bg-image="images/header/header.png">
                 <div class="bs-slider-overlay"></div>
                    <div class="container movie-slider-container"> 
                        <div class="row">
                             <div class="col-sm-12 movie-slider-content"> 
                                <div class="slider-content" >
                                    <ul class="subtitle"  data-animation="animated bounceInRight">
                                        <li>Action</li>
                                        <li>Science Fiction</li>
                                    </ul>
                                    <div class="title" data-animation="animated bounceInRight" >The Battle of Algiers (Di Algeri)<i>(1967)</i></div>
                                    <div class="slide_right" data-animation="animated bounceInRight">
                                        <a href="javascript:;" class="btn-trailer">watch trailer</a> <a href="javascript:;" class="btn-ticket">buy ticket</a>
                                        <ul class="award-logo">
                                            <li><img src="images/header/icon1.png" alt="icon" ></li>
                                            <li><img src="images/header/icon2.png" alt="icon"></li>
                                            <li><img src="images/header/icon3.png" alt="icon"></li>
                                            <li><img src="images/header/icon4.png" alt="icon"></li>
                                        </ul>
                                    </div>
                                    <div class="chart-cirle" data-animation="animated bounceInUp">
                                        <div class="chart-circle-l" data-animation="animated bounceInUp">
                                            <div class="circle-chart" data-circle-width="7" data-percent="86" data-text="8.6">
                                            </div>
                                            <span>IMDB Ratffing</span>
                                        </div>
                                        <div class="chart-circle-r" data-animation="animated bounceInUp">
                                            <div class="circle-chart" data-circle-width="7" data-percent="74" data-text="7.4">
                                            </div>
                                            <span>Rotten Rating</span>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <!-- Controls -->
        <a class="carousel-control left" href="#headerslider" data-slide="prev">
            <i class="fa fa-angle-left"></i>
        </a>
        <a class="carousel-control right" href="#headerslider" data-slide="next">
            <i class="fa fa-angle-right"></i>
        </a>
        <!--// Controls -->
    </div>  
</div>
<!--// fullwidth-slider -->      
<section class="section-content">
    <div class="container-fluid pv11 ">
        <div class="row">
            <div class="col-sm-12">
                <h3 class="heading text-center">Now playing</h3>
                <div class="ticket-carousel pvt85">
                    <div class="swiper-container carousel-container movie-images" data-col="5">
                        <div class="swiper-wrapper">
                        		<div class="swiper-slide">
                                    <div class="movie-image" data-bg-image="images/carousel/movie-1.jpg">
                                        <div class="entry-hover">
                                            <div class="entry-actions">
                                                <a href="https://vimeo.com/28177848" class="btn-trailers video-player">watch trailer</a>
                                                <a href="#order" class="btn-ticket order_btn ">buy ticket</a>
                                            </div>
                                        </div>
                                        <div class="entry-desc">
                                            <div class="rating">
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                            </div>
                                            <h3 class="entry-title">X-Men:Apocalypse</h3>
                                            <ul class="entry-date">
                                                <li>11 :00</li>  
                                                <li>13 :50</li>  
                                                <li>14 :00</li>  
                                                <li>18 :00</li>  
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="movie-image" data-bg-image="images/carousel/movie-2.jpg">
                                        <div class="entry-hover">
                                            <div class="entry-actions">
                                                <a href="https://vimeo.com/28177848" class="btn-trailers video-player">watch trailer</a>
                                                <a href="#order" class="btn-ticket order_btn ">buy ticket</a>
                                            </div>
                                        </div>
                                        <div class="entry-desc">
                                            <div class="rating">
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                            </div>
                                            <h3 class="entry-title">X-Men:Apocalypse</h3>
                                            <ul class="entry-date">
                                                <li>11 :00</li>  
                                                <li>13 :50</li>  
                                                <li>14 :00</li>  
                                                <li>18 :00</li>  
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="movie-image" data-bg-image="images/carousel/movie-3.jpg">
                                        <div class="entry-hover">
                                            <div class="entry-actions">
                                                <a href="https://vimeo.com/28177848" class="btn-trailers video-player">watch trailer</a>
                                                <a href="#order" class="btn-ticket order_btn ">buy ticket</a>
                                            </div>
                                        </div>
                                        <div class="entry-desc">
                                            <div class="rating">
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                            </div>
                                            <h3 class="entry-title">X-Men:Apocalypse</h3>
                                            <ul class="entry-date">
                                                <li>11 :00</li>  
                                                <li>13 :50</li>  
                                                <li>14 :00</li>  
                                                <li>18 :00</li>  
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="movie-image" data-bg-image="images/carousel/movie-4.jpg">
                                        <div class="entry-hover">
                                            <div class="entry-actions">
                                                <a href="https://vimeo.com/28177848" class="btn-trailers video-player">watch trailer</a>
                                                <a href="#order" class="btn-ticket order_btn ">buy ticket</a>
                                            </div>
                                        </div>
                                        <div class="entry-desc">
                                            <div class="rating">
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                            </div>
                                            <h3 class="entry-title">X-Men:Apocalypse</h3>
                                            <ul class="entry-date">
                                                <li>11 :00</li>  
                                                <li>13 :50</li>  
                                                <li>14 :00</li>  
                                                <li>18 :00</li>  
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="movie-image" data-bg-image="images/carousel/movie-5.jpg">
                                        <div class="entry-hover">
                                            <div class="entry-actions">
                                                <a href="https://vimeo.com/28177848" class="btn-trailers video-player">watch trailer</a>
                                                <a href="#order" class="btn-ticket order_btn ">buy ticket</a>
                                            </div>
                                        </div>
                                        <div class="entry-desc">
                                            <div class="rating">
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                            </div>
                                            <h3 class="entry-title">X-Men:Apocalypse</h3>
                                            <ul class="entry-date">
                                                <li>11 :00</li>  
                                                <li>13 :50</li>  
                                                <li>14 :00</li>  
                                                <li>18 :00</li>  
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="movie-image" data-bg-image="images/carousel/movie-6.jpg">
                                        <div class="entry-hover">
                                            <div class="entry-actions">
                                                <a href="https://vimeo.com/28177848" class="btn-trailers video-player">watch trailer</a>
                                                <a href="#order" class="btn-ticket order_btn ">buy ticket</a>
                                            </div>
                                        </div>
                                        <div class="entry-desc">
                                            <div class="rating">
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                                <input name="stars" type="radio">
                                                <label>☆</label>
                                            </div>
                                            <h3 class="entry-title">X-Men:Apocalypse</h3>
                                            <ul class="entry-date">
                                                <li>11 :00</li>  
                                                <li>13 :50</li>  
                                                <li>14 :00</li>  
                                                <li>18 :00</li>  
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                          </div>
                    </div>
                    <div class="swiper-button-prev"></div>
                    <div class="swiper-button-next"></div>
                </div>

            </div>
        </div>
    </div>    
    <div class="section-content pvb0 bg-cover" data-bg-image="images/coming-bg.jpg">
        <div c  lass="container pvt80">
            <div class="row">
                <div class="col-md-12">
                    <div id="slider_coming" class="flexslider">
                        <ul class="slides">
                            <li>
                                <article class="product-item hover-dark">
                                    <div class="featured-image bg-cover">
                                        <img src="images/carousel/movie-1.jpg" alt="image" />
                                        <a href="https://vimeo.com/28177848" class="video-player"><i class="fa fa-play"></i></a>
                                    </div>
                                    <div class="entry-title">
                                        <ul class="subtitle">
                                            <li>Action</li>
                                            <li>Science Fiction</li>
                                            <li>Adventure</li>
                                        </ul>
                                        <a href="javascript:;" class="title">Lord of the rings: The return of the kings </a>
                                        <div class="entry-date"><span>5 May 2017</span></div>
                                        <div class="social-links">
                                            <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                                            <a href="javascript:;"><i class="fa fa-twitter"></i></a>
                                            <a href="javascript:;"><i class="fa fa-instagram"></i></a>
                                        </div>
                                    </div>
                                    
                                    <div class="entry-desc">  
                                        <div class="row mh0">
                                            <div class="col-md-2 col-sm-3 col-xs-12 comming_movie ph0">
                                                <img src="images/carousel/movie-1.jpg" alt="movie">
                                            </div>
                                            <div class="col-md-8 col-sm-7 col-xs-12 entry-text phl3">
                                                <h3>synopsis</h3>
                                                <p>Authoritatively pontificate error-free deliverables and technically sound mindshare. Quickly build ong-term high-impact outsourcing vis-a-vis best-of-breed communities. Collaboratively disseminate prospective supply chains after corporate "outside the box" thinking. Rapidiously promote interactive metrics for ethical materials.  Professionally repurpose market-driven applications with...</p>
                                                <a href="javascript:;" class="btn order">pre order</a>
                                                <a href="javascript:;" class="btn more mhl20">Read more</a>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-xs-12">
                                                <div class="wpc-skills animated">
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="56" data-speed="500"> 5.5 </h5>
                                                        <h6> - Photoshop</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="56%" style="width: 56%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>           
                                    </div>        
                                </article>
                            </li>
                            <li>
                                <article class="product-item hover-dark">
                                    <div class="featured-image bg-cover">
                                        <img src="images/carousel/movie-2.jpg" alt="image" />
                                        <a href="https://vimeo.com/28177848" class="video-player"><i class="fa fa-play"></i></a>
                                    </div>
                                    <div class="entry-title">
                                        <ul class="subtitle">
                                            <li>Action</li>
                                            <li>Science Fiction</li>
                                            <li>Adventure</li>
                                        </ul>
                                        <a href="javascript:;" class="title">Lord of the rings: The return of the kings </a>
                                        <div class="entry-date"><span>5 May 2017</span></div>
                                        <div class="social-links">
                                            <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                                            <a href="javascript:;"><i class="fa fa-twitter"></i></a>
                                            <a href="javascript:;"><i class="fa fa-instagram"></i></a>
                                        </div>
                                    </div>
                                    
                                    <div class="entry-desc">  
                                        <div class="row mh0">
                                            <div class="col-md-2 col-sm-3 col-xs-12 comming_movie ph0">
                                                <img src="images/carousel/movie-2.jpg" alt="movie">
                                            </div>
                                            <div class="col-md-8 col-sm-7 col-xs-12 entry-text phl3">
                                                <h3>synopsis</h3>
                                                <p>Authoritatively pontificate error-free deliverables and technically sound mindshare. Quickly build ong-term high-impact outsourcing vis-a-vis best-of-breed communities. Collaboratively disseminate prospective supply chains after corporate "outside the box" thinking. Rapidiously promote interactive metrics for ethical materials.  Professionally repurpose market-driven applications with...</p>
                                                <a href="javascript:;" class="btn order">pre order</a>
                                                <a href="javascript:;" class="btn more mhl20">Read more</a>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-xs-12">
                                                <div class="wpc-skills animated">
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="56" data-speed="500"> 5.5 </h5>
                                                        <h6> - Photoshop</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="56%" style="width: 56%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>           
                                    </div>        
                                </article>
                            </li>
                            <li>
                                <article class="product-item hover-dark">
                                    <div class="featured-image bg-cover">
                                        <img src="images/carousel/movie-3.jpg" alt="image" />
                                        <a href="https://vimeo.com/28177848" class="video-player"><i class="fa fa-play"></i></a>
                                    </div>
                                    <div class="entry-title">
                                        <ul class="subtitle">
                                            <li>Action</li>
                                            <li>Science Fiction</li>
                                            <li>Adventure</li>
                                        </ul>
                                        <a href="javascript:;" class="title">Lord of the rings: The return of the kings </a>
                                        <div class="entry-date"><span>5 May 2017</span></div>
                                        <div class="social-links">
                                            <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                                            <a href="javascript:;"><i class="fa fa-twitter"></i></a>
                                            <a href="javascript:;"><i class="fa fa-instagram"></i></a>
                                        </div>
                                    </div>
                                    
                                    <div class="entry-desc">  
                                        <div class="row mh0">
                                            <div class="col-md-2 col-sm-3 col-xs-12 comming_movie ph0">
                                                <img src="images/carousel/movie-3.jpg" alt="movie">
                                            </div>
                                            <div class="col-md-8 col-sm-7 col-xs-12 entry-text phl3">
                                                <h3>synopsis</h3>
                                                <p>Authoritatively pontificate error-free deliverables and technically sound mindshare. Quickly build ong-term high-impact outsourcing vis-a-vis best-of-breed communities. Collaboratively disseminate prospective supply chains after corporate "outside the box" thinking. Rapidiously promote interactive metrics for ethical materials.  Professionally repurpose market-driven applications with...</p>
                                                <a href="javascript:;" class="btn order">pre order</a>
                                                <a href="javascript:;" class="btn more mhl20">Read more</a>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-xs-12">
                                                <div class="wpc-skills animated">
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="56" data-speed="500"> 5.5 </h5>
                                                        <h6> - Photoshop</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="56%" style="width: 56%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>           
                                    </div>        
                                </article>
                            </li>
                            <li>
                                <article class="product-item hover-dark">
                                    <div class="featured-image bg-cover">
                                        <img src="images/carousel/movie-4.jpg" alt="image" />
                                        <a href="https://vimeo.com/28177848" class="video-player"><i class="fa fa-play"></i></a>
                                    </div>
                                    <div class="entry-title">
                                        <ul class="subtitle">
                                            <li>Action</li>
                                            <li>Science Fiction</li>
                                            <li>Adventure</li>
                                        </ul>
                                        <a href="javascript:;" class="title">Lord of the rings: The return of the kings </a>
                                        <div class="entry-date"><span>5 May 2017</span></div>
                                        <div class="social-links">
                                            <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                                            <a href="javascript:;"><i class="fa fa-twitter"></i></a>
                                            <a href="javascript:;"><i class="fa fa-instagram"></i></a>
                                        </div>
                                    </div>
                                    
                                    <div class="entry-desc">  
                                        <div class="row mh0">
                                            <div class="col-md-2 col-sm-3 col-xs-12 comming_movie ph0">
                                                <img src="images/carousel/movie-4.jpg" alt="movie">
                                            </div>
                                            <div class="col-md-8 col-sm-7 col-xs-12 entry-text phl3">
                                                <h3>synopsis</h3>
                                                <p>Authoritatively pontificate error-free deliverables and technically sound mindshare. Quickly build ong-term high-impact outsourcing vis-a-vis best-of-breed communities. Collaboratively disseminate prospective supply chains after corporate "outside the box" thinking. Rapidiously promote interactive metrics for ethical materials.  Professionally repurpose market-driven applications with...</p>
                                                <a href="javascript:;" class="btn order">pre order</a>
                                                <a href="javascript:;" class="btn more mhl20">Read more</a>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-xs-12">
                                                <div class="wpc-skills animated">
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="56" data-speed="500"> 5.5 </h5>
                                                        <h6> - Photoshop</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="56%" style="width: 56%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>           
                                    </div>        
                                </article>
                            </li>
                            <li>
                                <article class="product-item hover-dark">
                                    <div class="featured-image bg-cover">
                                        <img src="images/carousel/movie-5.jpg" alt="image" />
                                        <a href="https://vimeo.com/28177848" class="video-player"><i class="fa fa-play"></i></a>
                                    </div>
                                    <div class="entry-title">
                                        <ul class="subtitle">
                                            <li>Action</li>
                                            <li>Science Fiction</li>
                                            <li>Adventure</li>
                                        </ul>
                                        <a href="javascript:;" class="title">Lord of the rings: The return of the kings </a>
                                        <div class="entry-date"><span>5 May 2017</span></div>
                                        <div class="social-links">
                                            <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                                            <a href="javascript:;"><i class="fa fa-twitter"></i></a>
                                            <a href="javascript:;"><i class="fa fa-instagram"></i></a>
                                        </div>
                                    </div>
                                    
                                    <div class="entry-desc">  
                                        <div class="row mh0">
                                            <div class="col-md-2 col-sm-3 col-xs-12 comming_movie ph0">
                                                <img src="images/carousel/movie-5.jpg" alt="movie">
                                            </div>
                                            <div class="col-md-8 col-sm-7 col-xs-12 entry-text phl3">
                                                <h3>synopsis</h3>
                                                <p>Authoritatively pontificate error-free deliverables and technically sound mindshare. Quickly build ong-term high-impact outsourcing vis-a-vis best-of-breed communities. Collaboratively disseminate prospective supply chains after corporate "outside the box" thinking. Rapidiously promote interactive metrics for ethical materials.  Professionally repurpose market-driven applications with...</p>
                                                <a href="javascript:;" class="btn order">pre order</a>
                                                <a href="javascript:;" class="btn more mhl20">Read more</a>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-xs-12">
                                                <div class="wpc-skills animated">
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="56" data-speed="500"> 5.5 </h5>
                                                        <h6> - Photoshop</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="56%" style="width: 56%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>           
                                    </div>        
                                </article>
                            </li>
                            <li>
                                <article class="product-item hover-dark">
                                    <div class="featured-image bg-cover">
                                        <img src="images/carousel/movie-6.jpg" alt="image" />
                                        <a href="https://vimeo.com/28177848" class="video-player"><i class="fa fa-play"></i></a>
                                    </div>
                                    <div class="entry-title">
                                        <ul class="subtitle">
                                            <li>Action</li>
                                            <li>Science Fiction</li>
                                            <li>Adventure</li>
                                        </ul>
                                        <a href="javascript:;" class="title">Lord of the rings: The return of the kings </a>
                                        <div class="entry-date"><span>5 May 2017</span></div>
                                        <div class="social-links">
                                            <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                                            <a href="javascript:;"><i class="fa fa-twitter"></i></a>
                                            <a href="javascript:;"><i class="fa fa-instagram"></i></a>
                                        </div>
                                    </div>
                                    
                                    <div class="entry-desc">  
                                        <div class="row mh0">
                                            <div class="col-md-2 col-sm-3 col-xs-12 comming_movie ph0">
                                                <img src="images/carousel/movie-6.jpg" alt="movie">
                                            </div>
                                            <div class="col-md-8 col-sm-7 col-xs-12 entry-text phl3">
                                                <h3>synopsis</h3>
                                                <p>Authoritatively pontificate error-free deliverables and technically sound mindshare. Quickly build ong-term high-impact outsourcing vis-a-vis best-of-breed communities. Collaboratively disseminate prospective supply chains after corporate "outside the box" thinking. Rapidiously promote interactive metrics for ethical materials.  Professionally repurpose market-driven applications with...</p>
                                                <a href="javascript:;" class="btn order">pre order</a>
                                                <a href="javascript:;" class="btn more mhl20">Read more</a>
                                            </div>
                                            <div class="col-md-2 col-sm-2 col-xs-12">
                                                <div class="wpc-skills animated">
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="56" data-speed="500"> 5.5 </h5>
                                                        <h6> - Photoshop</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="56%" style="width: 56%;"></div>
                                                        </div>
                                                    </div>
                                                    <div class="skill-block">
                                                        <h5 class="timer" data-to="70" data-speed="500">6.4 </h5>
                                                        <h6> - Metacritic</h6>
                                                        <div class="skill-line">
                                                            <div class="line-fill" data-width-pb="70%" style="width: 70%;"></div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>           
                                    </div>        
                                </article>
                            </li>       
                        </ul>
                    </div>
                </div>
            </div>	
            <div id="carousel_coming" class="flexslider">
            <ul class="slides">
                            <li class="thumb_item bg-cover">
                        <div class="movie-image">
                            <a href="#" class="btn fill">Selected</a>
                            <img src="images/carousel/movie-1.jpg" class="wpc_img" alt="image"/>
                            <div class="entry-desc">
                                <div class="rating">
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                </div>
                                <h3 class="entry-title">The Mountian</h3>
                                <ul class="entry-date">
                                    <li>5 May 2017</li>  
                            </ul>
                            </div>
                    </div>
                    </li>
                                <li class="thumb_item bg-cover">
                        <div class="movie-image">
                            <a href="#" class="btn fill">Selected</a>
                            <img src="images/carousel/movie-2.jpg" class="wpc_img" alt="image"/>
                            <div class="entry-desc">
                                <div class="rating">
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                </div>
                                <h3 class="entry-title">The Mountian</h3>
                                <ul class="entry-date">
                                    <li>5 May 2017</li>  
                            </ul>
                            </div>
                    </div>
                    </li>
                                <li class="thumb_item bg-cover">
                        <div class="movie-image">
                            <a href="#" class="btn fill">Selected</a>
                            <img src="images/carousel/movie-3.jpg" class="wpc_img" alt="image"/>
                            <div class="entry-desc">
                                <div class="rating">
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                </div>
                                <h3 class="entry-title">The Mountian</h3>
                                <ul class="entry-date">
                                    <li>5 May 2017</li>  
                            	</ul>
                          </div>
                    </div>
                    </li>
                    <li class="thumb_item bg-cover">
                        <div class="movie-image">
                            <a href="#" class="btn fill">Selected</a>
                            <img src="images/carousel/movie-4.jpg" class="wpc_img" alt="image"/>
                            <div class="entry-desc">
                                <div class="rating">
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                </div>
                                <h3 class="entry-title">The Mountian</h3>
                                <ul class="entry-date">
                                    <li>5 May 2017</li>  
                            	</ul>
                          </div>
                    </div>
                    </li>
                    <li class="thumb_item bg-cover">
                        <div class="movie-image">
                            <a href="#" class="btn fill">Selected</a>
                            <img src="images/carousel/movie-5.jpg" class="wpc_img" alt="image"/>
                            <div class="entry-desc">
                                <div class="rating">
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                </div>
                                <h3 class="entry-title">The Mountian</h3>
                                <ul class="entry-date">
                                    <li>5 May 2017</li>  
                            	</ul>
                            </div>
                    	</div>
                    </li>
                    <li class="thumb_item bg-cover">
                        <div class="movie-image">
                            <a href="#" class="btn fill">Selected</a>
                            <img src="images/carousel/movie-6.jpg" class="wpc_img" alt="image"/>
                            <div class="entry-desc">
                                <div class="rating">
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                    <input name="stars" type="radio">
                                    <label>☆</label>
                                </div>
                                <h3 class="entry-title">The Mountian</h3>
                                <ul class="entry-date">
                                    <li>5 May 2017</li>  
                            	</ul>
                          </div>
                    </div>
                    </li>
               </ul>
            </div>
        </div>
    </div>        
    <div class="section-content service pvb0">
        <div class="container  pv12">
            <div class="row">
                <div class="col-sm-12">
                 <h3 class="heading text-center mb9">Your experience is gonna be exquisite.</h3>
                </div>
            </div>
            <div class="row">
                <div class="col-sm-4 ph0">
                    <h2>IMAX®</h2>
                    <p> IMAX® provides an exceptional movie experience with images of immersive size, striking clarity.</p>
                </div>
                <div class="col-sm-4 ph0">
                    <h2>REALD™ 3D</h2>
                    <p>RealD™ Digital 3D is the new generation of entertainment, with crisp, bright, ultra-realistic images.</p>
                </div>
                <div class="col-sm-4 ph0">
                    <h2>Dolby®  Laboratories</h2>
                    <p>(NYSE:DLB) is the global leader in technologies that are essential elements in the best entertainment.</p>
                </div>
            </div>
            <div class="row mt8">
                <div class="col-sm-4 ph0">
                    <h2>Great Environment</h2>
                    <p> IMAX® provides an exceptional movie experience with images of immersive size, striking clarity.</p>
                </div>
                <div class="col-sm-4 ph0">
                    <h2>Entertainment Center</h2>
                    <p>RealD™ Digital 3D is the new generation of entertainment, with crisp, bright, ultra-realistic images.</p>
                </div>
                <div class="col-sm-4 ph0">
                    <h2> So Much More...</h2>
                    <p>(NYSE:DLB) is the global leader in technologies that are essential elements in the best entertainment.</p>
                </div>
            </div>
        </div>
    </div>        
    <div class="fullscreen-section bg-black pvb0">
        <div class="container wpc-boxoffice pv8">
            <div class="row">
                <div class="col-sm-7 col-xs-12">
                    <h3>box office</h3>
                    <ul class="wpc-box-list">
                       <li class="wpc-box-item" > 
                            <ol>
                                <li class="bx-item-t"><img src="images/boxoffice/thumb-1.jpg" alt="thumb"></li>
                                <li class="bx-item-c">1</li>
                                <li class="bx-item-title">
                                    <h4>X-Men: Apocalypse</h4>
                                    <span>Action, thriller</span>
                                </li>
                                <li class="bx-item-d">1 week</li>
                                <li class="bx-item-m">1.1m</li>
                            </ol>
                        </li>
                        <li class="wpc-box-item" > 
                            <ol>
                                <li class="bx-item-t"><img src="images/boxoffice/thumb-2.jpg" alt="thumb"></li>
                                <li class="bx-item-c">2</li>
                                <li class="bx-item-title">
                                    <h4>Warcraft</h4>
                                    <span>Action, thriller</span>
                                </li>
                                <li class="bx-item-d">2 week</li>
                                <li class="bx-item-m">1.2m</li>
                            </ol>
                        </li>
                        <li class="wpc-box-item" > 
                            <ol>
                                <li class="bx-item-t"><img src="images/boxoffice/thumb-3.jpg" alt="thumb"></li>
                                <li class="bx-item-c">3</li>
                                <li class="bx-item-title">
                                    <h4>Hobbit: The battle</h4>
                                    <span>Action, thriller</span>
                                </li>
                                <li class="bx-item-d">3 week</li>
                                <li class="bx-item-m">1.3m</li>
                            </ol>
                        </li>
                        <li class="wpc-box-item" > 
                            <ol>
                                <li class="bx-item-t"><img src="images/boxoffice/thumb-4.jpg" alt="thumb"></li>
                                <li class="bx-item-c">4</li>
                                <li class="bx-item-title">
                                    <h4>James Bond: Spectre</h4>
                                    <span>Action, thriller</span>
                                </li>
                                <li class="bx-item-d">4 week</li>
                                <li class="bx-item-m">1.4m</li>
                            </ol>
                        </li>
                        <li class="wpc-box-item" > 
                            <ol>
                                <li class="bx-item-t"><img src="images/boxoffice/thumb-5.jpg" alt="thumb"></li>
                                <li class="bx-item-c">5</li>
                                <li class="bx-item-title">
                                    <h4>London has fallen</h4>
                                    <span>Action, thriller</span>
                                </li>
                                <li class="bx-item-d">5 week</li>
                                <li class="bx-item-m">1.5m</li>
                            </ol>
                        </li>
                       
                    </ul>
                </div>
                <div class="col-sm-5 col-xs-12 ">
                    <h3>testimonials</h3>
                    <div class="wpc-testimonails">
                        <div class="swiper-container carousel-container">
                            <div class="swiper-wrapper">
                                <div class="swiper-slide">
                                    <div class="testimonial">
                                        <img src="images/author.png" alt="testimonials author">
                                        <div class="entry-meta">
                                            <h4>Shela Mathews</h4>
                                        </div>
                                        <p>
                                              Enthusiastically monetize plug-and-play scenarios through quality manufactured products. Monotonectally streamline standardized portals after proactive innovation. Energistically promote market positioning.
                                        </p>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="testimonial">
                                        <img src="images/author.png" alt="testimonials author">
                                        <div class="entry-meta">
                                            <h4>Shela Mathews</h4>
                                        </div>
                                        <p>
                                              Enthusiastically monetize plug-and-play scenarios through quality manufactured products. Monotonectally streamline standardized portals after proactive innovation. Energistically promote market positioning.
                                        </p>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="testimonial">
                                        <img src="images/author.png" alt="testimonials author">
                                        <div class="entry-meta">
                                            <h4>Shela Mathews</h4>
                                        </div>
                                        <p>
                                              Enthusiastically monetize plug-and-play scenarios through quality manufactured products. Monotonectally streamline standardized portals after proactive innovation. Energistically promote market positioning.
                                        </p>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="testimonial">
                                        <img src="images/author.png" alt="testimonials author">
                                        <div class="entry-meta">
                                            <h4>Shela Mathews</h4>
                                        </div>
                                        <p>
                                              Enthusiastically monetize plug-and-play scenarios through quality manufactured products. Monotonectally streamline standardized portals after proactive innovation. Energistically promote market positioning.
                                        </p>
                                    </div>
                                </div>
                                <div class="swiper-slide">
                                    <div class="testimonial">
                                        <img src="images/author.png" alt="testimonials author">
                                        <div class="entry-meta">
                                            <h4>Shela Mathews</h4>
                                        </div>
                                        <p>
                                              Enthusiastically monetize plug-and-play scenarios through quality manufactured products. Monotonectally streamline standardized portals after proactive innovation. Energistically promote market positioning.
                                        </p>
                                    </div>
                                </div>
                            </div>
                            <div class="swiper-pagination"></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>    
    <div class="fullscreen-section">
	<!-- 뭐 넣을까?? -->
    </div>
    <script type="text/javascript" src="js/google-maps.js"></script>
    <script async defer src="https://maps.googleapis.com/maps/api/js?callback=initMap"></script>
</section>

<c:import url="../inc/footer.jsp"/>