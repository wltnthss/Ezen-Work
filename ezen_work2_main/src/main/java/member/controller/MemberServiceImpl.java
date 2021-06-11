package member.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.bean.MemberDTO;
import member.dao.MemberDAO;
import resume.bean.ResumeDTO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO dao;
	
	@Override
	public int register(MemberDTO dto) {
		return dao.register(dto);
	}

	@Override
	public boolean isExistId(String id) {
		return dao.isExistId(id);
	}

	@Override
	public String login(String id, String pwd) {
		return dao.login(id, pwd);
	}

	@Override
	public MemberDTO getMember(String id) {
		return dao.getMember(id);
	}

	@Override
	public int modify(MemberDTO dto) {
		return dao.modify(dto);
	}

	@Override
	public ResumeDTO getResume(String id) {
		return dao.getResume(id);
	}

	@Override
	public List<ResumeDTO> resumeList(int startNum, int endNum) {
		return dao.resumeList(startNum, endNum);
	}

	@Override
	public int getTotalA(String id) {
		return dao.getTotalA(id);
	}

	@Override
	public int resumeDelete(int seq) {
		return dao.resumeDelete(seq);
	}

	@Override
	public ResumeDTO resumeView(int seq) {
		return dao.resumeView(seq);
	}

	@Override
	public int resumeModify(ResumeDTO dto) {
		return dao.resumeModify(dto);
	}

	@Override
	public String company_login(String id, String pwd) {		
		return dao.company_login(id,pwd);
	}

	@Override
	public String getCmember(String id) {
		return dao.getCmember(id);
	}

	@Override
	public ResumeDTO getResume2(int seq) {
		return dao.getResume2(seq);
	}

	@Override
	public String findId(String name, String email) {
		return dao.findId(name, email);
	}
}
