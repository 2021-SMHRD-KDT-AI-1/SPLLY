package com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.memberDAO;
import com.Command;

public class DeleteMemberCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("회원삭제기능실행");
		String moveURL ="";		
		//위 email값 데이터를 삭제하고 selectMember.jsp로 이동하시오.
		String id = request.getParameter("id");

	
		memberDAO dao = new memberDAO();
		int cnt = dao.Delete(id);
			if(cnt>0) {
				moveURL = "index.jsp";
			}		return moveURL;
	}

}
