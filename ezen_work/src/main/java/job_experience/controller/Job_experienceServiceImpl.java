package job_experience.controller;


import java.util.List;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import job_exp_reply.bean.Job_exp_replyDTO;
import job_experience.bean.Job_experienceDTO;
import job_experience.dao.Job_experienceDAO;

@Service
public class Job_experienceServiceImpl implements Job_experienceService{
	@Autowired
	Job_experienceDAO dao; 
	
	@Override
	public int exp_write(Job_experienceDTO dto) {		
		return dao.exp_write(dto);
	}

	@Override
	public List<Job_experienceDTO> exp_list(int startNum, int endNum) {			
		return dao.exp_list(startNum,endNum);
	}

	@Override
	public int exp_getTotalA() {		
		return dao.exp_getTotalA();
	}

	@Override
	public List<Job_experienceDTO> exp_search(String search) {		
		return dao.exp_search(search);
	}

	@Override
	public int exp_search_total(String search) {		
		return dao.exp_search_total(search);
	}

	@Override
	public Job_experienceDTO exp_view(int seq) {		
		return dao.exp_view(seq);
	}

	@Override
	public int exp_hit(int seq) {
		return dao.exp_hit(seq);		
	}

	@Override
	public int exp_modify(Job_experienceDTO dto) {		
		return dao.exp_modify(dto);
	}

	@Override
	public int exp_del(int seq) {		
		return  dao.exp_del(seq);
	}

	@Override
	public List<Job_exp_replyDTO> exp_reply_list(int seq) {		
		return dao.exp_reply_list(seq);
	}

	@Override
	public int exp_reply_del(int seq) {		
		return dao.exp_reply_del(seq);
	}

}
