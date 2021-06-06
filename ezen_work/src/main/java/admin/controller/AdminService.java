package admin.controller;

import java.util.List;

import admin.bean.AdminDTO;
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
}
