package com.frontcontroller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.DeleteMemberCon;
import com.PlayListCon;
import com.JoinCon;
import com.LoginCon;
import com.LogoutCon;
import com.UpdateCon;
import com.idCheckCon;
import com.imgOne;
import com.imgselectCon;
import com.imgupdateCon;
import com.imgupload;

@WebServlet("*.do" ) // * = 전체, /do라는 확장자를 가지고 있는 모든 친구들을 여기로 불러오는 역할
public class frontcontroller extends HttpServlet {
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	
		//인코딩
		request.setCharacterEncoding("euc-kr");
		
		System.out.println("Frontcontroller");
		
		String reqURI = request.getRequestURI();
		System.out.println("어느 기능에서 왔는지?"+reqURI);
		
		// Project 이름만 출력하기
		String path = request.getContextPath();
		System.out.println("프로젝트 이름은? :" +path);
		
		// Servlet 이름만 출력하기
		// 문자열을 자르는 함수 : substring
		// substring(start) : start위치부터 끝까지 자르기
		// substring(start, end) : start~end 전 까지 문자열 자르기
		String result = reqURI.substring(path.length()+1);
		System.out.println(result);
		
		com.Command con = null;
		
		if(result.equals("LoginCon.do")) {
			con = new LoginCon();
			
		}else if(result.equals("JoinCon.do")) {
			con = new JoinCon();
		}
		else if(result.equals("LogoutCon.do")) {
			con = new LogoutCon();
		}
		else if(result.equals("UpdateCon.do")) {
			con = new UpdateCon();
		}
		else if(result.equals("DeleteMemberCon.do")) {
			con = new DeleteMemberCon();
		}	
		else if(result.equals("PlayListCon.do")) {
			con = new PlayListCon();
			
		}else if(result.equals("imgupload.do")) {
			con = new imgupload();
			
		}else if(result.equals("imgselectCon.do")) {
			con = new imgselectCon();
			
		}else if (result.equals("imgOne.do")) {
			
			con = new imgOne();
		}else if (result.equals("imgupdateCon.do")) {
			
			con = new imgupdateCon();
		}
		String moveURL = con.execute(request, response);
		response.sendRedirect(moveURL);
	}
		
}

