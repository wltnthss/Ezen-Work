package job_exp_reply.controller;

import job_exp_reply.bean.Job_exp_replyDTO;

public interface Job_exp_replyService {
	
	//댓글 등록
	public int exp_reply_write(Job_exp_replyDTO dto);
	
	//댓글 삭제
	public int exp_reply_del(int exp_reply_seq);	 		
}
