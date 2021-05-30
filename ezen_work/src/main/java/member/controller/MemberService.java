package member.controller;

public interface MemberService {
	//회원가입
	public String register(String name, String id, String pwd, String gender, String email, String tel, String addr);
	//id 중복검사
	public boolean isExistId(String id);
	//로그인
	public String login(String id, String pwd);
}
