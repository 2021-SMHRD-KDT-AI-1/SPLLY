package com;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.memberDAO;

@WebServlet("/idCheckCon")
public class idCheckCon extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String id = request.getParameter("id");
	
		System.out.println("����ڰ� ������ ID ��: "+ id);
	
		//(DAO ��� -> ��� ���� -> ���� ���� ���� main.jsp ����)
		
		memberDAO dao = new memberDAO();
		boolean idC = dao.idCheckDAO(id);
		
		System.out.println("���̵� ���� :"+idC);
		
		response.setContentType("text/html;charset=euc-kr");
		PrintWriter out = response.getWriter();
		out.print(idC);
	
	
	
	
	
	}

}