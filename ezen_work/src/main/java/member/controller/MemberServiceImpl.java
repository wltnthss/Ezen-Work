package member.controller;

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
	public ResumeDTO getresume(String id) {		
		return dao.getresume(id);
	}
}
