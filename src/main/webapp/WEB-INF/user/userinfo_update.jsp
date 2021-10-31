<%@page import="multi.pro01.userinfo.UserVO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>회원수정 페이지</title>
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
								$("#checkId").text(data);
							}, "text")
				})
				$("#email").on("keyup", function(){
					$.get("/pro01/user/emailCheck.do", {"email":$("#password").val()},
							function(data){
								$("#checkEmail").text(data);
							}, "text")
				})
				$("#cellnum").on("keyup", function(){
					$.get("/pro01/user/cellnumCheck.do", {"cellnum":$("#cellnum").val()},
							function(data){
								$("#checkCellnum").text(data);
							}, "text")
				})
				$("#submit").click(function() {
					alert("정보 수정이 완료되었습니다!");
				})
			});
		</script>
	</head>
	<body>
		<%
			UserVO user = (UserVO) session.getAttribute("loginOKUser");
		%>
		<br/>
		<section class="bg-success py-5">
			<div class="container">
				<div class="row align-items-center py-5">
					<div class="col-md-8 text-white">
						<h2>회원정보 조회 및 수정하기</h2>
						<hr/>
						<div>
							<h4>아이디</h4>
							<hr/>
							<h5><b><%=user.getUserid()%></b></h5>
						</div>
						<br/>
						<div>	
							<h4>비밀번호</h4>
							<hr/>
							<form method="post" action="/pro01/user/update_password.do" class="form-horizontal">
								<div style="display: none">
									<input name="userid" value="<%=user.getUserid()%>">
								</div>
								<h5><%=user.getPassword()%>&nbsp;<input type="password" placeholder="바꿀 비밀번호" name="password" minlength="5" required>
									<input type="submit" id="submit" value="수정하기">
								</h5>
							</form>
						</div>
						<br/>
						<div>
							<h4>이름</h4>
							<hr/>
							<h5><%=user.getName()%></h5>
						</div>
						<br/>
						<div>
							<h4>전화번호</h4>
							<hr/>
							<form method="post" action="/pro01/user/update_cellnum.do" class="form-horizontal">
								<div style="display: none">
									<input name="userid" value="<%=user.getUserid()%>">
								</div>
								<h5><%=user.getCellnum()%>&nbsp;<input type="text" placeholder="'-'제외한 숫자만 입력" name="password" minlength="10" required>
									<input type="submit" id="submit" value="수정하기">
								</h5>
							</form>
						</div>
						<br/> 
						<div>
							<h4>이메일</h4>
							<hr/>
							<form method="post" action="/pro01/user/update_email.do" class="form-horizontal">
								<div style="display: none">
									<input name="userid" value="<%=user.getUserid()%>">
								</div>
								<h5><%=user.getEmail()%>&nbsp;<input type="text" placeholder="이메일" name="password" minlength="8" required>
									<span id="checkEmail">${email_check}</span><input type="submit" id="submit" value="수정하기">
								</h5>
							</form>
							<br/>
							<br/>
							<form method="post" action="/pro01/user/delete.do" class="form-horizontal">
								<div style="display: none">
									<input name="userid" value="<%=user.getUserid()%>">
								</div>
								<input type="submit" id="delete" value="회원탈퇴하기">
							</form>
						</div>
					</div>
				</div>
			</div>
		</section>
	</body>
</html>