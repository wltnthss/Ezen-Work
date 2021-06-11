package job_experience.controller;

import java.util.List;

import job_exp_reply.bean.Job_exp_replyDTO;
import job_experience.bean.Job_experienceDTO;

public interface Job_experienceService {
	
	//알바경험담 목록보기
	public List<Job_experienceDTO> exp_list(int startNum, int endNum);
	
	//알바경험담 글쓰기
	public int exp_write(Job_experienceDTO dto);
	
	//알바경험담 총페이지구하기
	public int exp_getTotalA();
	
	//검색 결과
	public List<Job_experienceDTO> exp_search(String search);
	
	//알바경험담 검색 총페이지구하기
	public int exp_search_total(String search);	
	
	//알바경험담 view
	public Job_experienceDTO exp_view(int seq);	
	
	//알바경험담 조회수
	public int exp_hit(int seq);
	
	//알바경험담 수정
	public int exp_modify(Job_experienceDTO dto);	
	
	//알바경험담 삭제
	public int exp_del(int seq);
	
	//알바경험담 답글 불러오기
	public List<Job_exp_replyDTO> exp_reply_list(int seq);
	
	//알바경험담댓글 삭제
	public int exp_reply_del(int seq);
	
}
