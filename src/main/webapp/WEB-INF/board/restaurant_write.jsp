<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>식당추가</title>
		</head>
	<body>
		<h3>식당 추가하기</h3>
		<form action="/pro01/restaurant/insert.do" method="post">					
				<label class="col-sm-2 col-sm-2 control-label">식당이름</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="res_name">
							<span class="help-block"></span>
					</div>			
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">식당 주소</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="res_addr">
							<span class="help-block"></span>
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">음식 종류</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="res_type">
							<span class="help-block"></span>
					</div>
			</div>	
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">식당 번호</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="res_num">
							<span class="help-block"></span>
					</div>	
			</div>
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">식당 주메뉴</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="res_menu">
							<span class="help-block"></span>
					</div>				
			</div>
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">평점</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="rating">
							<span class="help-block"></span>
						</div>
			</div>							
			<div class="form-group">
				<div class="col-lg-4 text-center">
				</div>
				<div class="col-lg-2 text-center">
					<button type="submit" class="btn btn-success"
							style="width: 100px; background-color: #0ea006">등록
					</button>
				</div>
				<div class="col-lg-2 text-center">
					<button type="reset" class="btn btn-default"
							style="width: 100px; background-color: #9a9a9a">취소
					</button>
				</div>			
			</div>		
			<button id="btn-remove" class="btn btn-danger">delete</button>			
			</form>
	</body>
</html>