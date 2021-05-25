package member.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService service;
	
	//회원 회원가입 등록
	@RequestMapping(value = "/member/member_registration/register.do")
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) throws Exception{
		//Data
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String email1 = request.getParameter("email1");
		String email2 = request.getParameter("email2");
		String tel1 = request.getParameter("tel1");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		String addr = request.getParameter("addr");
		
		//DB
		String result = service.register(name, id, pwd, gender, email1, email2, tel1, tel2, tel3, addr);
		System.out.println(result);
		
		//화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("registrationOk.jsp");

		return modelAndView;		
	}
	//회원 아이디 중복검사
	@RequestMapping(value = "/member/member_registration/checkId.do")
	public ModelAndView checkId(HttpServletRequest request) {
		//데이터
		String id = request.getParameter("id");
		//DB
		boolean result = service.isExistId(id);
		//화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id", id);
		modelAndView.addObject("result", result);
		modelAndView.setViewName("checkId.jsp");
		return modelAndView;
	}
}
