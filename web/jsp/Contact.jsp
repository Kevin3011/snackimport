<%-- 
    Document   : Contact
    Created on : Dec 11, 2016, 11:30:39 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
     <s:include value="header.jsp"/>
   <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
</head>
<body>
<!--header-->

	<div class="header head-top">
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
							<h1><a href="index.html">Good Food</a></h1>
						</div>
					</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                                                            <ul class="nav navbar-nav">
                                                                    <li><a href="Home">Home <span class="sr-only">(current)</span></a></li>
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
                                                                    <li class="active"><a href="Contact">Contact</a></li>
                                                            </ul>

                                                    </div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
			
		</div>
	</div>
<!--header-->
			<!--content-->
				<div class="content">
					<div class="contact">
						<div class="container">
							<h2><span>our</span> contact</h2>
							<div class="google-map">
								<iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d424396.3176723366!2d150.92243255000002!3d-33.7969235!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x6b129838f39a743f%3A0x3017d681632a850!2sSydney+NSW%2C+Australia!5e0!3m2!1sen!2sin!4v1431587453420"></iframe>
							</div>
						<div class="contact-grids">
							<div class="col-md-6 contact-right">
								<form action="#" method="post">
									<h5>name</h5>
									<input type="text" name="Name" >
									<h5>emailaddress</h5>
									<input type="text" name="Email" >
									<h5>message</h5>
									 <textarea name="Message" ></textarea>
									 <input type="submit" value="send">
								 </form>
							</div>
							<div class="col-md-6 contact-left">
								<p>The standard chunk of Lorem Ipsum used since the 1500s is reproduced below 
									for those interested. Sections 1.10.32 and 1.10.33 from "de Finibus Bonorum
									 et Malorum" by Cicero are also reproduced in their exact original form, 
									 accompanied by English versions from the 1914 translation by H. Rackham.</p>
									<address>
										<p>The Company Name Inc.</p>
										<p>7899 St Vincent Place,</p>
										<p>Glasgow,Le 99 Pr 45.</p>
										<p>Telephone : +1 800 603 6035</p>
										<p>FAX : +1 800 889 9898</p>
										<p>E-mail : <a href="mailto:example@mail.com">example@mail.com</a></p>
									</address>
							</div>
							<div class="clearfix"></div>
						</div>
					</div>
				</div>

                <s:include value="footer.jsp"/>
</body>
</html>
