package company.controller;

import company.bean.CompanyDTO;
import member.bean.MemberDTO;

public interface CompanyService {
	//회원가입
	public int memberWrite(CompanyDTO dto);
	//id 중복검사
	public boolean isExistId(String id);
	// 로그인
	public String login(String id, String pw);
	// 회원1명 데이터 확인
	public CompanyDTO getMember(String id);
	//회원정보 수정
	public int memberModify(CompanyDTO dto);
	//회원탈퇴
	public int delete(String id);	
}
