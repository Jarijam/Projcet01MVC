<%@page import="multi.pro01.userinfo.UserVO"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<title>회원목록 조회</title>
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="apple-touch-icon" href="/pro01/images/apple-icon.png">
    <link rel="shortcut icon" type="image/x-icon" href="/pro01/images/favicon.ico">

    <link rel="stylesheet" href="/pro01/common/css/bootstrap.min.css">
    <link rel="stylesheet" href="/pro01/common/css/tUserlatemo.css">
    <link rel="stylesheet" href="/pro01/common/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/pro01/common/css/fontawesome.min.css">

    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="/pro01/common/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="/pro01/common/css/slick-theme.css">
</head>
<body>
	<%-- <% ArrayList<UserVO> userlist = (ArrayList<UserVO>)request.getAttribute("userlist"); 
		int size = userlist.size(); 
	%> --%>
	<div class="container-fluid bg-light py-5">
		<div class="col-md-6 m-auto text-center">
			<h1 class="h1">가입 회원목록 조회</h1>
			
		</div>
	</div>

	<div >
		
		<table class="table">
			<thead>
				<tr>
					<th>id</th>
					<th>password</th>
					<th>name</th>
					<th>cellnum</th>
				</tr>
			</thead>
			<tbody>
				<%-- <%for(int i =0; i<size ; i++) {
					UserVO user = userlist.get(i);
				%>
					<tr>
						<td ><%= user.getUserid() %></td>
						<td><%= user.getPassword() %></td>
						<td><%= user.getName() %></td>
						<td><%= user.getCellnum() %></td>
					</tr>
				<% } %> --%>
			</tbody>
		</table>
	</div>
	<div class="container py-5">
		<div class="row py-5">
			<form class="col-md-9 m-auto" method="post" role="form">
				<div class="mb-3">
					<label for="inputsubject">식당이름</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="mb-3">
					<label for="inputsubject">식당주소</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="mb-3">
					<label for="inputsubject">전화번호</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="mb-3">
					<label for="inputsubject">음식 종류</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="mb-3">
					<label for="inputsubject">식당 홈페이지 바로가기</label> <input type="text"
						class="form-control mt-1" id="subject" name="subject"
						placeholder="Subject">
				</div>
				<div class="row">
					<div class="form-group col-md-6 mb-3">
						<label for="inputname">작성자 id </label> <input type="text"
							class="form-control mt-1" id="name" name="name" placeholder="Id">
					</div>
					<div class="form-group col-md-6 mb-3">
						<label for="inputemail">작성자 Email</label> <input type="email"
							class="form-control mt-1" id="email" name="email"
							placeholder="Email">
					</div>
				</div>
				</form>
			
			</div>
		</div>
		
</body>
</html>
