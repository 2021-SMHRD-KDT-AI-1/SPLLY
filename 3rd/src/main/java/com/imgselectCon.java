package com;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.uploadDAO;
import VO.uploadVO;

public class imgselectCon implements Command  {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		//DB�� ����� file������ ��� �˻��ؼ� jsp�� ����
		uploadDAO dao = new uploadDAO();
		
		String moveURL= "";
		try{
			 //�������ϱ� List��
			ArrayList<uploadVO> list = dao.selectAll();
			
			if(list!=null) {
				request.setAttribute("list", list);
				
			}else {
				System.out.println("������ϴ�");
			}
			moveURL = "View.jsp";
			//RequestDispatcher dis = request.getRequestDispatcher("View.jsp");
			//dis.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		} return moveURL;
	
	
	}

}
