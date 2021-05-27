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
	MemberService memberservice;
	
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
		String result = memberservice.register(name, id, pwd, gender, email1, email2, tel1, tel2, tel3, addr);
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
		boolean result = memberservice.isExistId(id);
		//화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id", id);
		modelAndView.addObject("result", result);
		modelAndView.setViewName("checkId.jsp");
		return modelAndView;
	}
	//회원 로그인
	@RequestMapping(value = "/member/member_login/login.do")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception{
		//Data
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		//DB
		String name = memberservice.login(id, pwd);
		//화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
		
		if(name != null) {
			session.setAttribute("memId", id);
			session.setAttribute("memName", name);
			
			modelAndView.setViewName("../member_main/index.jsp");
		} else {
			modelAndView.setViewName("loginFail.jsp");
		}
		return modelAndView;
	}
	//회원 로그아웃
	@RequestMapping(value="/member/member_login/logout.do")
	public ModelAndView logout(HttpServletRequest request,HttpServletResponse response) throws Exception{
				
		HttpSession session = request.getSession();
			
		// 세션 삭제
		session.removeAttribute("memId");
		session.removeAttribute("memName");
		
		// 모든 세션 삭제하기 : 무효화
		session.invalidate();
		
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("../member_login/logout.jsp");
		return modelAndView;				
	}
}
