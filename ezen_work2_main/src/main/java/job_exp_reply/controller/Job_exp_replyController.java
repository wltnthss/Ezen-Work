package job_exp_reply.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import job_exp_reply.bean.Job_exp_replyDTO;
import job_experience.bean.Job_experienceDTO;

@Controller
public class Job_exp_replyController {	
	@Autowired
	Job_exp_replyService job_exp_replyService;
	
	@RequestMapping(value="/admin/admin_exp/exp_reply.do")
	public ModelAndView exp_reply_write(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		HttpSession session = request.getSession();
		
		String id = null;
		if((String)session.getAttribute("memId") != null) {
			id = (String) session.getAttribute("memId");
		}else if((String) session.getAttribute("amemId") != null){
			id = (String) session.getAttribute("amemId");
		}else if((String) session.getAttribute("cmemId") != null) {
			id = (String) session.getAttribute("cmemId");
		}		
		
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		String exp_reply_content = request.getParameter("reply_content");
				
		Job_exp_replyDTO dto1 = new Job_exp_replyDTO();
		dto1.setId(id);
		dto1.setExp_seq(seq);
		dto1.setExp_reply_content(exp_reply_content);
				
		int result = job_exp_replyService.exp_reply_write(dto1);
		
		Job_experienceDTO dto = new Job_experienceDTO();
		
		int result1 = job_exp_replyService.exp_reply_count(seq);
		
		
	    // �솕硫� �꽕鍮꾧쾶�씠�뀡 : �뜲�씠�꽣 �쟾�떖 + view泥섎━		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result",result);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("pg",pg);
		modelAndView.setViewName("exp_reply_ok.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value="/admin/admin_exp/exp_reply_del.do")
	public ModelAndView exp_reply_del(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");			
		
		int exp_reply_seq = Integer.parseInt(request.getParameter("exp_reply_seq"));
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
						
		int result = job_exp_replyService.exp_reply_del(exp_reply_seq);
		job_exp_replyService.exp_reply_minus(seq);
		
	    // �솕硫� �꽕鍮꾧쾶�씠�뀡 : �뜲�씠�꽣 �쟾�떖 + view泥섎━		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result",result);
		modelAndView.addObject("seq",seq);
		modelAndView.addObject("pg",pg);
		modelAndView.setViewName("exp_reply_del.jsp");
		
		return modelAndView;
	}
	
		
	
}
