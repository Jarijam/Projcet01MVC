<%@page import="multi.pro01.userinfo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="viewport" content="width=device-width, initial-scale=1">
	
	    <link rel="apple-touch-icon" href="/pro01/common/imgages/apple-icon.png">
	    <link rel="shortcut icon" type="image/x-icon" href="/pro01/common/imgages/favicon.ico">
	
	    <link rel="stylesheet" href="/pro01/common/css/bootstrap.min.css">
	    <link rel="stylesheet" href="/pro01/common/css/templatemo.css">
	    <link rel="stylesheet" href="/pro01/common/css/custom.css">
	    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
	    <!-- Load fonts style after rendering the layout styles -->
	    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
	    <link rel="stylesheet" href="/pro01/common/css/fontawesome.min.css">
	</head>
	<body>
		<%
			UserVO user = (UserVO) session.getAttribute("loginOKUser");
		%>
		 <!-- Start Top Nav -->
	    <nav class="navbar navbar-expand-lg bg-dark navbar-light d-none d-lg-block" id="templatemo_nav_top">
	        <div class="container text-light">
	            <div class="w-100 d-flex justify-content-between">
	                <div>
	                    <i class="fa fa-envelope mx-2"></i>
	                    <a class="navbar-sm-brand text-light text-decoration-none" href="mailto:info@company.com">이메일 보내기</a>
	                    <i class="fa fa-phone mx-2"></i>
	                    <a class="navbar-sm-brand text-light text-decoration-none" href="tel:010-020-0340">문의전화</a>
	                </div>
	                <div>
	                    <a class="text-light" href="https://fb.com/templatemo" target="_blank" rel="sponsored"><i class="fab fa-facebook-f fa-sm fa-fw me-2"></i></a>
	                    <a class="text-light" href="https://www.instagram.com/" target="_blank"><i class="fab fa-instagram fa-sm fa-fw me-2"></i></a>
	                    <a class="text-light" href="https://twitter.com/" target="_blank"><i class="fab fa-twitter fa-sm fa-fw me-2"></i></a>
	                    <a class="text-light" href="https://www.linkedin.com/" target="_blank"><i class="fab fa-linkedin fa-sm fa-fw"></i></a>
	                </div>
	            </div>
	        </div>
	    </nav>
    <!-- Close Top Nav -->


    <!-- Header -->
	    <nav class="navbar navbar-expand-lg navbar-light shadow">
	        <div class="container d-flex justify-content-between align-items-center">
	
	            <a class="navbar-brand text-success logo h1 align-self-center" href="/pro01/index.do">
	                LHL
	            </a>
	
	            <button class="navbar-toggler border-0" type="button" data-bs-toggle="collapse" data-bs-target="#templatemo_main_nav" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
	                <span class="navbar-toggler-icon"></span>
	            </button>
	
	            <div class="align-self-center collapse navbar-collapse flex-fill  d-lg-flex justify-content-lg-between" id="templatemo_main_nav">
	                <div class="flex-fill">
	                    <ul class="nav navbar-nav d-flex justify-content-between mx-lg-auto">
	                        <li class="nav-item">
	                            <a class="nav-link" href="/pro01/index.do">Home</a>
	                        </li>
	                        <li class="nav-item">                           
	                            <a class="nav-link" href="/pro01/restaurant/restaurantlist.do">식당 모음</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="/pro01/review/reviewlist.do">리뷰 모음</a>
	                        </li>
	                        <li class="nav-item">
	                            <a class="nav-link" href="/pro01/review/review_write.do">리뷰 작성</a>
	                        </li>
	                    </ul>
	                </div>
	                <div class="navbar align-self-center d-flex">
	                    <div class="d-lg-none flex-sm-fill mt-3 mb-4 col-7 col-sm-auto pr-3">
	                        <div class="input-group">
	                            <input type="text" class="form-control" id="inputMobileSearch" placeholder="Search ...">
	                            <div class="input-group-text">
	                                <i class="fa fa-fw fa-search"></i>
	                            </div>
	                        </div>
	                    </div>
	                    <a class="nav-icon d-none d-lg-inline" href="#" data-bs-toggle="modal" data-bs-target="#templatemo_search">
	                        <i class="fa fa-fw fa-search text-dark mr-2"></i>
	                    </a>
	                    <a class="nav-icon position-relative text-decoration-none" href="#">
	                        <i class="fa fa-fw fa-cart-arrow-down text-dark mr-1"></i>
	                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
	                    </a>
	                    <% if(user == null){ %>
	                    <a class="nav-icon position-relative text-decoration-none" href="/pro01/login.do">	                    	
	                    	<i class="fa fa-fw fa-user text-dark mr-3"></i>
	                    	<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">+</span>
	                    </a>
	                    <%}else{ %>
	                    <a class="nav-icon position-relative text-decoration-none" href="#">	                    	
	                    	<i class="fa fa-fw fa-user text-dark mr-3"></i>
	                    	<span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark"></span>
	                    </a>
	                    <a class="nav-icon position-relative text-decoration-none" href="/pro01/user/logout.do">
	                        <span class="top-100 left-100 badge rounded-pill bg-light text-dark" style="margin-bottom: 5px">로그아웃</span>
	                    </a><!-- position-absolute top-100 left-100 badge rounded-pill bg-light text-dark -->
	                    <%} %>
	                    <!-- <a class="nav-icon position-relative text-decoration-none" href="#">
	                        <span class="position-absolute top-0 left-100 translate-middle badge rounded-pill bg-light text-dark">test</span>
	                    </a> -->
	                </div>
	            </div>
	
	        </div>
	    </nav>
	    <!-- Close Header -->
	
	    <!-- Modal -->
	    <div class="modal fade bg-white" id="templatemo_search" tabindex="-1" role="dialog" aria-labelledby="exampleModalLabel" aria-hidden="true">
	        <div class="modal-dialog modal-lg" role="document">
	            <div class="w-100 pt-1 mb-5 text-right">
	                <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
	            </div>
	            <form action="" method="get" class="modal-content modal-body border-0 p-0">
	                <div class="input-group mb-2">
	                    <input type="text" class="form-control" id="inputModalSearch" name="q" placeholder="Search ...">
	                    <button type="submit" class="input-group-text bg-success text-light">
	                        <i class="fa fa-fw fa-search text-white"></i>
	                    </button>
	                </div>
	            </form>
	        </div>
	    </div>
	</body>
</html>