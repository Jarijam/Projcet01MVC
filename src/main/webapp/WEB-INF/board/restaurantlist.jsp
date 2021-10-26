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
	<%	ArrayList<RestaurantVO> restaurantList = (ArrayList<RestaurantVO>) request.getAttribute("restaurant_list");		
		int size = restaurantList.size();
	%>
	<!-- <form  action="/pro01/restaurant/search.do">
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
		</form>  -->
			<h3>맛집 목록</h3>
	<div style="padding-top: 30px">
		<div class="col-md-3" style="padding-bottom: 10px">
		    구분:
			<form>
				<select name="category"  id="category">
					<option value="all">전체게시물</option>
					<option value="경조사">경조사</option>
					<option value="사내소식">사내소식</option>				
				</select>
			</form>
		</div>
		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>					
				</tr>
			</thead>
			<tbody>
				 	<% for(int i=0;i<size;i++){
					RestaurantVO user = restaurantList.get(i);
					%>			
					<tr>
						<td><%= user.getRestaurant_no() %></td>
						<td><%= user.getRestaurant_name() %></td>											
						<td><%= user.getRestaurant_addr() %></td>						
					</tr>
					<% } %>
			</tbody>
		</table>
		</div>		
		<!-- <form action="#">
		<select name="tag">
			<option value="id">작성자</option>
			<option value="title">제목</option>
			<option value="content">본문</option>
			<option value="write_date">작성일</option>
		</select> <input type="text" name="search" /> <input type="submit" value="검색"> -->
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/pro01/restaurant/insertPage.do" style="text-align: right;">글쓰기</a></li>
		</ul>	
	</body>

</html>