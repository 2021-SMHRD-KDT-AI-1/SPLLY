package com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.memberDAO;
import com.memberVO;
import com.Command;

public class UpdateCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		
				String moveURL ="";
				
				HttpSession session = request.getSession();
				memberVO vo = (memberVO) session.getAttribute("vo");

				String name= request.getParameter("name");
				String pw = request.getParameter("pw");
				String sns = request.getParameter("sns");
			

				memberDAO dao = new memberDAO();
				int cnt = dao.Update(vo.getId(), name, pw, sns);
				
				if (cnt > 0) {
					memberVO vo_new = new memberVO(vo.getId(), name, pw, sns);
					session.setAttribute("vo", vo_new);
					moveURL = "index.jsp";
				}
				return moveURL;
	}

}
