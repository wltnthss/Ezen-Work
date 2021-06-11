package member.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.lang.System.Logger;
import java.nio.file.Files;
import java.nio.file.Paths;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.tools.JavaFileManager;

import org.apache.commons.fileupload.UploadContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import company.bean.CompanyDTO;
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
		MemberDTO dto = new MemberDTO();
		dto.setName(name);
		dto.setId(id);
		dto.setPwd(pwd);
		dto.setGender(gender);
		dto.setEmail(email);
		dto.setTel(tel);
		dto.setAddr(addr);
		int result = memberservice.register(dto);
		
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
	@RequestMapping(value = "/login/login.do")
	public ModelAndView login(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		HttpSession session = request.getSession();
		ModelAndView modelAndView = new ModelAndView();
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		//Data
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		int select = Integer.parseInt(request.getParameter("login"));
		
		//DB
		if(select == 0) {
			String name = memberservice.login(id, pwd);
			
			if(name != null) {
				session.setAttribute("memId", id);
				session.setAttribute("memName", name);
				modelAndView.addObject("select", select);
				modelAndView.setViewName("../login/loginOk.jsp");
			} else {
				modelAndView.setViewName("loginFail.jsp");
			}			
		} else {
			String name = memberservice.company_login(id, pwd);
					
			
			if(name != null) {
				String cname = memberservice.getCmember(id);
				session.setAttribute("cmemId", id);
				session.setAttribute("cmemName", cname);				
				String idc = (String) session.getAttribute("cmemId");
				String idc1 = (String) session.getAttribute("cmemName");

				modelAndView.addObject("select", select);
				modelAndView.setViewName("../login/loginOk.jsp");
			} else {
				modelAndView.setViewName("loginFail.jsp");
			}				
		}
		//화면 네비게이션		
		return modelAndView;
	}
	
	//회원 로그아웃
	@RequestMapping(value="/login/logout.do")
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
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
		int limit = 90;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
	    
		// DB
		String id = (String)session.getAttribute("memId");
		// 1명 데이터 읽어오기
		MemberDTO dto = memberservice.getMember(id);
		List<ResumeDTO> list = memberservice.resumeList(startNum, endNum);
		
		// 페이징
		int totalA = memberservice.getTotalA(id);
	    int totalP = (totalA + (limit -1))/ limit;
	    
		int startPage = (pg-1)/3*3+1;
	    int endPage = startPage + 2;
	    if(endPage > totalP) endPage = totalP; 
	    
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("id1", id);
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.setViewName("mypageindex.jsp");
		return modelAndView;		
	}
	//마이페이지 데이터 읽어오기
	@RequestMapping(value = "/member/member_resume/resumeManageForm.do")
	public ModelAndView manageform(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
		int limit = 5;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
	    
		// DB
		String id = (String)session.getAttribute("memId");
		// 1명 데이터 읽어오기
		MemberDTO dto = memberservice.getMember(id);
		List<ResumeDTO> list = memberservice.resumeList(startNum, endNum);
		
		// 페이징
		int totalA = memberservice.getTotalA(id);
	    int totalP = (totalA + (limit -1))/ limit;
	    
		int startPage = (pg-1)/3*3+1;
	    int endPage = startPage + 2;
	    if(endPage > totalP) endPage = totalP; 
	    
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.setViewName("resumeManageForm.jsp");
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
	//이력서 수정 및 삭제 View
	@RequestMapping(value = "/member/member_resume/resumeViewForm.do")
	public ModelAndView resumeviewform(HttpServletRequest request) {
		HttpSession session = request.getSession();

		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }

		// DB
		String id = (String)session.getAttribute("memId");
		// 1명 데이터 읽어오기
		MemberDTO dto = memberservice.getMember(id);
		ResumeDTO dto1 = memberservice.resumeView(seq);
	    
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("dto1", dto1);
		modelAndView.setViewName("resumeViewForm.jsp");
		return modelAndView;		
	}
	//이력서 삭제 완료
	@RequestMapping(value = "/member/member_resume/resumeDeleteOk.do") //HandlerMapping 클래스 실행
	public ModelAndView resumeDelete(HttpServletRequest request, HttpServletResponse response) {
		//데이터
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		int result = memberservice.resumeDelete(seq); 
		
		// 화면 네비게이션 : 데이터 공유 + view 처리 파일 선택
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("pg", pg);
		
		modelAndView.setViewName("resumeDeleteOk.jsp");
		return modelAndView;
	}
	@RequestMapping(value = "/member/member_resume/resumeModifyForm.do")
	public ModelAndView resumeModifyForm(HttpServletRequest request) {
		HttpSession session = request.getSession();
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));

		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		// DB
		String id = (String)session.getAttribute("memId");
		// 1명 데이터 읽어오기
		MemberDTO dto = memberservice.getMember(id);
		ResumeDTO dto2 = memberservice.getResume2(seq);
		
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("dto2", dto2);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("pg", pg);
		modelAndView.setViewName("resumeModifyForm.jsp");
		return modelAndView;
	}
	//이력서 수정 완료
	@RequestMapping(value = "/member/member_resume/resumeModify.do")
	public ModelAndView resumeModify(HttpServletRequest request, HttpServletResponse response, MultipartFile image) throws Exception {
		String filePath = request.getSession().getServletContext().getRealPath("/storage");
		String fileName = image.getOriginalFilename();
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		// 파일 복사 : 파일 저장
		File file = new File(filePath, fileName);
		try {
			FileCopyUtils.copy(image.getInputStream(), new FileOutputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		//데이터
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}	
		
		HttpSession session = request.getSession();

		String title = request.getParameter("title");
		String achieve = request.getParameter("achieve");
		String career = request.getParameter("career");
		String loc = request.getParameter("loc");
		String age = request.getParameter("age");
		
		
		ResumeDTO dto = new ResumeDTO();
		dto.setSeq(seq);
		dto.setImage(fileName);
		dto.setTitle(title);
		dto.setAchieve(achieve);
		dto.setCareer(career);
		dto.setLoc(loc);
		dto.setAge(age);
		
		int result = memberservice.resumeModify(dto);
		
		// 화면 네비게이션 : 데이터 공유 + view 처리 파일 선택
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("pg", pg);
		modelAndView.setViewName("resumeModify.jsp");
		return modelAndView;
	}
		//회원 아이디 찾기
		@RequestMapping(value="/login/find_id.do")
		public ModelAndView find_id(HttpServletRequest request,HttpServletResponse response) throws Exception{
					
			HttpSession session = request.getSession();
			
			String find_name = request.getParameter("find_name");
			String find_email = request.getParameter("find_email");
			
			System.out.println(find_name);
			System.out.println(find_email);		
			
			String id = memberservice.findId(find_name, find_email);

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
}
