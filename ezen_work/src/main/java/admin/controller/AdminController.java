package admin.controller;

import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import admin.bean.AdminDTO;

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
				
		//�솕硫� �꽕鍮꾧쾶�씠�뀡
		ModelAndView modelAndView = new ModelAndView();
		HttpSession session = request.getSession();
						
		if(name != null) {
			session.setAttribute("memId", id);
			session.setAttribute("memName", name);
					
			modelAndView.setViewName("../admin_main/index.jsp");
		}else {
			modelAndView.setViewName("loginFail.jsp");			
		}
		return modelAndView;		
	}
	
	@RequestMapping(value="/admin/admin_login/logout.do")
	public ModelAndView logout(HttpServletRequest request,HttpServletResponse response) throws Exception{
				
		HttpSession session = request.getSession();
			
		// 세션 삭제
		session.removeAttribute("memId");
		session.removeAttribute("memName");
		
		// 모든 세션 삭제하기 : 무효화
		session.invalidate();
		
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.setViewName("../admin_login/logout.jsp");
		return modelAndView;				
	}
	
	
	
}
