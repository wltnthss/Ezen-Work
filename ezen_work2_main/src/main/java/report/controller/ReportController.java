package report.controller;

import java.io.UnsupportedEncodingException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


import report.bean.ReportDTO;
import report.dao.ReportDAO;

@Controller
public class ReportController {

	@Autowired
	ReportService reportservice;
	
	@RequestMapping(value = "/report/reportWrite.do")
	public ModelAndView report(HttpServletRequest request, HttpServletResponse response) throws Exception{
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		HttpSession session = request.getSession();
		String id = (String) session.getAttribute("memId");
		String report = request.getParameter("report");
		String comname = request.getParameter("comname");
		String checkContent = request.getParameter("checkContent");
		String content = request.getParameter("content");
		
		
		ReportDTO dto=new ReportDTO();
		dto.setId(id);
		dto.setRe_name(report);
		dto.setRe_report(comname);
		dto.setRe_check(checkContent);
		dto.setRe_content(content);
		
		int result = reportservice.report(dto);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.setViewName("../report/reportWritOk.jsp");
		
		return modelAndView;
	}
	
	@RequestMapping(value = "/report/reportList.do")
	public ModelAndView reportList(HttpServletRequest request, HttpServletResponse response) {		
		
	    int pg = 1;
	    if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
	    
	    int limit = 20;
	    int endNum = pg*limit;
	    int startNum = endNum - (limit -1);
	    
	    
	    List<ReportDTO> list = reportservice.reportList(startNum, endNum);	    
	    
	    int totalA = reportservice.getTotal();
	    int totalP = (totalA + (limit -1))/ limit;
	    
	    int startPage = (pg-1)/10*10+1;
	    int endPage = startPage + 9;
	    if(endPage > totalP) endPage = totalP;  
	    
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("pg", pg);
	    modelAndView.addObject("list", list);
	    modelAndView.addObject("totalP", totalP);
	    modelAndView.addObject("startPage", startPage);
	    modelAndView.addObject("endPage", endPage);
	    
	    modelAndView.setViewName("../report/reportList.jsp");
	    return modelAndView;
	}
	
	@RequestMapping(value = "/report/reportView.do")
	public ModelAndView boardView(HttpServletRequest request, HttpServletResponse response) {
		//�뜲�씠�꽣
		int re_seq = Integer.parseInt(request.getParameter("re_seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		ReportDTO dto = reportservice.reportView(re_seq); 
		
		// �솕硫� �꽕鍮꾧쾶�씠�뀡 : �뜲�씠�꽣 怨듭쑀 + view 泥섎━ �뙆�씪 �꽑�깮
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("re_seq", re_seq);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("dto", dto);
		
		modelAndView.setViewName("../report/reportView.jsp");
		
		return modelAndView;
	}
	@RequestMapping(value = "/report/reportDelete.do")
	public ModelAndView boardDelete(HttpServletRequest request) {
		//�뜲�씠�꽣
		int re_seq = Integer.parseInt(request.getParameter("re_seq"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		int result = reportservice.reportDelete(re_seq);  		
		
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("pg",pg);
		
		
		modelAndView.setViewName("../report/reportDelete.jsp");	
		
		return modelAndView;
	}
}
