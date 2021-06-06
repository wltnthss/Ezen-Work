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
	public int resumeWrite(ResumeDTO dto) {
		return dao.resumeWrite(dto);
	}

}
