package job_exp_reply.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import job_exp_reply.bean.Job_exp_replyDTO;
import job_exp_reply.dao.Job_exp_replyDAO;

@Service
public class Job_exp_replyServiceImpl implements Job_exp_replyService{
	
	@Autowired
	Job_exp_replyDAO dao;
	
	@Override
	public int exp_reply_write(Job_exp_replyDTO dto) {		
		return dao.exp_reply_write(dto);
	}

	@Override
	public int exp_reply_del(int exp_reply_seq) {		
		return dao.exp_reply_del(exp_reply_seq);
	}

	@Override
	public int exp_reply_count(int seq) {		
		return dao.exp_reply_count(seq);
	}
	
	@Override
	public int exp_reply_minus(int seq) {		
		return dao.exp_reply_minus(seq);
	}	

}
