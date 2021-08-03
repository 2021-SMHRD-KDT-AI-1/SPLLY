package com;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.SongDAO;
import VO.SongVO;

public class PlayListCon implements Command {

	String moveURL;

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {
		ArrayList<SongVO> song = new ArrayList<SongVO>();
		SongDAO dao = new SongDAO();
		String name = request.getParameter("name");
		song = dao.SongList(name);
		
		HttpSession session = request.getSession();
		session.setAttribute("songvo", song);
		
		moveURL = "playlist.jsp";
		return moveURL;
	}

}
