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
	public String register(String name, String id, String pwd, String gender, String email, String tel, String addr) {
		return dao.register(name, id, pwd, gender, email, tel, addr);
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
	public int getTotalA() {
		return dao.getTotalA();
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
}
