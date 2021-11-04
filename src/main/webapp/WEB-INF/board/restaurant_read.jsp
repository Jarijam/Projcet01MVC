<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>식당</title>
	 <script type="text/javascript">
			$(document).ready(function(){
				$("#res_type").val("${restaurant.res_type}").attr("selected","selected");
			});
		</script>
	</head>
<body>
	<form class="form-horizontal" 
		action="#" 
		method="post" >	
					
		 <div class="form-group">
			<div class="col-md-2 text-right">
				<label for="res_name" class="control-label">식당이름</label>
			</div>
			<div class="col-md-8">${restaurant.res_name}</div>
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
				<label for="res_menu" class="control-label">평점</label>
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
					onclick="location.href='/pro01/restaurant/restaurantlist.do'">
					<i class="fa fa-fw fa-close"></i> 목록
				</button>
				<button type="button" class="btn btn-danger btn-lg"
					onclick="location.href='/pro01/restaurant/delete.do'">
					<i class="fa fa-fw fa-close"></i> 삭제
				</button>
			</div>
		</div> 
	</form>
</body>
</html>