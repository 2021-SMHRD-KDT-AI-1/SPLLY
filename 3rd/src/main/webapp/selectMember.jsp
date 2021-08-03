<%@page import="com.memberVO"%>
<%@page import="com.memberDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
		<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
		<!--<link rel="stylesheet" href="assets/css/main.css" />-->
		<link rel="stylesheet" href="assets/css/style2.css" />
		<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
		<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->
		
	</head>
<body >
	<nav id="menu">	
        <ul class="links">
        		<table style="border: 1px solid; width:60%; height: 100px; margin: auto; text-align: center; vertical-align:middle;" >
					<li><h2>회원관리페이지</h2></li>
						<tr>
							<td>ID</td>
							<td>NAME</td>
							<td>PW</td>						
							<td>SNS</td>
							<td>DELETE</td>						
						</tr>
<% try {
	memberDAO dao = new memberDAO();
	ArrayList<memberVO> arr = dao.select();
				
	for(int i=0;i<arr.size();i++){
					
%>
<tr>
	
	<td><%=arr.get(i).getId()%></td>
	<td><%=arr.get(i).getName() %></td>
	<td><%=arr.get(i).getPw()%></td>
	<td><%=arr.get(i).getSns()%></td>
	<td style="width: 100px; margin:auto; display:block; text-align:center;"><a href = 'DeleteMemberCon.do?id=<%=arr.get(i).getId()%>'><button >삭제</button></a></td>
</tr>
			<!--out.print("<td><a href = 'DeleteMemberCon?email="+email+"'><button>삭제</button></a></td> 태그아니고 out.print 쓸때-->
			
			
<%
	}
} catch (Exception e) {
e.printStackTrace();
}
%>
				
				</table>		
     	</ul>
     </nav>

</body>
</html>