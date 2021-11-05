<%@page import="multi.pro01.restaurant.RestaurantVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>식당</title>
	
	</head>
<body>
	<%	RestaurantVO restaurant = (RestaurantVO) request.getAttribute("restaurant");%>
	<form class="form-horizontal" 
		action="#" 
		method="post" >	
					
		 <div class="form-group">
			<div class="col-md-2 text-right">
				<label for="res_name" class="control-label"><h3>식당이름</h3></label>
			</div>
			<div class="col-md-8"><%=restaurant.getRes_name()%></div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="res_addr" class="control-label">식당주소</label>
			</div>
			<div class="col-md-8">${restaurant.res_addr}</div>
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="res_type" class="control-label">음식종류</label>
			</div>			
			<div class="col-md-8">${restaurant.res_type}</div>								
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="res_num" class="control-label">식당번호</label>
			</div>		
			<div class="col-md-8">${restaurant.res_num}</div>								
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="res_menu" class="control-label">식당주메뉴</label>
			</div>		
			<div class="col-md-8">${restaurant.res_menu}</div>								
		</div>
		<div class="form-group">
			<div class="col-md-2 text-right">
				<label for="raing" class="control-label">평점</label>
			</div>		
			<div class="col-md-8">${restaurant.rating}</div>								
		</div>
		
		 <div class="form-group">
			<div class="col-md-10 text-center">
				<button type="button" class="btn btn-danger btn-lg" 
					onclick="location.href='/pro01/restaurant/read.do?restaurant_no=1&state=UPDATE'">
					<i class="fa fa-fw fa-close"></i> 수정
				</button>
				<button type="button" class="btn btn-danger btn-lg"
					onclick="location.href='/pro01/restaurant/restaurantlist.do?res_type=all'">
					<i class="fa fa-fw fa-close"></i> 목록
				</button>
				<a href="/pro01/restaurant/delete.do?res_name=<%= restaurant.getRes_name()%>"><button type="button" class="btn btn-danger btn-lg">
					<i class="fa fa-fw fa-close"></i> 삭제
				</button></a>
			
			</div>
		</div> 
		
	</form>
</body>
</html>