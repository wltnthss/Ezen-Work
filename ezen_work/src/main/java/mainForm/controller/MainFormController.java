package mainForm.controller;

import java.io.File;
import java.io.FileNotFoundException;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.websocket.Session;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.support.ManagedArray;
import org.springframework.stereotype.Controller;
import org.springframework.util.FileCopyUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import advertise.bean.AdvertiseDTO;
import mainForm.bean.MainFormDTO;
import resume.bean.ResumeDTO;


@Controller
public class MainFormController {
	
	@Autowired
	MainFormService mainFormService;
	
	//�쉶�썝 �쉶�썝媛��엯 �벑濡�
	@RequestMapping(value = "/main/index.do")
	public ModelAndView mainView(HttpServletRequest request, HttpServletResponse response) throws Exception{
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		int pg = 1;
	    if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
	    // 紐⑸줉 : 10媛�
	    int limit = 20;
	    int endNum = pg*limit;  // 1 * 5 = 5
	    int startNum = endNum - (limit -1); // 5 - (5-1) = 1
			
		//DB
		List<AdvertiseDTO> list = mainFormService.adList(startNum,endNum);
	    int totalA = mainFormService.getTotalA();
		
		//�솕硫� �꽕鍮꾧쾶�씠�뀡		
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
	    modelAndView.setViewName("../main/index.jsp");
	    
		return modelAndView;		
	}
	@RequestMapping(value = "/member/member_apply/memberAdViewForm.do")
	public ModelAndView memberAdView(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		
		int num = Integer.parseInt(request.getParameter("num"));
		int pg = Integer.parseInt(request.getParameter("pg"));
		
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		// DB
		AdvertiseDTO dto = mainFormService.getAdView(num);
		
	    // �솕硫� �꽕鍮꾧쾶�씠�뀡 : �뜲�씠�꽣 �쟾�떖 + view泥섎━
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("dto", dto);
	    modelAndView.addObject("num", num);
		modelAndView.addObject("pg", pg);
	    modelAndView.setViewName("memberAdViewForm.jsp");
	    
		return modelAndView;		
	}
	
	@RequestMapping(value = "/main/apply_enroll.do")
	public ModelAndView enroll(HttpServletRequest request, HttpServletResponse response) throws Exception{
		ModelAndView modelAndView = new ModelAndView();
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
				
		HttpSession session = request.getSession();
		
		int num = Integer.parseInt(request.getParameter("num"));
		String id = (String) session.getAttribute("memId");
		System.out.println(id);
		System.out.println(num);
		
		int result1 = mainFormService.getresume1(id);
		System.out.println(result1);
		if(result1 < 1) {
			modelAndView.setViewName("../member/member_apply/memberAdViewFormFail.jsp");			
		}else {		
		ResumeDTO dto = mainFormService.getresume(id);		
		String cname = mainFormService.getName(num);
		System.out.println(dto.getId());
		
		MainFormDTO dto1 = new MainFormDTO();
		dto1.setCname(cname);
		dto1.setId(dto.getId());
		dto1.setSeq(dto.getSeq());
		dto1.setImage(dto.getImage());
		dto1.setTitle(dto.getTitle());
		dto1.setAge(dto.getAge());
		dto1.setCareer(dto.getCareer());
		dto1.setAchieve(dto.getAchieve());
		dto1.setLoc(dto.getLoc());
		dto1.setOpencount(dto.getOpencount());
		dto1.setLogtime(dto.getLogtime());
		
		int result = mainFormService.enroll(dto1);
		
		modelAndView.addObject("num",num);
		modelAndView.addObject("result",result);		
	    modelAndView.setViewName("../member/member_apply/memberAdViewFormOk.jsp");
		}
		return modelAndView;		
	}//뿅
		
	
	@RequestMapping(value = "/member/member_apply/memberAdList.do")
	public ModelAndView AdList(HttpServletRequest request, HttpServletResponse response) throws Exception{
		try {
			request.setCharacterEncoding("utf-8");
		} catch (UnsupportedEncodingException e) {
			e.printStackTrace();
		}
		
		int pg = 1;
	    if(request.getParameter("pg")!= null) {
	         pg = Integer.parseInt(request.getParameter("pg"));
	    }
	    HttpSession session = request.getSession();
	    String id = (String) session.getAttribute("memId");
	    List<MainFormDTO> list = mainFormService.memAdList(id);
	    
	    
	    // �솕硫� �꽕鍮꾧쾶�씠�뀡 : �뜲�씠�꽣 �쟾�떖 + view泥섎━
	    ModelAndView modelAndView = new ModelAndView();
	    modelAndView.addObject("pg", pg);
	    modelAndView.addObject("list", list);
	    modelAndView.setViewName("memberAdList.jsp");
	    
		return modelAndView;		
	}
	@RequestMapping(value = "/tarea/tarea1.do")
	public ModelAndView tarea(HttpServletRequest request, HttpServletResponse response) throws Exception {
		String data1 = request.getParameter("data1");
		String data3 = request.getParameter("data3");
		// 데이터 처리
		int pg = 1;
		if (request.getParameter("pg") != null) {
			pg = Integer.parseInt(request.getParameter("pg"));
		}
		// 목록 : 10개
		int limit = 20;
		int endNum = pg * limit; // 1 * 5 = 5
		int startNum = endNum - (limit - 1); // 5 - (5-1) = 1
		
		ModelAndView modelAndView = new ModelAndView();
		if(data1.equals("지역")) {
			List<AdvertiseDTO> list = mainFormService.tareaList1(data3);
			// 페이징 : 10블럭
			int totalA = mainFormService.getTotal1(data3);
			int totalP = (totalA + (limit - 1)) / limit;
			int startPage = (pg - 1) / 10 * 10 + 1;
			int endPage = startPage + 9;
			if (endPage > totalP)
				endPage = totalP;

			// 화면 네비게이션 : 데이터 전달 + view처리
			modelAndView.addObject("pg", pg);
			modelAndView.addObject("list", list);
			modelAndView.addObject("totalP", totalP);
			modelAndView.addObject("startPage", startPage);
			modelAndView.addObject("endPage", endPage);			
		}else{
			List<AdvertiseDTO> list = mainFormService.tareaList2(data3);
			// 페이징 : 10블럭
			int totalA = mainFormService.getTotal2(data3);
			int totalP = (totalA + (limit - 1)) / limit;
			int startPage = (pg - 1) / 10 * 10 + 1;
			int endPage = startPage + 9;
			if (endPage > totalP)
				endPage = totalP;

			// 화면 네비게이션 : 데이터 전달 + view처리
			modelAndView.addObject("pg", pg);
			modelAndView.addObject("list", list);
			modelAndView.addObject("totalP", totalP);
			modelAndView.addObject("startPage", startPage);
			modelAndView.addObject("endPage", endPage);				
		}			
		modelAndView.setViewName("main.jsp");	
		return modelAndView;
	}
}

































