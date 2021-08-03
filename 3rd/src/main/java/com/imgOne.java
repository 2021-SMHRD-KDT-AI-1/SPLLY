package com;

import java.io.IOException;
import java.sql.SQLException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.uploadDAO;
import VO.uploadVO;


public class imgOne implements Command {
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		int user_no = Integer.parseInt(request.getParameter("user_no"));

		uploadDAO dao = uploadDAO.getInstance();

		try {
			uploadVO vo = dao.SelectOne(user_no);

			if (vo != null) {
				request.setAttribute("vo", vo);
			} else {
				System.out.println("no");
			}
			//RequestDispatcher dis = request.getRequestDispatcher("View.jsp");
			//dis.forward(request, response);
			moveURL = "View.jsp";
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		return moveURL;
	
	}

}
