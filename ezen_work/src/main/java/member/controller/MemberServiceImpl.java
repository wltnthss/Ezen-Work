package member.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import member.dao.MemberDAO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberDAO dao;
	
	@Override
	public String register(String name, String id, String pwd, String gender, String email1, String email2, String tel1,
			String tel2, String tel3, String addr) {
		return dao.register(name, id, pwd, gender, email1, email2, tel1, tel2, tel3, addr);
	}

	@Override
	public boolean isExistId(String id) {
		return dao.isExistId(id);
	}

	@Override
	public String login(String id, String pwd) {
		return dao.login(id, pwd);
	}
	
}
