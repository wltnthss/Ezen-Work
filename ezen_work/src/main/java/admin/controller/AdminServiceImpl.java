package admin.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import admin.bean.AdminDTO;
import admin.dao.AdminDAO;
import advertise.bean.AdvertiseDTO;
import company.bean.CompanyDTO;
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

	@Override
	public List<CompanyDTO> company_list(int startNum, int endNum) {
		return dao.company_list(startNum, endNum);
	}

	@Override
	public int getTotal_company() {
		return dao.getTotal_company();
	}

	@Override
	public List<CompanyDTO> search_company_list(int startNum, int endNum, String top_subject) {
		return dao.search_company_list(startNum, endNum,top_subject);
	}

	@Override
	public int search_company_listT(String top_subject) {
		return dao.search_company_listT(top_subject);
	}

	@Override
	public int company_delete(String id) {
		return dao.company_delete(id);
	}

	@Override
	public List<AdvertiseDTO> ad_list(int startNum, int endNum) {
		return dao.ad_list(startNum, endNum);
	}

	@Override
	public int ad_listT() {
		return dao.ad_listT();
	}

	@Override
	public List<AdvertiseDTO> search_advertise_list(int startNum, int endNum, String top_subject) {
		return dao.search_advertise_list(startNum, endNum,top_subject);
	}

	@Override
	public int search_advertise_listT(String top_subject) {
		return dao.search_advertise_listT(top_subject);
	}

	@Override
	public int ad_delete(int num) {
		return dao.ad_delete(num);
	}

}
