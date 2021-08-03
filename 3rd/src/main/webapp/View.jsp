<%@page import="com.memberVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="VO.uploadVO"%>
<%@page import="DAO.uploadDAO"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"
    isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>

<style type="text/css">
table, td {
	border: 1px solid black;
	border-collapse: collapse;
}
</style>

</head>
<body>
	
	<%
		uploadDAO dao = new uploadDAO();
		memberVO vo = (memberVO)session.getAttribute("memberinfo");
		
		String tag1 = request.getParameter("tag1");
		String tag2 = request.getParameter("tag2");
		String tag3 = request.getParameter("tag3");
		
		uploadVO uploaded = (uploadVO)dao.SelectOne(vo.getUser_no());
		
		session.setAttribute("tag1", tag1);
		session.setAttribute("tag2", tag2);
		session.setAttribute("tag3", tag3);
		
		//이 안쪽에서 바로 DB접근하셔서 update
	
	%>
	<table>
		<tr>
			<td>번호</td>
			<td>${requestScope.vo.photo_no}</td>
		</tr>
		<tr>
			<td colspan="2"><img src="Upload/${requestScope.vo.img}"></td>
		</tr>
		<tr>
			<td>태그</td>
			<td>${requestScope.vo.photo_tag}</td>
		</tr>
		<tr>
			<td>유저</td>
			<td>${requestScope.vo.photo_no}</td>
		</tr>
		<tr>
			<td><a href="imgupdateCon.do">확인</a></td>
		</tr>
	</table>
	
</body>
</html>