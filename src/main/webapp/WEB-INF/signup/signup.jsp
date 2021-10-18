<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>회원가입 페이지</title>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		
		<link rel="apple-touch-icon" href="/pro01/images/apple-icon.png">
		<link rel="shortcut icon" type="image/x-icon"
			href="/pro01/images/favicon.ico">
		
		<link rel="stylesheet" href="/pro01/common/css/bootstrap.min.css">
		<link rel="stylesheet" href="/pro01/common/css/templatemo.css">
		<link rel="stylesheet" href="/pro01/common/css/custom.css">
		
		<!-- Load fonts style after rendering the layout styles -->
		<link rel="stylesheet"
			href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
		<link rel="stylesheet" href="/pro01/common/css/fontawesome.min.css">
		<script type="text/javascript">
			$(document).ready(function(){
				$("#userid").on("keyup", function(){
					$.get("/pro01/user/idCheck.do", {"id":$("#userid").val()},
							function(data){
								$("#checkVal").text(data);
							}, "text")
				})
			});
		</script>
	</head>
	<body>
		<br/>
		<section class="bg-success py-5">
			<div class="container">
				<div class="row align-items-center py-5">
					<div class="col-md-8 text-white">
						<form method="post" action="/pro01/user/insert.do">
							<h2>회원가입 하기</h2>
							<hr/>
							<div>
								<h4>아이디</h4>
								<input type="text" placeholder="아이디" name="userid" id="userid">
								<span id="checkVal">${result}</span>
							</div>
							
							<br/>
							<div>	
								<h4>비밀번호</h4>
								<input type="text" placeholder="비밀번호" name="password">
							</div>
							<br/>
							<div>
								<h4>이름</h4>
								<input type="text" placeholder="이름" name="name">
							</div>
							<br/>
							<div>
								<h4>전화번호</h4>
								<input type="text" placeholder="전화번호" name="cellnum"> <input type="submit" value="회원가입">
							</div>
						</form>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>