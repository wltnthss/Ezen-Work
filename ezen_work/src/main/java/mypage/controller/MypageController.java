package mypage.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;

@Controller
public class MypageController {
	
	@Autowired
	MypageService mypageService;
	
	@RequestMapping(value = "/member/member_mypage/mypageindex.do")
	public ModelAndView modifyForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		// DB
		String id = (String)session.getAttribute("memId");
		String name = request.getParameter("name");
		// 1명 데이터 읽어오기
		MemberDTO dto = mypageService.getMember(id);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.setViewName("mypageindex.jsp");
		System.out.println(id);
		return modelAndView;
	}
}
