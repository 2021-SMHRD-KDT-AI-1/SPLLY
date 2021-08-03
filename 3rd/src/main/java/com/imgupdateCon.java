package com;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.uploadDAO;


public class imgupdateCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		int cnt = 0;
		String moveURL = "";

		HttpSession session = request.getSession();
		memberVO vo = (memberVO)session.getAttribute("memberinfo");
		
		String tag1 = (String)session.getAttribute("tag1");
		String tag2 = (String)session.getAttribute("tag2");
		String tag3 = (String)session.getAttribute("tag3");
		
		
		String tag = tag1 + tag2 + tag3;

		uploadDAO dao = new uploadDAO();
		
		try {
			cnt = dao.Update(tag, vo.getUser_no());
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		// DAO�� ���� ������ �������� �Ȱ��� �ʾƵ� ������.

		if (cnt > 0) {

			session.removeAttribute("tag1");
			session.removeAttribute("tag2");
			session.removeAttribute("tag3");
			
			moveURL = "index.jsp";
		}

		// 2. ���� �� main.jsp�� �̵��Ͻÿ�.

	
		return moveURL;

}
	
}
