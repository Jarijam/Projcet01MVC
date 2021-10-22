<%@page import="multi.pro01.restaurant.RestaurantVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<!DOCTYPE html>
<html lang="en">

<head>
<title>식당검색 페이지</title>
</head>
<body>
	<%
		ArrayList<RestaurantVO> restaurantList = (ArrayList<RestaurantVO>) request.getAttribute("restaurant_name");	
	%>
	<form  action="/pro01/restaurant/search.do">
	<section class="bg-success py-5">
		<div class="container">
			<div class="row align-items-center py-5">
				<div class="col-md-8 text-white">
					<h1>식당</h1>
				</div>
				<div>
					<div class="">키워드로 검색하세요</div>
					<input type="text" name="restaurant" size="50">
				</div>
				<div>
					<input type="submit" value="검색">
				</div>
			</div>
		</div>
	</section>
	</form>
	<h3>식당 리스트</h3>
	<div style="padding-top: 30px">
		<div class="col-md-3" style="padding-bottom: 10px">
			<form>
				<select name="restaurant_category" id="restaurant_category">
					<option value="all">전체 식당</option>
					<option value="한식">한식</option>
					<option value="중식">중식</option>
					<option value="일식">일식</option>
				</select>
			</form>
		</div>
		<form action="/pro01/restaurant/search.do">
			

				<select name="tag">
					<option value="id">작성자</option>
					<option value="title">제목</option>
					<option value="content">본문</option>
					<option value="write_date">작성일</option>
				</select>
				<input type="text" name="search" />
				<input type="submit" value="검색">
				


		</form>


		</section>
		<!-- End Section -->

		<!-- Start Brands -->
		<section class="bg-light py-5">
			<div class="container my-4">
				<div class="row text-center py-3">
					<div class="col-lg-6 m-auto">
						<h1 class="h1">오늘의 맛집</h1>
						<p>추가할 내용들(광고 설명)</p>
					</div>
					<div class="col-lg-9 m-auto tempaltemo-carousel">
						<div class="row d-flex flex-row">
							<!--Controls-->
							<div class="col-1 align-self-center">
								<a class="h1" href="#templatemo-slide-brand" role="button"
									data-bs-slide="prev"> <i
									class="text-light fas fa-chevron-left"></i>
								</a>
							</div>
							<!--End Controls-->

							<!--Carousel Wrapper-->
							<div class="col">
								<div class="carousel slide carousel-multi-item pt-2 pt-md-0"
									id="templatemo-slide-brand" data-bs-ride="carousel">
									<!--Slides-->
									<div class="carousel-inner product-links-wap" role="listbox">

										<!--First slide-->
										<div class="carousel-item active">
											<div class="row">
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_01.png" alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_02.png" alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_03.png" alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_04.png" alt="Brand Logo"></a>
												</div>
											</div>
										</div>
										<!--End First slide-->

										<!--Second slide-->
										<div class="carousel-item">
											<div class="row">
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_01.png" alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_02.png" alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_03.png" alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_04.png" alt="Brand Logo"></a>
												</div>
											</div>
										</div>
										<!--End Second slide-->

										<!--Third slide-->
										<div class="carousel-item">
											<div class="row">
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_01.png" alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_02.png" alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_03.png" alt="Brand Logo"></a>
												</div>
												<div class="col-3 p-md-5">
													<a href="#"><img class="img-fluid brand-img"
														src="/pro01/images/brand_04.png" alt="Brand Logo"></a>
												</div>
											</div>
										</div>
										<!--End Third slide-->

									</div>
									<!--End Slides-->
								</div>
							</div>
							<!--End Carousel Wrapper-->

							<!--Controls-->
							<div class="col-1 align-self-center">
								<a class="h1" href="#templatemo-slide-brand" role="button"
									data-bs-slide="next"> <i
									class="text-light fas fa-chevron-right"></i>
								</a>
							</div>
							<!--End Controls-->
						</div>
					</div>
				</div>
			</div>
		</section>
		<!--End Brands-->
</body>

</html>