package com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LogoutCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		String moveURL = "";
		
		System.out.println("�α׾ƿ� Ȯ��");
		HttpSession session = request.getSession();
		
		session.removeAttribute("vo");
		
		moveURL = "index.jsp";
		return moveURL;
	}

}
