package com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.memberDAO;
import com.Command;

public class DeleteMemberCon implements Command {

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("ȸ��������ɽ���");
		String moveURL ="";		
		//�� email�� �����͸� �����ϰ� selectMember.jsp�� �̵��Ͻÿ�.
		String id = request.getParameter("id");

	
		memberDAO dao = new memberDAO();
		int cnt = dao.Delete(id);
			if(cnt>0) {
				moveURL = "index.jsp";
			}		return moveURL;
	}

}
