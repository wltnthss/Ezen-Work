package advertise.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
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

import advertise.bean.AdvertiseDTO;


@Controller
public class AdvertiseController {
	@Autowired
	AdvertiseService advertiseService;
	
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
		String cname = (String)session.getAttribute("cname");
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
		String ad_name = request.getParameter("ad_name");
		String content = request.getParameter("content");
		String name = (String)session.getAttribute("memName");
		String id = (String)session.getAttribute("memId");
		
		
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
		dto.setAd_name(ad_name);
		dto.setContent(content);
		
		int result = advertiseService.advertiseWrite(dto); 		
		
		// 화면 네비게이션 : 데이터 공유 + view 처리 파일 선택
		ModelAndView modelAndView = new ModelAndView();
		modelAndView.addObject("result", result);
		modelAndView.setViewName("advertiseWrite.jsp");
				
		return modelAndView;
		
	}
}
