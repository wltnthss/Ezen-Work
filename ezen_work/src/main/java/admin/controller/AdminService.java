package admin.controller;

import admin.bean.AdminDTO;

public interface AdminService {
	//로그인
	public String login(String id, String pwd);
}
