<%-- 
    Document   : Gallery
    Created on : Dec 11, 2016, 11:15:24 PM
    Author     : Kevin
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
<head>
        <s:include value="header.jsp"/>
	<script type="application/x-javascript">
            
	addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } 
	</script>
	
	<script src="../js/jquery.chocolat.js">
	</script>
	<link charset="utf-8" href="../css/chocolat.css" media="screen" rel="stylesheet" type="text/css"><!--light-box-files-->

	<script charset="utf-8" type="text/javascript">
	       $(function() {
	           $('.gallery-grid a').Chocolat();
	       });
	</script><!--script-->
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
							<h1><a href="index.html">Good Food</a></h1>
						</div>
					</div><!-- Collect the nav links, forms, and other content for toggling -->
					<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
						<ul class="nav navbar-nav">
							<li>
								<a href="..\Home">Home <span class="sr-only">(current)</span></a>
							</li>
							<li>
								<a href="..\About">About</a>
							</li>
							<li>
								<a href="..\Home">Menu</a>
							</li>
							<li class="dropdown active">
								<a aria-expanded="false" aria-haspopup="true" class="dropdown-toggle" data-toggle="dropdown" href="#" role="button">Gallery <span class="caret"></span></a>
								<ul class="dropdown-menu">
                                                                    <s:iterator value="listCategory">
                                                                        <li>
                                                                            <a href="<s:property/>"><s:property/></a>
									</li>
                                                                    </s:iterator>
								
								</ul>
							</li>
							<li>
								<a href="..\Contact">Contact</a>
							</li>
						</ul>
					</div><!-- /.navbar-collapse -->
				</div><!-- /.container-fluid -->
			</nav>
		</div>
	</div><!--header-->
	<!--content-->
	<div class="content">
		<!-- gallery -->
		<div class="gallery">
			<div class="container">
                            <h2><span><s:property value="categoryName"/></span> Gallery</h2>
				<div class="gallery-grids">
					    <s:iterator value="listGallery">
                                        	<div class="gallery-grid">
                                                    <a class="b-link-stripe b-animate-go thickbox" href="<s:property value="imgPath"/>" rel="<s:property value="name"/>">
                                                        <img alt=" " class="img-responsive" src="<s:property value="imgPath"/>">
                                                    </a> 
                                                </div>
                                            </s:iterator>
					<div class="clearfix"></div>
				</div>  
			</div>
		</div>        <!--footer-->
                <s:include value="footer.jsp"/>
	</div>
</body>
</html>