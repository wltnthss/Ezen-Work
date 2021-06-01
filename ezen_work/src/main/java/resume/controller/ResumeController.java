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
import member.controller.MemberService;
import resume.bean.ResumeDTO;

@Controller
public class ResumeController {
	
	@Autowired
	ResumeService resumeservice;
	MemberService memberservice;
	
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
			String result = resumeservice.write(title, age, tall, weight, career, achieve, loc, logtime);
			System.out.println(result);
			
			//화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("writeOk.jsp");
			
			return modelAndView;
		}


}
