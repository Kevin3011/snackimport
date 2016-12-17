<%-- 
    Document   : Home
    Created on : Dec 9, 2016, 4:09:25 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE html>
<html>
    <head>
           <s:include value="header.jsp"/>
           <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
           <script src="js/responsiveslides.min.js"></script>
             <script>
                $(function () {
                  $("#slider").responsiveSlides({
                    auto: true,
                    nav: true,
                    speed: 500,
                    namespace: "callbacks",
                    pager: true,
                  });
                });
              </script>
              <!--startsmothscrolling-->
            <script type="text/javascript" src="js/move-top.js"></script>
            <script type="text/javascript" src="js/easing.js"></script>
             <script type="text/javascript">
                            jQuery(document).ready(function($) {
                                    $(".scroll").click(function(event){		
                                            event.preventDefault();
                                            $('html,body').animate({scrollTop:$(this.hash).offset().top},1200);
                                    });
                            });
                    </script>
            <!--endsmothscrolling-->

    </head>
    <body>
            <!--header-->
                                                    
                    <div class="header ">
                            <div class="container">
                                    <nav class="navbar navbar-default">
                                            <div class="container-fluid">
                            <!-- Brand and toggle get grouped for better mobile display -->
                                                    <div class="navbar-header">
                                                            <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
                                                                    <span class="sr-only">Toggle navigation</span>
                                                                    <span class="icon-bar"></span>
                                                                    <span class="icon-bar"></span>
                                                                    <span class="icon-bar"></span>
                                                            </button>				  
                                                            <div class="navbar-brand">
                                                                    <h1><a href="Home">Snack Import</a></h1>
                                                            </div>
                                                    </div>

                            <!-- Collect the nav links, forms, and other content for toggling -->
                                                    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                                            <ul class="nav navbar-nav">
                                                                    <li class="active"><a href="Home">Home <span class="sr-only">(current)</span></a></li>
                                                                    <li><a href="About">About</a></li>
                                                                    <li><a href="#menu" class="scroll">Menu</a></li>
                                                                            <li class="dropdown">
                                                                            <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Gallery <span class="caret"></span></a>
                                                                                    <ul class="dropdown-menu">
                                                                                            <s:iterator value="listCategory">
                                                                                                <li>
                                                                                                    <a href="Gallery/<s:property/>"><s:property/></a>
                                                                                                </li>
                                                                                            </s:iterator>
                                                                                    </ul>
                                                                            </li>
                                                                    <li><a href="Contact">Contact</a></li>
                                                            </ul>

                                                    </div><!-- /.navbar-collapse -->
                                            </div><!-- /.container-fluid -->
                                    </nav>
                                    <div class="slider">
                                            <div class="callbacks_container">
                                                    <ul class="rslides" id="slider">
                                                             <li>	 
                                                                    <div class="caption">
                                                                    <div class="col-md-6 cap-img">
                                                                    <img src="images/p.png"  class="img-responsive" alt="/">
                                                                    </div>
                                                                    <div class="col-md-6 cap">
                                                                            <h3>We are provide Wholesale & Distribution!</h3>  
                                                                            <p>Welcome all the retailer, we always providing the retailer to resell a lot kind of snacks from all over the world. Be our partner!.</p>
                                                                            <a class="button" data-toggle="modal" data-target="#myModal1" href="#">order online</a>
                                                                    </div>
                                                                    </div>
                                                                    <div class="clearfix"></div>
                                                             </li>
                                                             <li>
                                                                    <div class="caption">
                                                                    <div class="col-md-6 cap-img">
                                                                            <img src="images/p1.png"  class="img-responsive" alt="/">
                                                                    </div>
                                                                    <div class="col-md-6 cap">
                                                                            <h3>It's made specially for u,that's right!</h3> 
                                                                            <p>It's not a dream anymore to feel the taste of the snack from all over country! We are so willingly to help you enjoy the greatest snack.</p>
                                                                            <a class="button" data-toggle="modal" data-target="#myModal1" href="#">order online</a>
                                                                    </div>
                                                                    </div>
                                                                    <div class="clearfix"></div>
                                                            </li>
                                                             <li>	          
                                                                    <div class="caption">
                                                                    <div class="col-md-6 cap-img">
                                                                    <img src="images/p2.png"  class="img-responsive" alt="/">
                                                                    </div>
                                                                    <div class="col-md-6 cap">
                                                                            <h3>The highest quality snack</h3>
                                                                            <p>With a graze subscription you’ll get access to all the newest snacks created by our taste experts and approved by our nutritionist. Discover a new favourite today!</p>
                                                                            <a class="button" data-toggle="modal" data-target="#myModal1" href="#">order online</a>
                                                                    </div>
                                                                    </div>
                                                                    <div class="clearfix"></div>
                                                             </li>
                                                            </li>
                                                    </ul>
                                            </div>
                                    </div>
                            </div>
                    </div>
            <!--header-->
                                    <!--content-->
                                            <div class="content">
                                            <!--high-->
                                                    <div class="high-quality">
                                                            <div class="container">
                                                                    <h3>RECEIVE GOOD SNACK </h3>
                                                                    <h2>AND <span>HIGH QUALITY</span> SERVICE</h2>
                                                                    <p>Lorem ipsum dolor sit amet conse ctetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit an</p>
                                                            </div>
                                                    </div>
                                                    <!--high-->
                                                    <!--menu-->
                                                            <div class="feature-menu" id="menu">
                                                                    <div class="container">
                                                                            <h3><span>feature</span> snack</h3>
                                                                            <div class="feature-grids">
                                                                                    <div class="col-md-4 feature-grid">
                                                                                            <img src="images/m1.png" class="img-responsive" alt="/">
                                                                                            <div class="rate rate1">
                                                                                                    <h5>$4</h5>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 feature-grid">
                                                                                    <img src="images/m2.png" class="img-responsive" alt="/">
                                                                                    <div class="rate">
                                                                                                    <h5>$9</h5>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 feature-grid">
                                                                                    <img src="images/m3.png" class="img-responsive" alt="/">
                                                                                    <div class="rate">
                                                                                                    <h5>$5</h5>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 feature-grid">
                                                                                    <img src="images/m4.png" class="img-responsive" alt="/">
                                                                                    <div class="rate">
                                                                                                    <h5>$1</h5>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 feature-grid">
                                                                                    <img src="images/m5.png" class="img-responsive" alt="/">
                                                                                    <div class="rate">
                                                                                                    <h5>$4</h5>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="col-md-4 feature-grid">
                                                                                    <img src="images/m6.png" class="img-responsive" alt="/">
                                                                                    <div class="rate">
                                                                                                    <h5>$15</h5>
                                                                                            </div>
                                                                                    </div>
                                                                                    <div class="clearfix"></div>
                                                                            </div>
                                                                    </div>
                                                            </div>
                                                    <!--menu-->
                                                    <!--post-->
                                                    <div class="last-post">
                                                            <div class="container">
                                                                    <h3><span>hot</span> product</h3>
                                                                    <div class="last-grids">
                                                                            <div class="col-md-3 last-grid">
                                                                                    <div class="last1">
                                                                                             <a href="#" class="mask"><img src="images/g7.jpg" alt="image" class="img-responsive zoom-img"></a>
                                                                                            <h4>Molestie consequat</h4>
                                                                                            <p>Est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepiu .</p>
                                                                                    </div>
                                                                            </div>	
                                                                            <div class="col-md-3 last-grid">
                                                                                    <div class="last1">
                                                                                            <a href="#" class="mask"><img src="images/g5.jpg" alt="image" class="img-responsive zoom-img"></a>
                                                                                            <h4>Quam nunc putam</h4>
                                                                                            <p>Est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepiu .</p>
                                                                                    </div>
                                                                            </div>	
                                                                            <div class="col-md-3 last-grid">
                                                                                    <div class="last1">
                                                                                            <a href="#" class="mask"><img src="images/g2.jpg" alt="image" class="img-responsive zoom-img"></a>
                                                                                            <h4>Molestie consequat</h4>
                                                                                            <p>Est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepiu .</p>
                                                                                    </div>
                                                                            </div>	
                                                                            <div class="col-md-3 last-grid">
                                                                                    <div class="last1">
                                                                                            <a href="#" class="mask"><img src="images/g4.jpg" alt="image" class="img-responsive zoom-img"></a>
                                                                                            <h4>Quam nunc putam</h4>
                                                                                            <p>Est usus legentis in iis qui facit eorum claritatem. Investigationes demonstraverunt lectores legere me lius quod ii legunt saepiu .</p>
                                                                                    </div>
                                                                            </div>	
                                                                            <div class="clearfix"></div>
                                                                    </div>
                                                            </div>
                                                    </div>
                                                            <!--post-->
                                                            <!--news-->
                                                                    <div class="new-section">
                                                                            <div class="container">
                                                                                    <h3><span>brand</span> new</h3>
                                                                                            <div class="news-grids">
                                                                                                    <div class="col-md-4 new-grid">
                                                                                                             <a href="#" class="mask"><img src="images/new1.png" alt="image" class="img-responsive zoom-img"></a>
                                                                                                             <h4><a href="#">Sunbites Popcorn</a></h4>
                                                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa…</p>
                                                                                                    </div>
                                                                                                    <div class="col-md-4 new-grid">
                                                                                                    <a href="#" class="mask"><img src="images/new2.png" alt="image" class="img-responsive zoom-img"></a>
                                                                                                             <h4><a href="#">Roland Rice Cracker</a></h4>
                                                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa…</p>
                                                                                                    </div>
                                                                                                    <div class="col-md-4 new-grid">
                                                                                                    <a href="#" class="mask"><img src="images/new3.png" alt="image" class="img-responsive zoom-img"></a>
                                                                                                             <h4><a href="#">Farmer's Pantry Cornbread Crisps</a></h4>
                                                                                                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed blandit massa…</p>
                                                                                                    </div>
                                                                                                    <div class="clearfix"></div>
                                                                                            </div>
                                                                            </div>
                                                                    </div>
                                                            <!--news-->
                                                            <!--footer-->
                                                     <s:include value="footer.jsp"/>
                                                            
                                                            
                            <div class="modal fade" id="myModal1" tabindex="-1" role="dialog">
                                    <div class="modal-dialog" role="document">
                                            <div class="modal-content modal-info">
                                                    <div class="modal-header">
                                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>						
                                                    </div>
                                                            <div class="modal-body">
                                                                    <div class="compose-grids">
                                                                                    <div class="payment-online-form-left">
                                                                                                    <form>
                                                                                                            <h4><span class="shipping"> </span>Shipping Details</h4>
                                                                                                            <ul>
                                                                                                                    <li><input class="text-box-dark" type="text" value="First Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'First Name';}"></li>
                                                                                                                    <li><input class="text-box-dark" type="text" value="Last Name" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Last Name';}"></li>
                                                                                                            </ul>
                                                                                                            <ul>
                                                                                                                    <li><input class="text-box-dark" type="text" value="Email" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Email';}"></li>
                                                                                                                    <li><input class="text-box-dark" type="text" value="Phone" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Phone';}"></li>
                                                                                                            </ul>
                                                                                                            <ul>
                                                                                                                    <li><input class="text-box-dark" type="text" value="Address" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Address';}"></li>
                                                                                                                    <li><input class="text-box-dark" type="text" value="Pin Code" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Pin Code';}"></li>

                                                                                                            </ul>
                                                                                                            <div class="clearfix"></div>
                                                                                                            <h4 class="paymenthead"><span class="payment"></span>Payment Details</h4>
                                                                                                            <div class="clearfix"></div>
                                                                                                    <ul class="payment-type">
                                                                                                            <li><span class="col_checkbox">
                                                                                                                    <input id="3" class="css-checkbox1" type="checkbox">
                                                                                                                    <label for="3" class="css-label1"></label>
                                                                                                                    <a class="visa" href="#"></a>
                                                                                                                    </span>												
                                                                                                            </li>
                                                                                                            <li>
                                                                                                                    <span class="col_checkbox">
                                                                                                                            <input id="4" class="css-checkbox2" type="checkbox">
                                                                                                                            <label for="4" class="css-label2"></label>
                                                                                                                            <a class="paypal" href="#"></a>
                                                                                                                    </span>
                                                                                                            </li>
                                                                                                    </ul>
                                                                                                            <ul>
                                                                                                                    <li><input class="text-box-dark" type="text" value="Card Number" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Card Number';}"></li>
                                                                                                                    <li><input class="text-box-dark" type="text" value="Name on card" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Name on card';}"></li>

                                                                                                            </ul>
                                                                                                            <ul>
                                                                                                                    <li><input class="text-box-light hasDatepicker" type="text" id="datepicker" value="Expiration Date" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Expiration Date';}"><em class="pay-date"> </em></li>
                                                                                                                    <li><input class="text-box-dark" type="text" value="Security Code" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Security Code';}"></li>

                                                                                                            </ul>

                                                                                      <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                                                                                    <button type="submit" class="btn btn-success">Process order</button>
                                                                            </form>
                                                                    </div>
                                                            </div>
                                                    </div>
                                            </div>
                                    </div>
                            </div>
            </body>
            </html>