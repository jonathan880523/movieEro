<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
    <footer id="footer">
        <div class="container footer-container">
            <div class="row">
                <div class="col-md-2 col-sm-6">
                    <div class="widget">
                        <h5 class="widget-title">Menu</h5>
                        <ul class="menu">
                            <li><a href="#">Home</a></li>
                            <li><a href="#">Coming soon</a></li>
                            <li><a href="#">Order</a></li>
                            <li><a href="#">Terms of service</a></li>
                            <li><a href="#">Pricing</a></li>
                        </ul>
                    </div>
                    <div class="widget">
                        <div class="social-links">
                            <a href="javascript:;"><i class="fa fa-facebook"></i></a>
                            <a href="javascript:;"><i class="fa fa-twitter"></i></a>
                            <a href="javascript:;"><i class="fa fa-google-plus"></i></a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3 col-sm-6">
                    <div class="widget">
                        <h5 class="widget-title">Address information</h5>
                        <p>
                            California. AMC Dine-In Theatres Marina,
                            Street 26, Distritc 543 #108
                         </p> 
                         <p>
                            <i class="fa fa-mail"></i>Example@mail.com<br>
                            <i class="fa fa-phone"></i> + 123 456 7890
                         </p> 
                    </div>
                </div>
                <div class="col-md-1"></div>
                <div class="col-md-6">
                    <div class="widget">
                    <h5 class="widget-title">Leave a message</h5>
                        <form class="contact_form transparent">
                            <div class="row">
                                <div class="col-sm-12">
                                    <input type="text" class="inputValidation" name="name" placeholder="Name *">
                                </div>
                                <div class="col-sm-12">
                                    <input type="text" class="inputValidation" name="email" placeholder="Email *">
                                </div>
                                <div class="col-sm-12 ">
                                    <textarea class="inputValidation" placeholder="Message *"></textarea>
                                    <button type="submit" class="button fill rectangle">Send to us</button>
                                </div>
                            </div>
                        </form>
                        <div class="errorMessage"></div>
                    </div>
                </div>
            </div>
        </div>
        <div class="sub-footer">
            <div class="container">
                <div class="row copyright-text">
                    <div class="col-sm-12 text-center">
                        <p class="mv3 mvt0">&copy; Copyrights 2017 Tenguu. All rights reserved</p>
                    </div>
                </div>
            </div>
        </div>
    </footer>
    </div>
    <!-- Overlay Search -->
    <div id="overlay-search">
        <form method="get" action="./">
            <input type="text" name="s" placeholder="Search..." autocomplete="off">
            <button type="submit">
                <i class="fa fa-search"></i>
            </button>
        </form>
        <a href="javascript:;" class="close-window"></a>
    </div>
    <div id="order">
        <div class="container">
            <div class="row order-content">
                <div class="col-sm-8 col-xs-12 seat_content ph0">
                    <h2>order a ticket</h2>
                    <div class="entry-order-content">
                        <form id="msform" name="msform">
                            <!-- fieldsets -->
                            <fieldset>
                                 <div class="wpc-content">
                                    <h3>location</h3>
                                    <select name="location">
                                        <option>Tenguu Cinema Tysons corner</option>
                                        <option>Tenguu Cinema </option>
                                        <option>Tenguu Cinema corner</option>
                                        <option>Tenguu Cinema Tysons</option>
                                    </select>
                                    <h3 class="mt3">Movie</h3>
                                    <select>
                                        <option>Dead pool</option>
                                        <option>THE BATTLE OF ALGIERS (DI ALGERI)</option>
                                        <option>LORD OF THE RINGS: THE RETURN OF THE KINGS</option>
                                        <option>Tenguu Cinema Tysons corner</option>
                                    </select>
                                    <h3 class="mt3">Date</h3>
                                    <input type='date' class="datetime"/>
                                    <h3 class="mt3">TIME</h3>
                                    <ul class="order-date">
                                        <li><a href="javascript:;"><i>11:50</i></a></li>
                                        <li><a href="javascript:;"><i>13:40</i></a></li>
                                        <li><a href="javascript:;"><i>16:35</i></a></li>
                                        <li><a href="javascript:;"><i>17:30</i></a></li>
                                        <li><a href="javascript:;"><i>19:50</i></a></li>
                                        <li><a href="javascript:;"><i>21:10</i></a></li>
                                    </ul>
                                </div>
                                <input type="button" name="next" class="next action-button" value="Next" />
                            </fieldset>
                            <fieldset class="seat-content">
                                <div class="wpc-content">
                                    <h3 class="seat_title">seat</h3>
                                    <div id="seat-map"></div>
                                    <div id="legend"></div>
                                </div>
                                <input type="button" name="previous" class="action-button previous" value="Previous" />
                                <input type="submit" name="submit" class="submit action-button" value="Submit" />
                            </fieldset>
                        </form>
                    </div>
                </div>
                <div class="col-sm-4 col-xs-12 order_sidebar ph0">
                    <h2>Your Information</h2>
                    <div class="order-details">
                        <span> Location:</span><p id="locationp">Tenguu Cinema Tysons corner</p>
                        <span>Time:</span>  <p>2016.3.8 18:30</p>
                        <span>Seat: </span>
                        <ul id="selected-seats"></ul>
                        <div>Tickets: <span id="counter">0</span></div>
                        <div>Total: <b>$<span id="total">0</span></b></div>
                    </div>
                    <a href="javascript:;" class="close-window"><i class="fa fa-times"></i></a>
                </div>
            </div>
        </div>
    </div>

    <!-- Include jQuery and Scripts -->
    <script type="text/javascript" src="js/jquery.min.js"></script>
    <script type="text/javascript" src="js/main.js"></script>
    <script type="text/javascript" src="js/packages.min.js"></script>
    <script type="text/javascript" src="js/scripts.min.js"></script>
<!-- jQuery easing plugin -->
</body>
</html>