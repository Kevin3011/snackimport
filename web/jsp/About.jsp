<%-- 
    Document   : About
    Created on : Dec 9, 2016, 4:20:42 PM
    Author     : Kevin
--%><%@page contentType="text/html" pageEncoding="UTF-8"%><%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
        <s:include value="header.jsp"/>
        <script type="application/x-javascript">
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	</head>
<body>
	<!--header-->

	<div class="header head-top">
		<div class="container">
			<nav class="navbar navbar-default">
				<div class="container-fluid">
					<!-- Brand and toggle get grouped for better mobile display -->
					<div class="navbar-header">
						<button aria-expanded="false" class="navbar-toggle collapsed" data-target="#bs-example-navbar-collapse-1" data-toggle="collapse" type="button"><span class="sr-only">Toggle navigation</span> <span class="icon-bar"></span> <span class="icon-bar"></span> <span class="icon-bar"></span></button>
						<div class="navbar-brand">
							<h1><a href="Home">Snack Import</a></h1>
						</div>
					</div><!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li>
								<a href="Home">Home <span class="sr-only">(current)</span></a>
							</li>
							<li class="active">
								<a href="About">About</a>
							</li>
							<li>
								<a href="Home">Menu</a>
							</li>
							<li class="dropdown">
								<a aria-expanded="false" aria-haspopup="true" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">Gallery <span class="caret"></span></a>
								<ul class="dropdown-menu">
                                                                    <s:iterator value="listCategory">
                                                                        <li>
                                                                             <a href="Gallery/<s:property/>"><s:property/></a>
                                                                        </li>
                                                                    </s:iterator>
                                                                </ul>
							</li>
							<li>
								<a href="Contact">Contact</a>
							</li>
						</ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
		</div>
	</div><!--header-->
	<!--content-->
	<div class="content">
		<!--about-->
		<div class="about-section">
			<div class="container">
				<h2><span>Our</span> outlet</h2>
				<div class="about-grids">
					<div class="col-md-4 about-grid1"><img alt="/" class="img-responsive" src="images/g8.jpg"></div>
					<div class="col-md-8 about-grid">
						<h5>Donec euismod imperdiet feugiat. Vivamus non interdum eros. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Morbi tristique ut lacus et scelerisque.</h5>
						<p>Suspendisse potenti. Sed fermentum, libero eget euismod convallis, justo lectus egestas dui, eu tempor lectus risus a dolor. Suspendisse tempor quam purus, sit amet feugiat sapien molestie nec. Sed aliquam, justo ut pharetra dapibus, leo risus iaculis nulla, ut sagittis nunc diam lobortis metus. Nulla pulvinar odio vitae nisl dignissim, id rutrum lorem molestie. Maecenas euismod hendrerit risus, ut congue arcu tincidunt sed. Nullam at ipsum vel ante interdum lobortis. Etiam quis ultricies enim, in venenatis sapien. Phasellus interdum consectetur enim, venenatis eleifend urna sed nulla id magna placerat hendrerit.</p>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div><!--about-->
		<div class="cooking">
			<div class="container">
				<div class="cooking-grids">
					<div class="col-md-4 cook-grid">
						<div class="cook1">
							<h3>Our Mission</h3>
							<p>Fratione uptate mseesciun neque porroisqm estrem equia dolorer ntreterase geryiuyasa miertase.</p>
							<ul>
								<li>
									<a href="#">Lorem ipsum dolor sit</a>
								</li>
								<li>
									<a href="#">Amet, consectetur</a>
								</li>
								<li>
									<a href="#">Nisi ex vel dictum dui</a>
								</li>
								<li>
									<a href="#">Lorem ipsum dolor sit</a>
								</li>
								<li>
									<a href="#">Praesent lacinia</a>
								</li>
								<li>
									<a href="#">Lorem ipsum dolor sit</a>
								</li>
								<li>
									<a href="#">Praesent lacinia</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 cook-grid">
						<div class="cook2">
							<h3>Snack Classes</h3>
							<p>Fratione uptate mseesciun neque porroisqm estrem equia dolorer ntreterase geryiuyasa miertase.</p>
							<ul>
								<li>
									<a href="#">Aid venenatis enim</a>
								</li>
								<li>
									<a href="#">Curabitur sit amet</a>
								</li>
								<li>
									<a href="#">Dolor sed lorem</a>
								</li>
								<li>
									<a href="#">Vulputate ullamcorper</a>
								</li>
								<li>
									<a href="#">Praesent lacinia</a>
								</li>
								<li>
									<a href="#">Vulputate ullamcorper</a>
								</li>
								<li>
									<a href="#">Praesent lacinia</a>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-4 cook-grid">
						<div class="cook3">
							<h3>Buying Guide</h3>
							<p>Fratione uptate mseesciun neque porroisqm estrem equia dolorer ntreterase geryiuyasa miertase.</p>
							<ul>
								<li>
									<a href="#">Adipiscing elit fusce</a>
								</li>
								<li>
									<a href="#">Amet, consectetur</a>
								</li>
								<li>
									<a href="#">Praesent lacinia</a>
								</li>
								<li>
									<a href="#">Lorem ipsum dolor sit</a>
								</li>
								<li>
									<a href="#">Dui eget risus ultricies</a>
								</li>
								<li>
									<a href="#">Lorem ipsum dolor sit</a>
								</li>
								<li>
									<a href="#">Dui eget risus ultricies</a>
								</li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div><!--staff-->
		<div class="staff-section">
			<div class="container">
				<h3><span>our</span> staff</h3>
				<ul class="ch-grid">
					<li>
						<div class="ch-item">
							<div class="ch-info">
								<div class="ch-info-front ch-img-1"></div>
								<div class="ch-info-back">
									<h4>Chef</h4>
									<p>Lorem ipsum <a href="#">consectetur</a></p>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item">
							<div class="ch-info">
								<div class="ch-info-front ch-img-2"></div>
								<div class="ch-info-back">
									<h4>Hostess</h4>
									<p>Lorem ipsum <a href="#">consectetur</a></p>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item">
							<div class="ch-info">
								<div class="ch-info-front ch-img-3"></div>
								<div class="ch-info-back">
									<h4>Manager</h4>
									<p>Lorem ipsum <a href="#">consectetur</a></p>
								</div>
							</div>
						</div>
					</li>
					<li>
						<div class="ch-item">
							<div class="ch-info">
								<div class="ch-info-front ch-img-4"></div>
								<div class="ch-info-back">
									<h4>Waitress</h4>
									<p>Lorem ipsum <a href="#">consectetur</a></p>
								</div>
							</div>
						</div>
					</li>
				</ul>
			</div>
		</div><!--staff-->
		<!--iteam-->
		<div class="iteam">
			<div class="container">
				<h3><span>Snack</span> items</h3>
				<div class="items-grids">
					<div class="col-md-4 items-grid"><img alt="/" class="img-responsive" src="images/g1.jpg"></div>
					<div class="col-md-4 items-grid"><img alt="/" class="img-responsive" src="images/g2.jpg"></div>
					<div class="col-md-4 items-grid"><img alt="/" class="img-responsive" src="images/g4.jpg"></div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div><!--iteam-->
		<!--our History-->
		<div class="history-section">
			<div class="container">
				<h3><span>our</span> History</h3>
				<div class="history-grids">
					<div class="col-md-3 history-grid">
						<figure class="icon">
							<i class="glyphicon glyphicon-cutlery"></i>
						</figure>
						<h5>0</h5>
						<h6>SNACKS IN MENU</h6>
					</div>
					<div class="col-md-3 history-grid">
						<figure class="icon">
							<i class="glyphicon glyphicon-thumbs-up"></i>
						</figure>
						<h5>0</h5>
						<h6>POSITIVE REVIEWS</h6>
					</div>
					<div class="col-md-3 history-grid">
						<figure class="icon">
							<i class="glyphicon glyphicon-flag"></i>
						</figure>
						<h5>0</h5>
						<h6>YEARS OF EXPERIENCE</h6>
					</div>
					<div class="col-md-3 history-grid">
						<figure class="icon">
							<i class="glyphicon glyphicon-user"></i>
						</figure>
						<h5>100%</h5>
						<h6>FRIENDLY STAFF</h6>
					</div>
					<div class="clearfix"></div>
				</div>
			</div>
		</div><!--our History-->
		<!--footer-->
                <s:include value="footer.jsp"/>
	</div>
</body>
</html>