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
		//DB에 저장된 file정보를 모두 검색해서 jsp로 전송
		uploadDAO dao = new uploadDAO();
		
		String moveURL= "";
		try{
			 //여러개니까 List로
			ArrayList<uploadVO> list = dao.selectAll();
			
			if(list!=null) {
				request.setAttribute("list", list);
				
			}else {
				System.out.println("비었습니다");
			}
			moveURL = "View.jsp";
			//RequestDispatcher dis = request.getRequestDispatcher("View.jsp");
			//dis.forward(request, response);
			
		}catch(Exception e) {
			e.printStackTrace();
		} return moveURL;
	
	
	}

}
