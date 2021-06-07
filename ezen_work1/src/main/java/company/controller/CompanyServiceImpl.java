package company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import company.bean.CompanyDTO;
import company.dao.CompanyDAO;
import member.bean.MemberDTO;
import resume.bean.ResumeDTO;

@Service
public class CompanyServiceImpl implements CompanyService{
	@Autowired
	CompanyDAO dao;

	@Override
	public int memberWrite(CompanyDTO dto) {
		return dao.memberWrite(dto);
	}
	
	@Override
	public boolean isExistId(String id) {
		return dao.isExistId(id);
	}
	
	@Override
	public String login(String id, String pw) {
		return dao.login(id, pw);
	}
	
	@Override
	public CompanyDTO getMember(String id) {
		return dao.getMember(id);
	}
	@Override
	public int memberModify(CompanyDTO dto) {
		return dao.memberModify(dto);
	}
	@Override
	public int delete(String id) {
		return dao.delete(id);
	}

	@Override
	public List<ResumeDTO> resumeList(int startNum, int endNum) {
		return null;
	}

	@Override
	public ResumeDTO getResume(String id) {
		return null;
	}
}
