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

import notice.dao.NoticeDAO;
import notice.bean.NoticeDTO;

@Controller
public class NoticeController {
	@Autowired
	NoticeService noticeService;
	
	// 공지사항 등록
	@RequestMapping(value = "admin/admin_notice/noticeWriteForm.do")
	public ModelAndView NoticeWrite(HttpServletRequest request, HttpServletResponse response) throws Exception {
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}

		// Data
		HttpSession session = request.getSession();
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");		
		String id = (String)session.getAttribute("amemId");
		
		System.out.println(subject);
		System.out.println(content);
		System.out.println(id);
		// DB
		NoticeDTO dto = new NoticeDTO();
		dto.setId(id);
		dto.setSubject(subject);
		dto.setContent(content);
		
		int result = noticeService.noticeWrite(dto);

		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.setViewName("../admin_notice/noticeWriteOK.jsp");
		
		return modelAndView;
	}
	
	// 공지사항 삭제하기
	@RequestMapping(value = "admin/admin_notice/noticeDelete.do")
	public ModelAndView NoticeDelete(HttpServletRequest request, HttpServletResponse response) {
		
		//데이터
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		//NoticeDAO dao = new NoticeDAO();
		int result = noticeService.noticeDelete(seq);
		
		// 화면 네비게이션 : 데이터 공유 + view 처리 파일 선택
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("pg", pg);
		modelAndView.setViewName("../admin_notice/noticeDelete.jsp");
		
		return modelAndView;
	}
	/*
	// 공지사항 수정할 내용 불러오기 
	@RequestMapping(value = "admin/admin_notice/noticeModify.do")
	public ModelAndView noticeModify(HttpServletRequest request, HttpServletResponse response) {
		
		//데이터
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));		
		
		//DB
		//NoticeDAO dao = new NoticeDAO();
		NoticeDTO noticeDTO = new NoticeDTO();		
		
		noticeDTO = noticeService.noticeModify(seq);
		
		// 화면 네이베이션
		ModelAndView modelAndView = new ModelAndView();		
		modelAndView.addObject("noticeDTO",noticeDTO);
		modelAndView.addObject("pg",pg);
		modelAndView.addObject("seq",seq);
		modelAndView.setViewName("../admin_notice/noticeModifyForm.jsp");
		
		return modelAndView;
	}
	
	// 공지사항 내용 수정하기  
	@RequestMapping(value = "admin/admin_notice/noticeModifydo.do")
	public ModelAndView noticeModifydo(HttpServletRequest request, HttpServletResponse response) {
		
		//데이터
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		String subject = request.getParameter("subject");
		String content = request.getParameter("content");
		
		//DB
		//NoticeDAO dao = new NoticeDAO();
		NoticeDTO noticeDTO = new NoticeDTO();	
		noticeDTO.setContent(content);
		noticeDTO.setSubject(subject);
		noticeDTO.setSeq(seq);
		
		int result = noticeService.noticeModifydo(noticeDTO);
		
		// 화면 네이베이션
		ModelAndView modelAndView = new ModelAndView();		
		modelAndView.addObject("result", result);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("seq", seq);
		modelAndView.setViewName("../admin_notice/noticeModify.jsp");
		
		return modelAndView;
		}
	*/
	
	// 공지사항 상세보기
	@RequestMapping(value = "admin/admin_notice/noticeView.do")
	public ModelAndView noticeView(HttpServletRequest request, HttpServletResponse response) {
		
		//데이터
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		//NoticeDAO dao = new NoticeDAO();
		
		// 조회수 증가하기
		noticeService.updateCount(seq);
		NoticeDTO dto = noticeService.noticeView(seq);
		
		// 화면 네비게이션 : 데이터 공유 + view 처리 파일 선택
		ModelAndView modelAndView = new ModelAndView();
		request.setAttribute("seq", seq);
		request.setAttribute("pg", pg);
		request.setAttribute("dto", dto);
		modelAndView.setViewName("../admin_notice/noticeView.jsp");
		
		return modelAndView;
	}
	
	// 공지사항 리스트보기
		@RequestMapping(value = "admin/admin_notice/noticeList.do")
		public ModelAndView NoticeList(HttpServletRequest request, HttpServletResponse response) {
			
			// 데이터 처리
			int pg = 1;
			if (request.getParameter("pg") != null) {
				pg = Integer.parseInt(request.getParameter("pg"));
			}
			// 목록 : 5개
			int limit = 5;
			int endNum = pg * limit; // 1 * 5 = 5
			int startNum = endNum - (limit - 1); // 5 - (5-1) = 1
			
			//NoticeDAO dao = new NoticeDAO();
			List<NoticeDTO> list = noticeService.noticeList(startNum, endNum);
			System.out.println(list.size());

			// 페이징 : 3블럭 
			int totalA = noticeService.getTotalA();
			int totalP = (totalA + (limit - 1)) / limit;

			int startPage = (pg - 1) / 3 * 3 + 1;
			int endPage = startPage + 2;
			if (endPage > totalP)endPage = totalP;

			// 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("pg", pg);
			modelAndView.addObject("list", list);
			modelAndView.addObject("totalP", totalP);
			modelAndView.addObject("startPage", startPage);
			modelAndView.addObject("endPage", endPage);

			modelAndView.setViewName("../admin_notice/noticeList.jsp");

			return modelAndView;
		}
}