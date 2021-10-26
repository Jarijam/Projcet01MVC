<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
	<html>
		<head>
			<meta charset="UTF-8">
			<title>Insert title here</title>
		</head>
	<body>
		<h3>식당 추가하기</h3>
		<form action="/pro01/restaurant/insert.do" method="post">
			<!-- <div>
				<input type="hidden" name="id" value="lee">
			</div>
			<div>
				<select>
					<option value="한식">한식</option>
					<option value="중식">중식</option>
					<option value="일식">일식</option>	
				</select>
			</div> -->
			<div>
				<label class="col-sm-2 col-sm-2 control-label">번호</label>
					<div class="col-sm-8">
						<input type="text" class="form-control" name="restaurant_no">
							<span class="help-block"></span>
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">식당 이름</label>
					<div class="col-sm-8">
						<textarea id="content"
							style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
							rows=5 name="restaurant_name">식당 작성
						</textarea>
					</div>
			</div>
			<div class="form-group">
				<label class="col-sm-2 col-sm-2 control-label">식당 주소</label>
					<div class="col-sm-8">
						<textarea id="content"
							style="width: 100%; border: 1; overflow: visible; text-overflow: ellipsis;"
							rows=5 name="restaurant_addr">주소 쓰셈
						</textarea>
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
			</form>
	</body>
</html>