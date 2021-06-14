package job_experience.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import admin.controller.AdminService;
import job_exp_reply.bean.Job_exp_replyDTO;
import job_experience.bean.Job_experienceDTO;

@Controller
public class Job_experienceController {
	@Autowired
	Job_experienceService job_experienceService;
	
	@RequestMapping(value="/admin/admin_exp/job_experience_main.do")
	public ModelAndView exp_list(HttpServletRequest request,HttpServletResponse response) throws Exception{
		//HttpSession session = request.getSession();
	    //String id = (String) session.getAttribute("amemId");    
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }		
		// 紐⑸줉 : 20媛�
	    int limit = 20;
	    int endNum = pg*limit; 
	    int startNum = endNum - (limit -1);
	    
	    List<Job_experienceDTO> list = job_experienceService.exp_list(startNum, endNum);	    
	    
	    // �럹�씠吏� : 10釉붾윮
	    int totalA = job_experienceService.exp_getTotalA();	    
	    
	    int totalP = (totalA + (limit -1))/ limit;
	    
	    int startPage = (pg-1)/10*10+1;
	    int endPage = startPage + 9;
	    if(endPage > totalP) endPage = totalP;  
	    
	    // �솕硫� �꽕鍮꾧쾶�씠�뀡 : �뜲�씠�꽣 �쟾�떖 + view泥섎━
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("pg", pg);
	    modelAndView.addObject("list", list);	 
	    modelAndView.addObject("totalP", totalP);
	    modelAndView.addObject("startPage", startPage);
	    modelAndView.addObject("endPage", endPage);	    
	    modelAndView.setViewName("../admin_exp/exp_main.jsp");	 
		return modelAndView;	
	}
	
	@RequestMapping(value="/admin/admin_exp/job_experience_search.do")
	public ModelAndView exp_search(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");		
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }	
		
		ModelAndView modelAndView = new ModelAndView();	
		List<Job_experienceDTO> list;
		
		//Data		
		String search = request.getParameter("top_subject");
		
		if(search != "") {
		//DB
			int totalA = job_experienceService.exp_search_total(search);		
			list = job_experienceService.exp_search(search);		
					    	
			modelAndView.addObject("list", list);
			modelAndView.addObject("pg", pg);
			modelAndView.addObject("totalA", totalA);					
			modelAndView.setViewName("../admin_exp/exp_main.jsp");
			
			return modelAndView;
		}else {
			int limit = 20;
		    int endNum = pg*limit; 
		    int startNum = endNum - (limit -1);
			list = job_experienceService.exp_list(startNum, endNum);
			
			int totalA = job_experienceService.exp_getTotalA();
		    int totalP = (totalA + (limit -1))/ limit;
		    
		    int startPage = (pg-1)/10*10+1;
		    int endPage = startPage + 9;
		    if(endPage > totalP) endPage = totalP;  
		    
		    // �솕硫� �꽕鍮꾧쾶�씠�뀡 : �뜲�씠�꽣 �쟾�떖 + view泥섎━		   
		    modelAndView.addObject("pg", pg);
		    modelAndView.addObject("list", list);
		    modelAndView.addObject("totalP", totalP);
		    modelAndView.addObject("startPage", startPage);
		    modelAndView.addObject("endPage", endPage);		    
		    modelAndView.setViewName("../admin_exp/exp_main.jsp");
		    
			return modelAndView;			
		}
	}	
		
	@RequestMapping(value="/admin/admin_exp/job_experience_write.do")
	public ModelAndView exp_write(HttpServletRequest request,HttpServletResponse response, MultipartFile exp_image) throws Exception{
		
		HttpSession session = request.getSession();
		
		//Data		
		String id = null;
		if((String)session.getAttribute("memId") != null) {
			id = (String) session.getAttribute("memId");
		}else if((String) session.getAttribute("amemId") != null){
			id = (String) session.getAttribute("amemId");
		}
		
		String filePath = request.getSession().getServletContext().getRealPath("/storage");
		String fileName = exp_image.getOriginalFilename();
		
		// �뙆�씪 蹂듭궗 : �뙆�씪 ���옣
		File file = new File(filePath, fileName);
		try {
			FileCopyUtils.copy(exp_image.getInputStream(), new FileOutputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Job_experienceDTO dto = new Job_experienceDTO();
		dto.setId(id);
		dto.setExp_subject(request.getParameter("exp_subject"));
		dto.setExp_content(request.getParameter("exp_content"));
		dto.setExp_image(fileName);
		
		//DB
		int result = job_experienceService.exp_write(dto);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result",result);
		modelAndView.setViewName("../admin_exp/exp_write_ok.jsp");			
		
		return modelAndView;			
	}
	
	@RequestMapping(value="/admin/admin_exp/job_experience_view.do")
	public ModelAndView exp_view(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		ModelAndView modelAndView = new ModelAndView();	
		Job_experienceDTO dto = new Job_experienceDTO();	
		
		//Data	
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		dto = job_experienceService.exp_view(seq);
		job_experienceService.exp_hit(seq);
		
		List<Job_exp_replyDTO> list = job_experienceService.exp_reply_list(seq); 
		
		modelAndView.addObject("list", list);						
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("pg", pg);
		modelAndView.setViewName("../admin_exp/exp_view.jsp");	
		
		return modelAndView;		
	}
	
	@RequestMapping(value="/admin/admin_exp/job_experience_view_reply.do")
	public ModelAndView job_experience_view_reply(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		ModelAndView modelAndView = new ModelAndView();	
		Job_experienceDTO dto = new Job_experienceDTO();	
		
		//Data	
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		dto = job_experienceService.exp_view(seq);		
		
		List<Job_exp_replyDTO> list = job_experienceService.exp_reply_list(seq); 
		
		modelAndView.addObject("list", list);						
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("pg", pg);
		modelAndView.setViewName("../admin_exp/exp_view.jsp");	
		
		return modelAndView;		
	}
	
	@RequestMapping(value="/admin/admin_exp/job_experience_modifyForm.do")
	public ModelAndView exp_modifyForm(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		ModelAndView modelAndView = new ModelAndView();	
		Job_experienceDTO dto = new Job_experienceDTO();
				
		//Data	
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		dto = job_experienceService.exp_view(seq);		
								
		modelAndView.addObject("dto", dto);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("pg", pg);
		modelAndView.setViewName("../admin_exp/exp_modifyForm.jsp");	
		
		return modelAndView;		
	}
	
	@RequestMapping(value="/admin/admin_exp/job_experience_modify.do")
	public ModelAndView exp_modify(HttpServletRequest request,HttpServletResponse response, MultipartFile exp_image) throws Exception{
		
		HttpSession session = request.getSession();
		
		//Data		
		String id = (String) session.getAttribute("memId");		
		String filePath = request.getSession().getServletContext().getRealPath("/storage");
		String fileName = exp_image.getOriginalFilename();
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		// �뙆�씪 蹂듭궗 : �뙆�씪 ���옣
		File file = new File(filePath, fileName);
		try {
			FileCopyUtils.copy(exp_image.getInputStream(), new FileOutputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		
		Job_experienceDTO dto = new Job_experienceDTO();
		dto.setId(id);
		dto.setExp_subject(request.getParameter("exp_subject"));
		dto.setExp_content(request.getParameter("exp_content"));
		dto.setExp_image(fileName);
		dto.setExp_seq(seq);
		
		//DB
		int result = job_experienceService.exp_modify(dto);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result",result);
		modelAndView.addObject("pg",pg);
		modelAndView.setViewName("../admin_exp/exp_modify_ok.jsp");			
		
		return modelAndView;			
	}
	
	@RequestMapping(value="/admin/admin_exp/job_experience_del.do")
	public ModelAndView exp_del(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");
		ModelAndView modelAndView = new ModelAndView();			
				
		//Data	
		int seq = Integer.parseInt(request.getParameter("seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		int result = job_experienceService.exp_del(seq);		
		job_experienceService.exp_reply_del(seq);
		
		modelAndView.addObject("result", result);
		modelAndView.addObject("seq", seq);
		modelAndView.addObject("pg", pg);
		modelAndView.setViewName("../admin_exp/exp_del_ok.jsp");	
		
		return modelAndView;		
	}
	
}
