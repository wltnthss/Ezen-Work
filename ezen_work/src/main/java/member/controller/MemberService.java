package member.controller;

import java.util.List;

import member.bean.MemberDTO;
import resume.bean.ResumeDTO;

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
	//이력서 데이터 확인
	public ResumeDTO getResume(String id);
	//이력서 목록 보기
	public List<ResumeDTO> resumeList(int startNum, int endNum);
	//총 데이터 갯수 구하기
	public int getTotalA();
	//이력서 삭제
	public int resumeDelete(int seq);
	//이력서 상세보기
	public ResumeDTO resumeView(int seq);
	//이력서 수정
	public int resumeModify(ResumeDTO dto);
}
