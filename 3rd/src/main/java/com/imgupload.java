package com;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.tomcat.util.http.fileupload.servlet.ServletFileUpload;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import DAO.uploadDAO;
import VO.uploadVO;

public class imgupload implements Command {
	String img1, img2, img3 = "";

	@Override
	public String execute(HttpServletRequest request, HttpServletResponse response) {

		String moveUrl = "";

		response.setCharacterEncoding("UTF-8");
		String photo = request.getParameter("photo");
		System.out.println(photo);

		ServletContext context = request.getSession().getServletContext();
		String saveDir = context.getRealPath("Upload");
		System.out.println("저장경로확인 " + saveDir);

		int maxSize = 3 * 1024 * 1024; // 3MB
		String encoding = "utf-8";
		response.setContentType("text/plain; charset=uft-8");

		boolean isMulti = ServletFileUpload.isMultipartContent(request);

		if (isMulti) {
			try {
				MultipartRequest multi = new MultipartRequest(request, saveDir, maxSize, encoding,
						new DefaultFileRenamePolicy());

				uploadDAO dao = new uploadDAO();

				img1 = multi.getFilesystemName("img1");
				img2 = multi.getFilesystemName("img2");
				img3 = multi.getFilesystemName("img3");
				String photo_tag = multi.getParameter("photo");
				String user_no = multi.getParameter("user_no");

				System.out.println("저장된 파일이름 : " + img1);
				System.out.println("저장된 파일이름 : " + img2);
				System.out.println("저장된 파일이름 : " + img3);

				// response.sendRedirect("http://localhost:9090/hicafe?img1=" + img1 + "&img2="+
				// img2 +"&img3=" + img3);
				System.out.println("들어오니1");

				int result1 = dao.uploadFile(img1, photo_tag, user_no);
				int result2 = dao.uploadFile(img2, photo_tag, user_no);
				int result3 = dao.uploadFile(img3, photo_tag, user_no);
				System.out.println("들어오니2");

				if (result1 > 0) {
					System.out.println("1");
					// moveUrl = "imgselectCon";
					uploadDAO dao2 = new uploadDAO();
					// 여러개니까 List로 
					ArrayList<uploadVO> list = dao2.selectAll();

					if (list != null) {
						request.setAttribute("list", list);
					}
				} else {
					System.out.println("0");
					moveUrl = "upload.jsp";
				}

			} catch (Exception e) {
				e.printStackTrace();
			}
		} else {
			System.out.println("실패");
		}
		return "http://localhost:9090/hicafe?img1=" + img1 + "&img2=" + img2 + "&img3=" + img3;
		//flask들리기위한 용도
	}

}
