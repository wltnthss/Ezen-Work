package mainForm.controller;

import java.util.List;

import advertise.bean.AdvertiseDTO;
import mainForm.bean.MainFormDTO;
import resume.bean.ResumeDTO;

public interface MainFormService {
	
	//怨듦퀬�벑濡� 由ъ뒪�듃 遺덈윭�삤湲�
	public List<AdvertiseDTO> adList(int startNum,int endNum);
	// 珥� �뜲�씠�꽣 媛��닔 援ы븯湲�
	public int getTotalA();
	// 회사 공고 정보 가져오기 cname 가져오기
	public AdvertiseDTO getAdInfo(String cname);
	// 회사 공고 정보 가져오기
	public AdvertiseDTO getAdView(int num);
	// 마이페이지 이력서 가져오기
	public ResumeDTO getresume(String id);
	// 공고등록된 회사 이름 가져오기
	public String getName(int num);
	//이력지원 테이블 입력하기
	public int enroll(MainFormDTO dto1);
	//이력지원 데이터 보여주기
	public List<MainFormDTO> memAdList(String id);
	//이력서 목록 보기(지역별)
	public List<AdvertiseDTO> tareaList1(String data3);
	//총 데이터 갯수 구하기(지역별)
	public int getTotal1(String data3);
	//이력서 목록 보기(직종별)
	public List<AdvertiseDTO> tareaList2(String data3);
	//총 데이터 갯수 구하기(직종별)
	public int getTotal2(String data3);
	
	public int getresume1(String id);
}
