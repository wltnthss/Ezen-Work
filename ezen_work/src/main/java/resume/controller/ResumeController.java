package resume.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

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
}
