package member.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import member.bean.MemberDTO;
import resume.bean.ResumeDTO;

@Controller
public class MemberController {
	
	@Autowired
	MemberService memberservice;
	
	//회원 회원가입 등록
	@RequestMapping(value = "/member/member_registration/register.do")
	public ModelAndView register(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		//Data
		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		String gender = request.getParameter("gender");
		String email = request.getParameter("email");                        
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");
		
		//DB
		String result = memberservice.register(name, id, pwd, gender, email, tel, addr);
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
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
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
		modelAndView.setViewName("logout.jsp");
		return modelAndView;				
	}
	//회원 수정폼 데이터 가져오기
	@RequestMapping(value = "/member/member_modify/memberModifyForm.do")
	public ModelAndView modifyForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		// DB
		String id = (String)session.getAttribute("memId");
		// 1명 데이터 읽어오기
		MemberDTO dto = memberservice.getMember(id);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.setViewName("memberModifyForm.jsp");
		return modelAndView;
	}
	//회원 수정
	@RequestMapping(value = "/member/member_modify/modify.do")
	public ModelAndView modify(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		String name = request.getParameter("name");
		//String id = request.getParameter("id");
		String id = (String) session.getAttribute("memId");
		String pwd = request.getParameter("pwd");
		String email = request.getParameter("email");
		String tel = request.getParameter("tel");
		String addr = request.getParameter("addr");
		String gender = request.getParameter("gender");

		MemberDTO dto = new MemberDTO();
		dto.setName(name);
		dto.setId(id);
		dto.setPwd(pwd);
		dto.setEmail(email);
		dto.setTel(tel);
		dto.setAddr(addr);
		dto.setGender(gender);
		
		int result = memberservice.modify(dto);
		System.out.println(result);
		
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.setViewName("memberModifyOk.jsp");
		return modelAndView;
	}
	//마이페이지 데이터 읽어오기
	@RequestMapping(value = "/member/member_mypage/mypageindex.do")
	public ModelAndView mypageform(HttpServletRequest request) {
		HttpSession session = request.getSession();
		// DB
		String id = (String)session.getAttribute("memId");
		// 1명 데이터 읽어오기
		MemberDTO dto = memberservice.getMember(id);
		ResumeDTO dto1 = memberservice.getResume(id);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("dto1", dto1);
		modelAndView.setViewName("mypageindex.jsp");
		System.out.println(id);
		return modelAndView;		
	}
	
	//이력서 등록 데이터 가져오기
	@RequestMapping(value = "/member/member_resume/resumeWriteForm.do")
	public ModelAndView writeForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		// DB
		String id = (String)session.getAttribute("memId");
		// 1명 데이터 읽어오기
		MemberDTO dto = memberservice.getMember(id);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.setViewName("resumeWriteForm.jsp");
		return modelAndView;
	}
}
