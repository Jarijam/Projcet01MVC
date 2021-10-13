<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<title>회원가입 페이지</title>
		<meta charset="utf-8">
	    <meta name="viewport" content="width=device-width, initial-scale=1">
	
	    <link rel="apple-touch-icon" href="../templatemo/assets/img/apple-icon.png">
	    <link rel="shortcut icon" type="image/x-icon" href="../templatemo/assets/img/favicon.ico">
	
	    <link rel="stylesheet" href="../templatemo/assets/css/bootstrap.min.css">
	    <link rel="stylesheet" href="../templatemo/assets/css/templatemo.css">
	    <link rel="stylesheet" href="../templatemo/assets/css/custom.css">
	
	    <!-- Load fonts style after rendering the layout styles -->
	    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
	    <link rel="stylesheet" href="../templatemo/assets/css/fontawesome.min.css">

	</head>
	<body>
		<jsp:include page="/WEB-INF/layout/navbar.jsp"></jsp:include>
		<br/>
		<div id="signin">
			<form method="post" action="/clientweb/project01/signin.do">
				
				<h2>회원가입 하기</h2>
				<hr/>
				<div>
					<h4>아이디</h4>
					<input type="text" placeholder="아이디" name="id">
				</div>
				<div>	
					<h4>비밀번호</h4>
					<input type="text" placeholder="비밀번호" name="password">
				</div>
				<div>
					<h4>이름</h4>
					<input type="text" placeholder="이름" name="name">
				</div>
				<div>
					<h4>전화번호</h4>
					<input type="text" placeholder="전화번호" name="cellnum"> <input type="submit" value="회원가입">
				</div>
			</form>
		</div>
		<jsp:include page="/WEB-INF/layout/footer.jsp"></jsp:include>
	</body>
</html>