package member.controller;

public interface MemberService {
	//회원가입
	public String register(String name, String id, String pwd, String gender, String email1, String email2, String tel1, String tel2, String tel3, String addr);
	//id 중복검사
	public boolean isExistId(String id);
}
