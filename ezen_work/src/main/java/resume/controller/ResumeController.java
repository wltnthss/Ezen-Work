package resume.controller;

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
public class ResumeController {
	
	@Autowired
	ResumeService resumeService;
	
	//이력서등록
		@RequestMapping(value = "/member/member_resume/write.do")
		public ModelAndView write(HttpServletRequest request, HttpServletResponse response) throws Exception{
			
			//Data
			request.setCharacterEncoding("utf-8");
			String title = request.getParameter("title");
			String age = request.getParameter("age");
			String tall = request.getParameter("tall");
			String weight = request.getParameter("weight");
			String career = request.getParameter("career");
			String achieve = request.getParameter("achieve");
			String loc = request.getParameter("loc");
			String logtime = request.getParameter("logtime");
			
			//DB
			String result = resumeService.write(title, age, tall, weight, career, achieve, loc, logtime);
			System.out.println(result);
			
			//화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("writeOk.jsp");
			
			return modelAndView;
		}
		
		//회원 이력서 제목 불러오기
		@RequestMapping(value = "../member/member_resume/modifyForm.do")
		public ModelAndView modifyForm(HttpServletRequest request) {
			HttpSession session = request.getSession();
			// DB
			String title = (String)session.getAttribute("title");
			// 1명 데이터 읽어오기

			ResumeDTO dto = resumeService.getTitle(title);
			System.out.println(dto.getTitle());
			// 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("dto", dto);
			modelAndView.setViewName("modifyForm.jsp");
			return modelAndView;
		}
		//회원 이력서 정보 수정
		@RequestMapping(value = "/member/membder_modify/modify.do")
		public ModelAndView modify(HttpServletRequest request) {
			try {
				request.setCharacterEncoding("utf-8");
			} catch (UnsupportedEncodingException e) {
				e.printStackTrace();
			}
			String title = request.getParameter("title");
			String age = request.getParameter("age");
			String tall = request.getParameter("tall");
			String weight = request.getParameter("weight");
			String career = request.getParameter("career");
			String achieve = request.getParameter("achieve");
			String loc = request.getParameter("loc");

			ResumeDTO dto = new ResumeDTO();
			dto.setTitle(title);
			dto.setAge(age);
			dto.setTall(tall);
			dto.setWeight(weight);
			dto.setCareer(career);
			dto.setAchieve(achieve);	
			dto.setLoc(loc);
			
			int result = resumeService.modify(dto);

			// 화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.addObject("result", result);
			modelAndView.setViewName("modify.jsp");
			return modelAndView;
		}
}
