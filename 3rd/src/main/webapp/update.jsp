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
							<li><h5>ȸ����������</h5></li>
							<br>
								<%--1. ���� �α��� �� ����� EMAIL�� �Ʒ���  li�±� �ȿ� ����Ͻÿ�.--%>
								<%--2. �Է��� ������ UpdateCon���� �����Ͻÿ�.--%>
								<% 
									memberVO vo= (memberVO)session.getAttribute("vo");
								%>
								
								<li><%=vo.getId() %>��, ������ ȯ���մϴ�!</li>
								<br>
								<li><input name="name" type="text" placeholder="�̸��� �Է��ϼ���" style="width: 500px; margin: 0 auto;"></li>
								<li><input name="pw" type="password" placeholder="PW�� �Է��ϼ���" style="width: 500px; margin: 0 auto;"></li>
								<li><input name="sns" type="text" placeholder="sns ���̵� �Է��ϼ���" style="width: 500px; margin: 0 auto;"></li>
								<li><input type="submit" value="Update" class="button fit" style="width: 500px; margin: 0 auto;"></li>
						</form>
					</ul>
			</nav>			
			
		
</html>

