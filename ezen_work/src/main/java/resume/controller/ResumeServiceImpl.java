package resume.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import resume.bean.ResumeDTO;
import resume.dao.ResumeDAO;

@Service
public class ResumeServiceImpl implements ResumeService{
	
	@Autowired
	ResumeDAO dao;
	
	@Override
	public String write(String title, String age, String tall, String weight, String career, String achieve, String loc,
			String logtime) {
		return dao.write(title, age, tall, weight, career, achieve, loc, logtime);
	}

	@Override
	public ResumeDTO getTitle(String title) {
		return dao.getTitle(title);
	}

	@Override
	public int modify(ResumeDTO dto) {
		return dao.modify(dto);
	}

}
