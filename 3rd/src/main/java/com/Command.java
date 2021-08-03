package com;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.memberDAO;
import com.memberVO;

public interface Command {

	public abstract String execute(HttpServletRequest request, HttpServletResponse response);
}
