package company.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import company.bean.CompanyDTO;
import company.dao.CompanyDAO;
import mainForm.bean.MainFormDTO;
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
	public List<MainFormDTO> resumeList(String cname) {
		return dao.resumeList(cname);
	}

	@Override
	public int getTotalA(String cname) {
		return dao.getTotalA(cname);
	}

	@Override
	public int updateHit(int seq) {
		return dao.updateHit(seq);
	}

	@Override
	public MainFormDTO resumeView(int seq) {
		return dao.resumeView(seq);
	}

	@Override
	public MemberDTO getMember1(String id) {
		return dao.getMember1(id);
	}
	@Override
	public String findId(String cname, String email) {
		return dao.findId(cname, email);
	}
	@Override
	public String findPwd(String id, String cname, String email) {
		return dao.findPwd(id, cname, email);
	}
}
