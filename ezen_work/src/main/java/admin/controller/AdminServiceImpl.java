package admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminDTO;
import admin.dao.AdminDAO;
import member.bean.MemberDTO;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	AdminDAO dao;
	
	@Override
	public String login(String id, String pwd) {
		return dao.login(id, pwd);
	}

	@Override
	public List<MemberDTO> user_list(int startNum, int endNum) {
		return dao.user_list(startNum, endNum);
	}

	@Override
	public int getTotal_user() {		
		return dao.getTotal_user();
	}

	@Override
	public List<MemberDTO> search_user_list(int startNum, int endNum, String top_subject) {
		return dao.search_user_list(startNum, endNum,top_subject);
	}

	@Override
	public int search_user_listT(String top_subject) {
		return dao.search_user_listT(top_subject);
	}

	@Override
	public int user_delete(String id) {		
		return dao.user_delete(id);
	}

}
