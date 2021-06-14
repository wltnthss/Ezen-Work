package member.controller;

import java.util.List;

import member.bean.MemberDTO;
import resume.bean.ResumeDTO;

public interface MemberService {
	//회원가입
	public int register(MemberDTO dto);
	//id 중복검사
	public boolean isExistId(String id);
	//로그인
	public String login(String id, String pwd);	
	//회사 로그인
	public String company_login(String id, String pwd);
	//회사 이름 가져오기
	public String getCmember(String id);
	//회원1명 데이터 확인
	public MemberDTO getMember(String id);
	//회원정보 수정
	public int modify(MemberDTO dto);
	//이력서 데이터 확인
	public ResumeDTO getResume(String id);
	//이력서 목록 보기
	public List<ResumeDTO> resumeList(int startNum, int endNum);
	//총 데이터 갯수 구하기
	public int getTotalA(String id);
	//이력서 삭제
	public int resumeDelete(int seq);
	//이력서 상세보기
	public ResumeDTO resumeView(int seq);
	//이력서 수정
	public int resumeModify(ResumeDTO dto);
	//이력서 데이터 확인2
	public ResumeDTO getResume2(int seq);
	//회원 아이디 찾기
	public String findId(String name, String email);
	//회원 비밀번호 찾기
	public String findPwd(String id, String name, String email);
}
