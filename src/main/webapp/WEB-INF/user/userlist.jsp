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
	
	<% ArrayList<UserVO> userlist = (ArrayList<UserVO>)request.getAttribute("userlist"); 
		int size = userlist.size(); 
	%>
	<h3>회원 목록 조회</h3>

	<div style="padding-top: 30px">
		
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
				<%for(int i =0; i<size ; i++) {
					UserVO user = userlist.get(i);
				%>
					<tr>
						<td ><%= user.getUserid() %></td>
						<td><%= user.getPassword() %></td>
						<td><%= user.getName() %></td>
						<td><%= user.getCellnum() %></td>
					</tr>
				<% } %>
			</tbody>
		</table>
	</div>
	
		
</body>
</html>
