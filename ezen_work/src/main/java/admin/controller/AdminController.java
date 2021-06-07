package admin.controller;

import java.io.PrintWriter;
import java.lang.ProcessBuilder.Redirect;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.AdminDTO;
import advertise.bean.AdvertiseDTO;
import company.bean.CompanyDTO;
import member.bean.MemberDTO;

@Controller
public class AdminController {
	
	@Autowired
	AdminService adminService;
		
	@RequestMapping(value="/admin/admin_login/login.do")
	public ModelAndView login(HttpServletRequest request,HttpServletResponse response) throws Exception{
		//Data
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		//DB
		String name = adminService.login(id,pwd);
				
		
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
						
		if(name != null) {
			session.setAttribute("amemId", id);
			session.setAttribute("amemName", name);
					
			modelAndView.setViewName("../admin_main/admin_main.jsp");
		}else {
			modelAndView.setViewName("loginFail.jsp");			
		}
		return modelAndView;		
	}
	
	@RequestMapping(value="/admin/admin_login/logout.do")
	public ModelAndView logout(HttpServletRequest request,HttpServletResponse response) throws Exception{
				
		HttpSession session = request.getSession();
			
		// 세션 삭제
		session.removeAttribute("amemId");
		session.removeAttribute("amemName");
		
		// 모든 세션 삭제하기 : 무효화
		session.invalidate();
		
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("../admin_login/logout.jsp");
		return modelAndView;				
	}
	
	@RequestMapping(value="/admin/admin_login/user_list.do")
	public ModelAndView user_list(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
		int limit = 19;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
		
	    List<MemberDTO> list = adminService.user_list(startNum, endNum);
	    int totalA = adminService.getTotal_user();	
	    
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
		modelAndView.setViewName("../admin_user/admin_user.jsp");
				
		return modelAndView;					
	}
	
	@RequestMapping(value="/admin/admin_login/search_user_list.do")
	public ModelAndView search_user_list(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");		
		
		String top_subject = request.getParameter("top_subject");		
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
		int limit = 19;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
		
	    List<MemberDTO> list = adminService.search_user_list(startNum, endNum,top_subject);
	    int totalA = adminService.search_user_listT(top_subject);	
	    
	    int totalP = (totalA + (limit -1))/ limit;	    
		int startPage = (pg-1)/10*10+1;
	    int endPage = startPage + 9;
	    if(endPage > totalP) endPage = totalP; 
		
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("top_subject",top_subject);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.setViewName("../admin_user/admin_user.jsp");
				
		return modelAndView;					
	}
	
	@RequestMapping(value="/admin/admin_login/user_delete.do")
	public ModelAndView user_delete(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");		
		
		String id = request.getParameter("id");		
		int pg =  Integer.parseInt(request.getParameter("pg"));
		int result = adminService.user_delete(id);
		
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg",pg);
		modelAndView.addObject("result",result);
		modelAndView.setViewName("../admin_user/admin_user_delete_ok.jsp");
		return modelAndView;				
	}
	
	@RequestMapping(value="/admin/admin_login/company_list.do")
	public ModelAndView company_list(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
		int limit = 19;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
		
	    List<CompanyDTO> list = adminService.company_list(startNum, endNum);
	    int totalA = adminService.getTotal_company();	
	    
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
		modelAndView.setViewName("../admin_company/admin_company.jsp");
				
		return modelAndView;					
	}
	
	@RequestMapping(value="/admin/admin_login/search_company_list.do")
	public ModelAndView search_company_list(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");		
		
		String top_subject = request.getParameter("top_subject");		
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
		int limit = 19;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
		
	    List<CompanyDTO> list = adminService.search_company_list(startNum, endNum,top_subject);
	    int totalA = adminService.search_company_listT(top_subject);	
	    
	    int totalP = (totalA + (limit -1))/ limit;	    
		int startPage = (pg-1)/10*10+1;
	    int endPage = startPage + 9;
	    if(endPage > totalP) endPage = totalP; 
		
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("top_subject",top_subject);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.setViewName("../admin_company/admin_company.jsp");
				
		return modelAndView;					
	}
	
	@RequestMapping(value="/admin/admin_login/company_delete.do")
	public ModelAndView company_delete(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");		
		
		String id = request.getParameter("id");		
		int pg =  Integer.parseInt(request.getParameter("pg"));
		int result = adminService.company_delete(id);
		
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg",pg);
		modelAndView.addObject("result",result);
		modelAndView.setViewName("../admin_company/admin_company_delete_ok.jsp");
		return modelAndView;				
	}
	
	@RequestMapping(value="/admin/admin_login/ad_list.do")
	public ModelAndView ad_list(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
		int limit = 19;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
		
	    List<AdvertiseDTO> list = adminService.ad_list(startNum, endNum);
	    int totalA = adminService.ad_listT();	
	    
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
		modelAndView.setViewName("../admin_advertise/admin_advertise.jsp");
				
		return modelAndView;					
	}
	
	@RequestMapping(value="/admin/admin_login/search_advertise_list.do")
	public ModelAndView search_advertise_list(HttpServletRequest request,HttpServletResponse response) throws Exception{
		
		request.setCharacterEncoding("utf-8");		
		
		String top_subject = request.getParameter("top_subject");		
		
		int pg = 1;
		if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
		int limit = 19;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
		
	    List<AdvertiseDTO> list = adminService.search_advertise_list(startNum, endNum,top_subject);
	    int totalA = adminService.search_advertise_listT(top_subject);	
	    
	    int totalP = (totalA + (limit -1))/ limit;	    
		int startPage = (pg-1)/10*10+1;
	    int endPage = startPage + 9;
	    if(endPage > totalP) endPage = totalP; 
		
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("top_subject",top_subject);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("list", list);
		modelAndView.addObject("totalP", totalP);
		modelAndView.addObject("startPage", startPage);
		modelAndView.addObject("endPage", endPage);
		modelAndView.setViewName("../admin_advertise/admin_advertise.jsp");
				
		return modelAndView;					
	}
	
	@RequestMapping(value="/admin/admin_login/ad_delete.do")
	public ModelAndView ad_delete(HttpServletRequest request,HttpServletResponse response) throws Exception{
		request.setCharacterEncoding("utf-8");		
				
		int num = Integer.parseInt(request.getParameter("num"));		
		int pg =  Integer.parseInt(request.getParameter("pg"));
		int result = adminService.ad_delete(num);
		
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("pg",pg);
		modelAndView.addObject("result",result);
		modelAndView.setViewName("../admin_advertise/admin_advertise_delete_ok.jsp");
		return modelAndView;				
		
	}
	
	
	
	
}




























