<%@page import="com.memberVO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>   
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<!-- <link rel="stylesheet" href="assets/css/main.css" /> -->
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		<link rel="stylesheet" href="assets/css/style2.css" />
		
	</head>
	<style>
	
	</style>
	<body style="text-align: center;">
		<!-- Wrapper -->
			<nav id="menu">	
        		<ul class="links">
						<form action="UpdateCon.do" method="post">
							<br>
							<br><br><br><br>
							<li><h5>회원정보수정</h5></li>
							<br>
								<%--1. 현재 로그인 한 사람의 EMAIL를 아래에  li태그 안에 출력하시오.--%>
								<%--2. 입력한 정보를 UpdateCon으로 전송하시오.--%>
								<% 
									memberVO vo= (memberVO)session.getAttribute("vo");
								%>
								
								<li><%=vo.getId() %>님, 접속을 환영합니다!</li>
								<br>
								<li><input name="name" type="text" placeholder="이름을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
								<li><input name="pw" type="password" placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
								<li><input name="sns" type="text" placeholder="sns 아이디를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
								<li><input type="submit" value="Update" class="button fit" style="width: 500px; margin: 0 auto;"></li>
						</form>
					</ul>
			</nav>			
			
		
</html>

