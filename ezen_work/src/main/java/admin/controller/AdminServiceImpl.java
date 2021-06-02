package admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminDTO;
import admin.dao.AdminDAO;

@Service
public class AdminServiceImpl implements AdminService{
	@Autowired
	AdminDAO dao;
	
	@Override
	public String login(String id, String pwd) {
		return dao.login(id, pwd);
	}

}
