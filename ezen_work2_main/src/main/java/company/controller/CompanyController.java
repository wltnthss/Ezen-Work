package company.controller;


import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import company.bean.CompanyDTO;
import mainForm.bean.MainFormDTO;
import member.bean.MemberDTO;
import resume.bean.ResumeDTO;

@Controller
public class CompanyController {
	@Autowired
	CompanyService memberService;
	
	@RequestMapping(value = "/company/regist/memberWrite.do")
	public ModelAndView memberWrite(HttpServletRequest request, HttpServletResponse response) {
		
		ModelAndView modelAndView = new ModelAndView();		
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
		
		boolean result_id = memberService.isExistId(id);
		
		if(result_id) {
			modelAndView.setViewName("company_enroll_error.jsp");			
		}else {			
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
			modelAndView.addObject("result", result);
			modelAndView.setViewName("memberWrite.jsp");
		}
						
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
				session.setAttribute("cmemName", name);
				session.setAttribute("cmemId", id);
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
			session.removeAttribute("cmemName");
			session.removeAttribute("cmemId");
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
			String id = (String)session.getAttribute("cmemId");
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
			HttpSession session = request.getSession();
			
			try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			String id = (String) session.getAttribute("cmemId");
			String pw = request.getParameter("pw");
			String cname = (String) session.getAttribute("cmemName");
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
			dto.setId(id);
			dto.setPw(pw);
			dto.setCname(cname);
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
		//마이페이지 데이터 읽어오기
		@RequestMapping(value = "/company/mypage/mypageForm.do")
		public ModelAndView mypageform(HttpServletRequest request) {
			HttpSession session = request.getSession();
					
			int pg = 1;
			if(request.getParameter("pg")!= null) {
				pg = Integer.parseInt(request.getParameter("pg"));
			}
			int limit = 5;
			int endNum = pg*limit;  // 1 * 5 = 5
			int startNum = endNum - (limit -1); // 5 - (5-1) = 1
				    
			// DB
			String id = (String)session.getAttribute("cmemId");
			String cname = (String)session.getAttribute("cmemName");
			
			// 1명 데이터 읽어오기
			CompanyDTO dto = memberService.getMember(id);
			List<MainFormDTO> list = memberService.resumeList(cname);
			
			// 페이징
			int totalA = memberService.getTotalA(id);
		    int totalP = (totalA + (limit -1))/ limit;
		    
			int startPage = (pg-1)/3*3+1;
		    int endPage = startPage + 2;
		    if(endPage > totalP) endPage = totalP; 
		    
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("dto", dto);
			modelAndView.addObject("pg", pg);
			modelAndView.addObject("list", list);
			modelAndView.addObject("totalP", totalP);
			modelAndView.addObject("startPage", startPage);
			modelAndView.addObject("endPage", endPage);
			modelAndView.setViewName("mypageForm.jsp");
			return modelAndView;		
		}
		@RequestMapping(value = "/company/mypage/resumeView.do")
		public ModelAndView boardView(HttpServletRequest request, HttpServletResponse response) {
			//데이터
			int seq = Integer.parseInt(request.getParameter("seq"));
			int pg = Integer.parseInt(request.getParameter("pg"));
			
			//DB	
			// 조회수 증가하기		
			memberService.updateHit(seq);
			MainFormDTO dto = memberService.resumeView(seq);
			String id = dto.getId();
			MemberDTO dto1 = memberService.getMember1(id);
			
			// 화면 네비게이션 : 데이터 공유 + view 처리 파일 선택
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("seq", seq);
			modelAndView.addObject("pg", pg);
			modelAndView.addObject("dto", dto);	
			modelAndView.addObject("dto1", dto1);	
			modelAndView.setViewName("resumeView.jsp");
			
			return modelAndView;
		}
		//기업 아이디 찾기
		@RequestMapping(value="/login/find_id1.do")
		public ModelAndView find_id(HttpServletRequest request,HttpServletResponse response) throws Exception{
			try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
									
			HttpSession session = request.getSession();
							
			String find_cname = request.getParameter("find_cname");
			String find_email = request.getParameter("find_email");
							
			System.out.println(find_cname);
			System.out.println(find_email);		
							
			String id = memberService.findId(find_cname, find_email);

			// 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			if(id != null) {
				modelAndView.setViewName("loginFindOk.jsp");	
			} else {
				modelAndView.setViewName("loginFindFail.jsp");
			}
							
			modelAndView.addObject("id", id);
			return modelAndView;				
		}
		@RequestMapping(value = "/login/loginPwdFind1.do")
		public ModelAndView find_pwd(HttpServletRequest request, HttpServletResponse response) throws Exception {

			HttpSession session = request.getSession();
			
			try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			
			String find_id = request.getParameter("find_id");
			String find_cname = request.getParameter("find_cname");
			String find_email = request.getParameter("find_email");

			System.out.println(find_id);
			System.out.println(find_cname);
			System.out.println(find_email);

			String pwd = memberService.findPwd(find_id, find_cname, find_email);

			// �솕硫� �꽕鍮꾧쾶�씠�뀡
			ModelAndView modelAndView = new ModelAndView();
			if (pwd != null) {
				modelAndView.setViewName("loginPwdFindOk.jsp");
			} else {
				modelAndView.setViewName("loginPwdFindFail.jsp");
			}

			modelAndView.addObject("pwd", pwd);
			return modelAndView;
		}
}
