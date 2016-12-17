<%-- 
    Document   : cms
    Created on : Dec 15, 2016, 2:52:43 PM
    Author     : Kevin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Dashboard - Good Snacks</title>

        <link rel="stylesheet" type="text/css" href="<s:url value="/css/bootstrap.min.css"/>"/>
        <link rel="stylesheet" type="text/css" href="<s:url value="/font-awesome/css/font-awesome.min.css"/>" />
        <link rel="stylesheet" type="text/css" href="<s:url value="/css/dashboard.css"/>" />
        <script type="text/javascript" src="<s:url value="/js/jquery-1.11.1.min.js"/>"></script>
        <script type="text/javascript" src="<s:url value="/js/bootstrap.min.js"/>"></script>
        <script type="text/javascript" src="<s:url value="/js/jquery.form.js"/>"></script>
        
        <script type='text/javascript'>
            $(document).ready(function(){
                $("#bar-container").hide();
            
                $("#categoryList").change(function(){
                    var val = $('#categoryList').find('option:selected').text();
                      $('#menuList').find('option')
                                                .remove()
                                                .end();
                    $.ajax({
                        type : "POST",
                        url : "../testAjax",
                        data : "categoryName="+ val,
                        dataType : "json",
                        success : function(result) {
                            $.each(result.listAjax, function(k, v){
                                $('#menuList')
                                  .append($("<option></option>")
                                             .attr("value",k).text(v));
                            });
                        }
                    });
                });
                
                
                
                
                $("#formAddCategory").ajaxForm({
                     beforeSend: function()
                    {
                        $("#bar-container").show();
                        $("#bar").width('0%');
                        
                    },
                    uploadProgress: function(event, position, total, percentComplete)
                    {
                        $("#bar").width(percentComplete+'%');
                        
                    },
                    success: function(response)
                    {
                        $("#bar").width('100%');
                        alert(response.statusReport);
                        $("#bar-container").hide();
                        $("#bar").width('0%');
                       
                    }        
        
                });
            });
        </script>
        
    </head>
    <body>
    <div id="wrapper">
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
                    <span class="sr-only">Toggle navigation</span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
                <a class="navbar-brand" href="index.html">Back to Admin</a>
            </div>
            <div class="collapse navbar-collapse navbar-ex1-collapse">
                <ul class="nav navbar-nav side-nav">
                    <li><a href="Login"><i class="fa fa-bullseye"></i> Dashboard</a></li>
                    <li class="selected"><a href="CMS"><i class="fa fa-list-ol"></i> Content Management</a></li>
                    <li><a href="About"><i class="fa fa-list-ol"></i> About Us</a></li>
                    <li><a href="Contact"><i class="fa fa-list-ul"></i> Contact Us</a></li>
                    <li><a href="portfolio.html"><i class="fa fa-tasks"></i> Portfolio</a></li>
                    <li><a href="blog.html"><i class="fa fa-globe"></i> Blog</a></li>
                    <li><a href="signup.html"><i class="fa fa-list-ol"></i> SignUp</a></li>
                    <li><a href="register.html"><i class="fa fa-font"></i> Register</a></li>
                    <li><a href="timeline.html"><i class="fa fa-font"></i> Timeline</a></li>      
                </ul>
                <ul class="nav navbar-nav navbar-right navbar-user">
                    <li class="dropdown messages-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-envelope"></i> Messages <span class="badge">2</span> <b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li class="dropdown-header">2 New Messages</li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li class="message-preview">
                                <a href="#">
                                    <span class="avatar"><i class="fa fa-bell"></i></span>
                                    <span class="message">Security alert</span>
                                </a>
                            </li>
                            <li class="divider"></li>
                            <li><a href="#">Go to Inbox <span class="badge">2</span></a></li>
                        </ul>
                    </li>
                     <li class="dropdown user-dropdown">
                        <a href="#" class="dropdown-toggle" data-toggle="dropdown"><i class="fa fa-user"></i> Steve Miller<b class="caret"></b></a>
                        <ul class="dropdown-menu">
                            <li><a href="#"><i class="fa fa-user"></i> Profile</a></li>
                            <li><a href="#"><i class="fa fa-gear"></i> Settings</a></li>
                            <li class="divider"></li>
                            <li><a href="#"><i class="fa fa-power-off"></i> Log Out</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </nav>

       <div id="page-wrapper">

           
            <div class="row">
                <div id="bar-container" class="progress progress-striped active">
                    <div id="bar" class="progress-bar" style="width: 0%"></div>
                </div>
                <div class="col-lg-6">
                    <h2>Add / Remove Menu</h2>
                           
                    <div class="panel panel-default">
                        <div class="panel-body">
                        <s:form action="addCategory" namespace="/adminAPI" method="post" enctype="multipart/form-data" id="formAddMenu">
                         <div class="form-group">
                                    <label>Categories</label>
                                    <select class="form-control" name="categoryName">
                                        <option value="" disabled selected hidden>-- Category Name --</option>
                                        <s:iterator value="listCategory">
                                                <option value="<s:property/>"><s:property/></option>
					</s:iterator>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Add New Menu</label>
                                    <input class="form-control" name="menuName" placeholder="Enter text">
                                    <p class="help-block">menu is added automatically to the categories you chose.</p>
                                </div>
                                <div class="form-group">
                                    <label>File input</label>
                                    <input type="file" name="imgFile">
                                </div>

                                <button type="submit" class="btn btn-default">Add Menu</button>
                        </s:form>
                        </div>
                        <div class="panel-body">
                            <form role="form">
                                <div class="form-group">
                                    <label>Categories</label>
                                    <select class="form-control" id="categoryList">
                                        <option value="" disabled selected hidden>-- Category Name --</option>
                                        <s:iterator value="listCategory">
                                                <option value="<s:property/>"><s:property/></option>
                                        </s:iterator>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label>Menu</label>
                                    <select class="form-control" id="menuList">
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-default">Delete Menu</button>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="col-lg-6">
                    <h2>Add / Remove Category</h2>
                    <div class="panel panel-default">
                        <div class="panel-body">
                            <s:form action="addCategory" namespace="/adminAPI" method="post" enctype="multipart/form-data" id="formAddCategory">
                                <div class="form-group">
                                    <label>Add New Category</label>
                                    <input class="form-control" name="categoryName" placeholder="Enter new Category">
                                </div>
                                <button type="submit" class="btn btn-default">Add Category</button>
                            </s:form>
                        </div>
                        <div class="panel-body">
                            <s:form action="deleteCategory" namespace="/adminAPI" method="post" enctype="multipart/form-data" id="formDeleteCategory">
                            
                                <div class="form-group">
                                    <label>Remaining Categories</label>
                                    <select class="form-control">
                                        <option value="" disabled selected hidden>-- Category Name --</option>
                                            <s:iterator value="listCategory">
                                                <option value="<s:property/>"><s:property/></option>
					    </s:iterator>
                                    </select>
                                </div>
                                <button type="submit" class="btn btn-default">Delete Category</button>
                            </s:form>
                        </div>
                    </div>
                </div>
            </div>
           <div class="row">
                <div class="col-lg-6 text-center">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            .col-lg-6
                        </div>
                    </div>
                </div>
                <div class="col-lg-6 text-center">
                    <div class="panel panel-default">
                        <div class="panel-body">
                            .col-lg-6
                        </div>
                    </div>
                </div>
            </div>
            <!-- /.row -->

           
        </div>
    </div>

</body>
</html>
