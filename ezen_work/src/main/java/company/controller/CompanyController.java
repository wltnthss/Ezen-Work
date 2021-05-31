package company.controller;


import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import company.bean.CompanyDTO;
import member.bean.MemberDTO;

@Controller
public class CompanyController {
	@Autowired
	CompanyService memberService;
	
	@RequestMapping(value = "/company/regist/memberWrite.do")
	public ModelAndView memberWrite(HttpServletRequest request, HttpServletResponse response) {
		//데이터
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String cname = request.getParameter("cname");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		int bnumber1 = Integer.parseInt(request.getParameter("bnumber1"));
		int bnumber2 = Integer.parseInt(request.getParameter("bnumber2"));
		int bnumber3 = Integer.parseInt(request.getParameter("bnumber3"));
		String email = request.getParameter("email");
		String email2 = request.getParameter("email2");
		String tel = request.getParameter("tel");
		String tel2 = request.getParameter("tel2");
		String tel3 = request.getParameter("tel3");
		
		//DB
		CompanyDTO dto = new CompanyDTO();
		dto.setCname(cname);
		dto.setId(id);
		dto.setPw(pw);
		dto.setBnumber1(bnumber1);
		dto.setBnumber2(bnumber2);
		dto.setBnumber3(bnumber3);
		dto.setEmail(email);
		dto.setEmail2(email2);
		dto.setTel(tel);
		dto.setTel2(tel2);
		dto.setTel3(tel3);
		
		int result = memberService.memberWrite(dto);
		
		// 화면 네비게이션 : 데이터 공유 + view 처리 파일 선택
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.setViewName("memberWrite.jsp");
						
		return modelAndView;
	}
	
	//회원 아이디 중복검사
		@RequestMapping(value = "/company/regist/checkId.do")
		public ModelAndView checkId(HttpServletRequest request) {
			//데이터
			String id = request.getParameter("id");
			//DB
			boolean result = memberService.isExistId(id);
			//화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("id", id);
			modelAndView.addObject("result", result);
			modelAndView.setViewName("checkId.jsp");
			return modelAndView;
	}
		@RequestMapping(value = "/company/login/login.do")
		public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception{
			// 데이터
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			
			// DB
			String name = memberService.login(id, pw);
			CompanyDTO dto = memberService.getMember(id);
			String cname = dto.getCname();
			
			// 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			HttpSession session = request.getSession();
			// 화면이동
			if(name != null) {
				// 세션에 공유 데이터 저장
				session.setAttribute("memName", name);
				session.setAttribute("memId", id);
				session.setAttribute("cname", cname);
				
				modelAndView.setViewName("../main/index.jsp");
			} else {
				
				modelAndView.setViewName("loginFail.jsp");
			}
			return modelAndView;
		}
		
		@RequestMapping(value = "/company/login/logout.do")
		public ModelAndView logout(HttpServletRequest request) {
			HttpSession session = request.getSession();
			// 세션 삭제
			session.removeAttribute("memName");
			session.removeAttribute("memId");
			// 모든 세션 삭제하기 : 무효화
			session.invalidate();
			// 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("../login/logout.jsp");
			return modelAndView;
		}
		//수정(데이터 읽어오기)
		@RequestMapping(value = "/company/regist/memberModify1.do")
		public ModelAndView memberModify(HttpServletRequest request) {
		
			HttpSession session = request.getSession();
			// DB
			String id = (String)session.getAttribute("memId");
			// 1명 데이터 읽어오기
			CompanyDTO dto = memberService.getMember(id);

			dto.setCname(dto.getCname());
			dto.setId(dto.getId());
			dto.setPw(dto.getPw());
			dto.setBnumber1(dto.getBnumber1());
			dto.setBnumber2(dto.getBnumber2());
			dto.setBnumber3(dto.getBnumber3());
			dto.setEmail(dto.getEmail());
			dto.setEmail2(dto.getEmail2());
			dto.setTel(dto.getTel());
			dto.setTel2(dto.getTel2());
			dto.setTel3(dto.getTel3());
			
			// 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("dto", dto);
			modelAndView.setViewName("memberModifyForm.jsp");
			return modelAndView;
		}
		//수정
		@RequestMapping(value = "/company/regist/memberModify.do")
		public ModelAndView modify(HttpServletRequest request) {
			try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			String cname = request.getParameter("cname");
			String id = request.getParameter("id");
			String pw = request.getParameter("pw");
			int bnumber1 = Integer.parseInt(request.getParameter("bnumber1"));
			int bnumber2 = Integer.parseInt(request.getParameter("bnumber2"));
			int bnumber3 = Integer.parseInt(request.getParameter("bnumber3"));
			String email = request.getParameter("email");
			String email2 = request.getParameter("email2");
			String tel = request.getParameter("tel");
			String tel2 = request.getParameter("tel2");
			String tel3 = request.getParameter("tel3");
			
			//DB
			CompanyDTO dto = new CompanyDTO();
			dto.setCname(cname);
			dto.setId(id);
			dto.setPw(pw);
			dto.setBnumber1(bnumber1);
			dto.setBnumber2(bnumber2);
			dto.setBnumber3(bnumber3);
			dto.setEmail(email);
			dto.setEmail2(email2);
			dto.setTel(tel);
			dto.setTel2(tel2);
			dto.setTel3(tel3);
			
			int result = memberService.memberModify(dto);
			
			// 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("result", result);
			modelAndView.setViewName("memberModify.jsp");
			return modelAndView;
		}
		//삭제창
		@RequestMapping(value = "/company/regist/deleteForm.do")
		public String deleteForm() {
			return "deleteForm.jsp";
		}
		//삭제
		@RequestMapping(value = "/company/regist/delete.do")
		public ModelAndView delete(HttpServletRequest request) {
			HttpSession session = request.getSession();
			String user_id = (String)session.getAttribute("memId");

			int result = memberService.delete(user_id);
			if(result>0){
				// 세션 삭제
				session.removeAttribute("memName");
				session.removeAttribute("memId");
				// 모든 세션 삭제하기 : 무효화
				session.invalidate();
			}
			
			// 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("result", result);
			modelAndView.setViewName("delete.jsp");
			return modelAndView;
		}
		
}
