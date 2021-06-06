package admin.controller;

import java.util.List;

import admin.bean.AdminDTO;
import advertise.bean.AdvertiseDTO;
import company.bean.CompanyDTO;
import member.bean.MemberDTO;

public interface AdminService {
	//로그인
	public String login(String id, String pwd);
	
	//유저 정보 획득
	public List<MemberDTO> user_list(int startNum, int endNum);
	
	//유저 총 게시글 수
	public int getTotal_user();
	
	//유저 검색/총수량
	public List<MemberDTO> search_user_list(int startNum, int endNum,String top_subject);
	public int search_user_listT(String top_subject);
	
	//유저 삭제
	public int user_delete(String id);
	
	//회사 정보 획득
	public List<CompanyDTO> company_list(int startNum, int endNum);
	
	//회사 총 게시글 수
	public int getTotal_company();
	
	//회사 검색/총수량
	public List<CompanyDTO> search_company_list(int startNum, int endNum,String top_subject);
	public int search_company_listT(String top_subject);
	
	//회사 삭제
	public int company_delete(String id);
	
	//공고등록 리스트/게시글 수
	public List<AdvertiseDTO> ad_list(int startNum, int endNum);	
	public int ad_listT();
	
	//공고문 검색/총수량
	public List<AdvertiseDTO> search_advertise_list(int startNum, int endNum,String top_subject);
	public int search_advertise_listT(String top_subject);
	
	//공고문 삭제
	public int ad_delete(int num);
}
