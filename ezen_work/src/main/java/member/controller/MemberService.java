package member.controller;

import member.bean.MemberDTO;

public interface MemberService {
	//회원가입
	public String register(String name, String id, String pwd, String gender, String email, String tel, String addr);
	//id 중복검사
	public boolean isExistId(String id);
	//로그인
	public String login(String id, String pwd);
	//회원1명 데이터 확인
	public MemberDTO getMember(String id);
	//회원정보 수정
	public int modify(MemberDTO dto);
}
