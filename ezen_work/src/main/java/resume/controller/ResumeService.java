package resume.controller;

import resume.bean.ResumeDTO;

public interface ResumeService {
	//이력서 작성
	public String write(String title, String age, String tall, String weight, String career, String achieve, String loc, String logtime);
	//이력서 제목 확인
	public ResumeDTO getTitle(String title);
	//이력서 정보 수정
	public int modify(ResumeDTO dto);
	
}
