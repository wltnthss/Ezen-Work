package report.controller;

import java.io.UnsupportedEncodingException;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import report.bean.ReportDTO;

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
		//String id = (String) session.getAttribute("memId");
		
		String report = request.getParameter("report");
		String comname = request.getParameter("comname");
		String checkContent = request.getParameter("checkContent");
		String content = request.getParameter("content");
		
		String id = "id";
		ReportDTO dto=new ReportDTO();
		dto.setId(id);
		dto.setRe_name(report);
		dto.setRe_report(comname);
		dto.setRe_check(checkContent);
		dto.setRe_content(content);
		
		int resert = reportservice.report(dto);
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", resert);
		modelAndView.setViewName("reportWritOk.jsp");
		
		return modelAndView;
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
