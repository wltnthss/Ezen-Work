package resume.controller;

import java.io.File;
import java.io.FileOutputStream;
import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
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
		public ModelAndView write(HttpServletRequest request, HttpServletResponse response, MultipartFile image) throws Exception{
			//Data
			request.setCharacterEncoding("utf-8");
			HttpSession session = request.getSession();
			String filePath = request.getSession().getServletContext().getRealPath("/storage");
			String fileName = image.getOriginalFilename();
			
			// 파일 저장
			File file = new File(filePath, fileName);
			FileCopyUtils.copy(image.getInputStream(), new FileOutputStream(file));
			
			String id = (String) session.getAttribute("memId");
			String title = request.getParameter("title");
			String age = request.getParameter("age");
			String career = request.getParameter("career");
			String achieve = request.getParameter("achieve");
			String loc = request.getParameter("loc");
			
			
			//DB
			ResumeDTO dto = new ResumeDTO();
			dto.setId(id);
			dto.setImage(fileName);
			dto.setTitle(title);
			dto.setAge(age);
			dto.setCareer(career);
			dto.setAchieve(achieve);
			dto.setLoc(loc);
			
			int result = resumeservice.resumeWrite(dto);
			
			//화면 네비게이션
			ModelAndView modelAndView = new ModelAndView();
			modelAndView.setViewName("resumeWriteOk.jsp");
			
			return modelAndView;
		}
}
