package com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.memberDAO;
import com.Command;

public class JoinCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
		String moveURL ="";
		
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		String sns = request.getParameter("sns");
		
			memberDAO dao = new memberDAO();
			int cnt = dao.Join(id,name,pw,sns);
			
			if(cnt>0) {

				moveURL = "join_S.html";
			}
		return moveURL;
	}

}

