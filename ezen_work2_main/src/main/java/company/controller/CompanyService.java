package company.controller;

import java.util.List;

import company.bean.CompanyDTO;
import mainForm.bean.MainFormDTO;
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
	//이력서 목록 보기
	public List<MainFormDTO> resumeList(String cname);
	//총 데이터 갯수 구하기
	public int getTotalA(String cname);
	// 조회수 증가하기
	public int updateHit(int seq);
	// 상세보기
	public MainFormDTO resumeView(int seq);
	// 회원1명 데이터 확인
	public MemberDTO getMember1(String id);
	//기업 아이디 찾기
	public String findId(String cname, String email);
	//회원 비밀번호 찾기
	public String findPwd(String id, String cname, String email);
}
