package notice.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import notice.bean.NoticeDTO;

@Controller
public class NoticeController {
	@Autowired
	NoticeService noticeService;

	// 회원 회원가입 등록
	@RequestMapping(value = "/admin/admin_notice/notice.do")
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		// Data
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		// HttpSession session = request.getSession();
		// String id = (String) request.getAttribute("memId");
		String id = "admin5";

		// DB
		NoticeDTO dto = new NoticeDTO();
		dto.setId(id);
		dto.setSubject(subject);
		dto.setContent(content);
		int result = noticeService.register(dto);

		System.out.println(result);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.setViewName("../admin_main/index.jsp");
		return modelAndView;
	}

	// 목록보기
	@RequestMapping(value = "admin/admin_notice/noticeList.do")
	public ModelAndView noticeList(HttpServletRequest request, HttpServletResponse response) {

		// 데이터 처리
		int pg = 1;
		if (request.getParameter("pg") != null) {
			pg = Integer.parseInt(request.getParameter("pg"));
		}
		// 목록 : 5개
		int limit = 5;
		int endNum = pg * limit; // 1 * 5 = 5
		int startNum = endNum - (limit - 1); // 5 - (5-1) = 1

		// noticeDAO dao = new BoardDAO();
		List<NoticeDTO> list = noticeService.NoticeList(startNum, endNum);

		// 페이징 : 3블럭
		int totalA = noticeService.getTotalA();
		int totalP = (totalA + (limit - 1)) / limit;

		int startPage = (pg - 1) / 3 * 3 + 1;
		int endPage = startPage + 2;
		if (endPage > totalP)
			endPage = totalP;

		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);

		modelAndView.setViewName("boardList.jsp");

		return modelAndView;
	}
}