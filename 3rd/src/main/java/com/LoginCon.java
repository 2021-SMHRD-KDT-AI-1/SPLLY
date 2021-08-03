package com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.memberVO;
import com.Command;


public class LoginCon implements Command {
	
	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = null;
		
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");

		memberDAO dao = new memberDAO();
		memberVO vo = dao.Login(id, pw);

		if (vo != null) {
			HttpSession session = request.getSession();
			session.setAttribute("memberinfo", vo);
			moveURL = "index.jsp";
		} else {
			moveURL = "LoginF.html";
		}
		return moveURL;
	}
}
