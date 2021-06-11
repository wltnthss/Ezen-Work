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
	
	@RequestMapping(value="/admin/admin_talk/talk_list.do")
	public ModelAndView talk_list(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");		
		int click=1;
		if(request.getParameter("click")!= null) {
			click = Integer.parseInt(request.getParameter("click"));
	    }	
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }		
		// 목록 : 20개
	    int limit = 20;
	    int endNum = pg*limit; 
	    int startNum = endNum - (limit -1);
	    
	    List<TalkDTO> list = talkService.talk_list(startNum, endNum);	    
	     
	    // 페이징 : 10블럭
	    int totalA = talkService.talk_getTotalA();	    
	    
	    int totalP = (totalA + (limit -1))/ limit;
	    
	    int startPage = (pg-1)/10*10+1;
	    int endPage = startPage + 9;
	    if(endPage > totalP) endPage = totalP;  
	    
	    // 화면 네비게이션 : 데이터 전달 + view처리
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("click", click);
	    modelAndView.addObject("pg", pg);
	    modelAndView.addObject("list", list);	 
	    modelAndView.addObject("totalP", totalP);
	    modelAndView.addObject("startPage", startPage);
	    modelAndView.addObject("endPage", endPage);
	    
	    modelAndView.setViewName("../admin_talk/talk_main.jsp");
	    
		return modelAndView;	
	}
	
	@RequestMapping(value="/admin/admin_talk/talk_write.do")
	public ModelAndView talk_write(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");		
		
		HttpSession session = request.getSession();
		String id = null;
		if(id != (String) session.getAttribute("amemId")) {
			id = (String) session.getAttribute("amemId");	
		}else if(id != (String) session.getAttribute("memId")) {
			id = (String) session.getAttribute("memId");	
		}else {
			id = (String) session.getAttribute("cmemId");
		}
	    
		String talk_subject = request.getParameter("talk_write1");
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		TalkDTO dto = new TalkDTO();
		dto.setId(id);
		dto.setTalk_subject(talk_subject);
		
		talkService.talk_write(dto);
		ModelAndView modelAndView = new ModelAndView();			
	    modelAndView.addObject("pg",pg);
	    modelAndView.setViewName("../admin_talk/talk_write_ok.jsp");
	    
		return modelAndView;	
	}
	
	@RequestMapping(value="/admin/admin_talk/talk_count.do")
	public ModelAndView talk_count(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");		
		
		HttpSession session = request.getSession();
	    String id = (String) session.getAttribute("amemId");	
	    int pg = Integer.parseInt(request.getParameter("pg"));
	    int click = Integer.parseInt(request.getParameter("click"));
		int talk_count = Integer.parseInt(request.getParameter("count"));	
		int seq = Integer.parseInt(request.getParameter("seq"));
				
		
		ModelAndView modelAndView = new ModelAndView();	
		if(click > 0) {
			modelAndView.addObject("pg",pg);
			modelAndView.setViewName("talk_list.do");			
		}else {
			if(talk_count>0) {
				talkService.talk_good_count(seq);
				modelAndView.addObject("pg",pg);
				modelAndView.addObject("click",click);
							
			}else {
				talkService.talk_bad_count(seq);
				modelAndView.addObject("pg",pg);
				modelAndView.addObject("click",click);				
			}
			
		}	 
		modelAndView.setViewName("../admin_talk/talk_good_ok.jsp");	
		return modelAndView;	
	}
	
	@RequestMapping(value="/admin/admin_talk/talk_del.do")
	public ModelAndView talk_del(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");		
		
		HttpSession session = request.getSession();
	    String id = (String) session.getAttribute("amemId");	
	    int seq = Integer.parseInt(request.getParameter("seq"));
	    
	    int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }	    
				
		talkService.talk_del(seq);
		
		ModelAndView modelAndView = new ModelAndView();			
	    modelAndView.addObject("pg",pg);
	    modelAndView.setViewName("talk_list.do");
	    
		return modelAndView;	
	}
}
