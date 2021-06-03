package talk.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import job_experience.bean.Job_experienceDTO;
import talk.bean.TalkDTO;

@Controller
public class TalkController {
	@Autowired
	TalkService talkService;
	
	@RequestMapping(value="/admin/admin_talk/talk_write.do")
	public ModelAndView talk_write(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		HttpSession session = request.getSession();
	    String id = (String) session.getAttribute("memId");	
		String talk_subject = request.getParameter("talk_write1");
		
		TalkDTO dto = new TalkDTO();
		dto.setId(id);
		dto.setTalk_subject(talk_subject);
		
		talkService.talk_write(dto);
			    
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }		
		// 목록 : 20개
	    int limit = 20;
	    int endNum = pg*limit; 
	    int startNum = endNum - (limit -1);
	    
	    List<TalkDTO> list = .exp_list(startNum, endNum);	    
	    
	    // 페이징 : 10블럭
	    int totalA = job_experienceService.exp_getTotalA();	    
	    
	    int totalP = (totalA + (limit -1))/ limit;
	    
	    int startPage = (pg-1)/10*10+1;
	    int endPage = startPage + 9;
	    if(endPage > totalP) endPage = totalP;  
	    
	    // 화면 네비게이션 : 데이터 전달 + view처리
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("pg", pg);
	    modelAndView.addObject("list", list);	 
	    modelAndView.addObject("totalP", totalP);
	    modelAndView.addObject("startPage", startPage);
	    modelAndView.addObject("endPage", endPage);
	    
	    modelAndView.setViewName("../admin_exp/exp_main.jsp");
	    
		return modelAndView;	
	}
}
