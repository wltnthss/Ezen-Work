package advertise.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
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

import advertise.bean.AdvertiseDTO;


@Controller
public class AdvertiseController {
	@Autowired
	AdvertiseService advertiseService;
	
	@RequestMapping(value = "/company/advertise/advertiseForm.do")
	public ModelAndView advertiseWriteForm(HttpServletRequest request, HttpServletResponse response) throws Exception{
		//데이터
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String cname = (String) session.getAttribute("cmemName");
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("cname", cname);
		modelAndView.setViewName("advertiseForm.jsp");
				
		return modelAndView;
	}
	@RequestMapping(value = "/company/advertise/advertise.do")
	public ModelAndView advertiseWrite(HttpServletRequest request, HttpServletResponse response, MultipartFile image) throws Exception{
		//데이터
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String filePath = request.getSession().getServletContext().getRealPath("/storage");
		String fileName = image.getOriginalFilename();
		
		// 파일 복사 : 파일 저장
		File file = new File(filePath, fileName);
		try {
			FileCopyUtils.copy(image.getInputStream(), new FileOutputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		String cname = (String)session.getAttribute("cmemName");
		String ad_subject = request.getParameter("ad_subject");
		String ad_num = request.getParameter("ad_num");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		int salary = Integer.parseInt(request.getParameter("salary"));
		String ad_content = request.getParameter("ad_content");
		String ad_job = request.getParameter("ad_job");
		String ad_area = request.getParameter("ad_area");
		String ad_time = request.getParameter("ad_time");
		String ad_period = request.getParameter("ad_period");
		String content = request.getParameter("content");
		String id = (String)session.getAttribute("cmemId");
		
		//DB
		AdvertiseDTO dto = new AdvertiseDTO();
		dto.setCname(cname);
		dto.setImage(fileName);
		dto.setAd_subject(ad_subject);
		dto.setAd_num(ad_num);
		dto.setGender(gender);
		dto.setAge(age);
		dto.setSalary(salary);
		dto.setAd_content(ad_content);
		dto.setAd_job(ad_job);
		dto.setAd_area(ad_area);
		dto.setAd_time(ad_time);
		dto.setAd_period(ad_period);
		dto.setContent(content);
		
		int result = advertiseService.advertiseWrite(dto); 		
		
		// 화면 네비게이션 : 데이터 공유 + view 처리 파일 선택
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("cname", cname);
		modelAndView.setViewName("advertiseWrite.jsp");
				
		return modelAndView;
	}
	
	//수정(데이터 읽어오기)
	@RequestMapping(value = "/company/advertise/advertiseModifyForm.do")
	public ModelAndView memberModify(HttpServletRequest request) {
		//데이터
		int num = Integer.parseInt(request.getParameter("num"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		// DB
		AdvertiseDTO dto = advertiseService.advertiseView(num);
		dto.setCname(dto.getCname());
		dto.setAd_subject(dto.getAd_subject());
		dto.setGender(dto.getGender());
		dto.setAge(dto.getAge());
		dto.setSalary(dto.getSalary());
		dto.setAd_content(dto.getAd_content());
		dto.setAd_area(dto.getAd_area());
		dto.setAd_period(dto.getAd_period());
		dto.setContent(dto.getContent());
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("num", num);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("dto", dto);
		modelAndView.setViewName("../advertise/advertiseModifyForm.jsp");
		return modelAndView;
		}
	//수정
	@RequestMapping(value = "/company/advertise/advertiseModify.do")
	public ModelAndView modify(HttpServletRequest request, HttpServletResponse response, MultipartFile image) throws Exception{
		String filePath = request.getSession().getServletContext().getRealPath("/storage");
		String fileName = image.getOriginalFilename();
		// 파일 복사 : 파일 저장
		File file = new File(filePath, fileName);
		try {
			FileCopyUtils.copy(image.getInputStream(), new FileOutputStream(file));
		} catch (FileNotFoundException e) {
			e.printStackTrace();
		} catch (IOException e) {
			e.printStackTrace();
		}
		HttpSession session = request.getSession();
		String cname = (String)session.getAttribute("cmemName");
		String ad_subject = request.getParameter("ad_subject");
		String ad_num = request.getParameter("ad_num");
		String gender = request.getParameter("gender");
		String age = request.getParameter("age");
		int salary = Integer.parseInt(request.getParameter("salary"));
		String ad_content = request.getParameter("ad_content");
		String ad_job = request.getParameter("ad_job");
		String ad_area = request.getParameter("ad_area");
		String ad_time = request.getParameter("ad_time");
		String ad_period = request.getParameter("ad_period");
		String content = request.getParameter("content");
		String name = (String)session.getAttribute("memName");
		String id = (String)session.getAttribute("memId");
		int num = Integer.parseInt(request.getParameter("num"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		//DB
		AdvertiseDTO dto = new AdvertiseDTO();
		dto.setNum(num);
		dto.setCname(cname);
		dto.setImage(fileName);
		dto.setAd_subject(ad_subject);
		dto.setAd_num(ad_num);
		dto.setGender(gender);
		dto.setAge(age);
		dto.setSalary(salary);
		dto.setAd_content(ad_content);
		dto.setAd_job(ad_job);
		dto.setAd_area(ad_area);
		dto.setAd_time(ad_time);
		dto.setAd_period(ad_period);
		dto.setContent(content);
				
		int result = advertiseService.advertiseModify(dto);
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.setViewName("../advertise/advertiseModify.jsp");
		return modelAndView;
		}
	
	@RequestMapping(value = "/company/advertise/advertiseList.do")
	public ModelAndView advertiseList(HttpServletRequest request, HttpServletResponse response) {
		//데이터 처리 
	    int pg = 1;
	    if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
	    // 목록 : 10개
	    int limit = 5;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
	    
	    HttpSession session = request.getSession();
	    String cname = (String) session.getAttribute("cmemName");
	    List<AdvertiseDTO> list = advertiseService.advertiseList(cname);
	    // 페이징 : 10블럭
	    int totalA = advertiseService.getTotalA(cname);
	    int totalP = (totalA + (limit -1))/ limit;
	    
	    int startPage = (pg-1)/3*3+1;
	    int endPage = startPage + 2;
	    if(endPage > totalP) endPage = totalP;    
	    // 화면 네비게이션 : 데이터 전달 + view처리
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("pg", pg);
	    modelAndView.addObject("list", list);
	    modelAndView.addObject("totalP", totalP);
	    modelAndView.addObject("startPage", startPage);
	    modelAndView.addObject("endPage", endPage);
	    modelAndView.addObject("cname", cname);
	   
	    modelAndView.setViewName("../advertise/advertiseList.jsp");
	    	
		return modelAndView;
	} 
	
	@RequestMapping(value = "/company/advertise/advertiseView.do")
	public ModelAndView boardView(HttpServletRequest request, HttpServletResponse response) {
		HttpSession session = request.getSession();
		//데이터
		int num = Integer.parseInt(request.getParameter("num"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		String cname = (String) session.getAttribute("cmemName");
		//DB
		AdvertiseDTO dto = advertiseService.advertiseView(num); 
		dto.setCname(cname);
		// 화면 네비게이션 : 데이터 공유 + view 처리 파일 선택
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("num", num);
		modelAndView.addObject("pg", pg);
		modelAndView.addObject("dto", dto);
		
		modelAndView.setViewName("../advertise/advertiseView.jsp");
		
		return modelAndView;
	}
	
	//삭제창
	@RequestMapping(value = "/company/advertise/advertiseDeleteForm.do")
	public ModelAndView deleteForm(HttpServletRequest request) {
		
		int num = Integer.parseInt(request.getParameter("num"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("num", num);
		modelAndView.addObject("pg", pg);
		modelAndView.setViewName("../advertise/advertiseDeleteForm.jsp");
		return modelAndView;
	}
	//삭제
	@RequestMapping(value = "/company/advertise/advertiseDelete.do")
	public ModelAndView delete(HttpServletRequest request) {
		//데이터
		int num = Integer.parseInt(request.getParameter("num"));
		int pg = Integer.parseInt(request.getParameter("pg"));
			
		int result = advertiseService.advertiseDelete(num);
				
		// 화면 네비게이션
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.addObject("pg", pg);
		modelAndView.setViewName("../advertise/advertiseDelete.jsp");
		return modelAndView;
	}
}
