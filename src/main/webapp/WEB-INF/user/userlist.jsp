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
    <link rel="stylesheet" href="/pro01/common/css/templatemo.css">
    <link rel="stylesheet" href="/pro01/common/css/custom.css">

    <!-- Load fonts style after rendering the layout styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css2?family=Roboto:wght@100;200;300;400;500;700;900&display=swap">
    <link rel="stylesheet" href="/pro01/common/css/fontawesome.min.css">

    <!-- Slick -->
    <link rel="stylesheet" type="text/css" href="/pro01/common/css/slick.min.css">
    <link rel="stylesheet" type="text/css" href="/pro01/common/css/slick-theme.css">
</head>
<body>
	<tiles:insertAttribute name="top"></tiles:insertAttribute>
	
	<h3>회원 목록 조회</h3>

	<div style="padding-top: 30px">
		
		<table class="table">
			<thead>
				<tr>
					<th>사번</th>
					<th>성명</th>
					<th>부서코드</th>
					<th>주소</th>
				</tr>
			</thead>
			<%-- <tbody>
				<%for(int i =0; i<size ; i++) {
					UserVO user = userlist.get(i);
				%>
					<tr>
						<td ><%=  %></td>
						<td><%= user.getName() %></td>
					
						<td><%=  %></td>
						<td><%=  %></td>
					</tr>
				<% } %> --%>
			</tbody>
		</table>
	</div>
	<form action="/erp/board/search.do">
		<select name="tag">
			<option value="id">작성자</option>
			<option value="title">제목</option>
			<option value="content">본문</option>
			<option value="write_date">작성일</option>
		</select> <input type="text" name="search" /> <input type="submit" value="검색">
		<ul class="nav navbar-nav navbar-right">
			<li><a href="/erp/board/user/insertView.do" style="text-align: right;">글쓰기</a></li>
		</ul>
	</form>
	<tiles:insertAttribute name="footer"></tiles:insertAttribute>	
</body>
</html>
