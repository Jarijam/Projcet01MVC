<%-- <%@page import="multi.pro01.userinfo.UserVO"%> --%>
<%@page import="multi.pro01.restaurant.RestaurantVO"%>
<%@page import="multi.pro01.review.ReviewVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
	<head>
    <title>리뷰 보기 페이지</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="/pro01/images/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/pro01/images/favicon.ico">

    <link rel="stylesheet" href="/pro01/common/css/bootstrap.min.css">
    <link rel="stylesheet" href="/pro01/common/css/templatemo.css">
    <link rel="stylesheet" href="/pro01/common/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/pro01/common/css/fontawesome.min.css">

    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="/pro01/common/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="/pro01/common/css/slick-theme.css">
    <script type="text/javascript">
    	$(document).ready(function() {
    		$("#like").click(function() {
				alert("좋아요 버튼 누르셨습니다!");
			})
			
			$("#report").click(function() {
					alert("신고가 완료되었습니다!");
			})
    	});
    </script>
    
</head>

<body>
	<%
		ReviewVO review = (ReviewVO)request.getAttribute("review"); 
		int rating = review.getRating();
	%>
	
    <!-- Open Content -->
    <section class="bg-light">
        <div class="container pb-5">
            <div class="row">
                <div class="col-lg-5 mt-5">
                    <div class="card mb-3">
                        <img class="card-img img-fluid" src="/pro01/images/gookbap1.png" alt="Card image cap" id="product-detail">
                    </div>
                    <div class="row">
                        <!--Start Controls-->
                        <div class="col-1 align-self-center">
                            <a href="#multi-item-example" role="button" data-bs-slide="prev">
                                <i class="text-dark fas fa-chevron-left"></i>
                                <span class="sr-only">Previous</span>
                            </a>
                        </div>
                        <!--End Controls-->
                        <!--Start Carousel Wrapper-->
                        <div id="multi-item-example" class="col-10 carousel slide carousel-multi-item" data-bs-ride="carousel">
                            <!--Start Slides-->
                            <div class="carousel-inner product-links-wap" role="listbox">

                                <!--First slide-->
                                <div class="carousel-item active">
                                    <div class="row">
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="/pro01/images/gookbap1.png" alt="Product Image 1">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="/pro01/images/gookbap2.jpg" alt="Product Image 2">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="/pro01/images/gookbap3.png" alt="Product Image 3">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!--/.First slide-->

                                <!--Second slide-->
                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="/pro01/images/gookbap4.png" alt="Product Image 4">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="/pro01/images/gookbap5.jpg" alt="Product Image 5">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="/pro01/images/gookbap6.jpg" alt="Product Image 6">
                                            </a>
                                        </div>
                                    </div>
                                </div>
                                <!--/.Second slide-->

                                <!--Third slide-->
                                <div class="carousel-item">
                                    <div class="row">
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="/pro01/images/gookbap7.jpg" alt="Product Image 7">
                                            </a>
                                        </div>
                                        <div class="col-4">
                                            <a href="#">
                                                <img class="card-img img-fluid" src="/pro01/images/gookbap8.jpg" alt="Product Image 8">
                                            </a>
                                        </div>
                                        
                                    </div>
                                </div>
                                <!--/.Third slide-->
                            </div>
                            <!--End Slides-->
                        </div>
                        <!--End Carousel Wrapper-->
                        <!--Start Controls-->
                        <div class="col-1 align-self-center">
                            <a href="#multi-item-example" role="button" data-bs-slide="next">
                                <i class="text-dark fas fa-chevron-right"></i>
                                <span class="sr-only">Next</span>
                            </a>
                        </div>
                        <!--End Controls-->
                    </div>
                </div>
                <!-- col end -->
              		
                <div class="col-lg-7 mt-5">
                    <div class="card">
                        <div class="card-body">
                            <h2 class="h2" id="">${review.res_name }</h2>
                           <%--  <p class="h3 py-2" id="">${restaurant.res_addr}</p>                             	                         
                            <p class="h3 py-2" id="">${restaurant.res_num}</p> --%>
                            <p class="h4 py-2" id="">${review.menu}</p>
                            <ul class="list-inline">
                                <li class="list-inline-item">
                                    <h5>작성자 id:</h5>
                                <li class="list-inline-item">
                                    <p class="text-muted"><strong>${review.userid}</strong></p>
                                </li>
                            </ul>
                                </li>
                            <p class="py-2">
                                        <%for (int j =1;j<=rating;j++) {%>
                                        <i class="text-warning fa fa-star"></i>
                                        <%} %>
                                        <%for (int k=1;k<=5-rating;k++) { %>
                                        <i class="text-muted fa fa-star"></i>
                                        <%} %>
                                <span class="list-inline-item text-dark">별점 ${review.rating }</span>
                            </p>

                            <h5>리뷰내용:</h5>
                            <p>${review.rev_content }</p>
							<hr>
                            <form action="#" method="GET">
                                <div class="row pb-3">
                                    <div class="col d-grid">
                                        <button type="submit" class="btn btn-success btn-lg" id="like" value="buy">좋아요</button>
                                    </div>
                                    <div class="col d-grid">
                                        <button type="submit" class="btn btn-success btn-lg" id="report" value="addtocard">신고</button>
                                    </div> 
                                    <button type="button" onclick="location.href='/pro01/review/read.do?review_no=${review.review_no}&state=UPDATE'">
										<i class="fa fa-fw fa-close"></i> 리뷰수정
									</button>
                                </div>
                            </form>

                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Close Content -->

    <!-- Start Article -->
    


    

    <!-- Start Script -->
    <script src="/pro01/common/js/jquery-1.11.0.min.js"></script>
    <script src="/pro01/common/js/jquery-migrate-1.2.1.min.js"></script>
    <script src="/pro01/common/js/bootstrap.bundle.min.js"></script>
    <script src="/pro01/common/js/templatemo.js"></script>
    <script src="/pro01/common/js/custom.js"></script>
    <!-- End Script -->

    <!-- Start Slider Script -->
    <script src="/pro01/common/js/slick.min.js"></script>
    <script>
        $('#carousel-related-product').slick({
            infinite: true,
            arrows: false,
            slidesToShow: 4,
            slidesToScroll: 3,
            dots: true,
            responsive: [{
                    breakpoint: 1024,
                    settings: {
                        slidesToShow: 3,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 600,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                },
                {
                    breakpoint: 480,
                    settings: {
                        slidesToShow: 2,
                        slidesToScroll: 3
                    }
                }
            ]
        });
    </script>
    <!-- End Slider Script -->
	
</body>
</html>