package talk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import talk.bean.TalkDTO;
import talk.dao.TalkDAO;

@Service
public class TalkServiceImpl implements TalkService{
	
	@Autowired
	TalkDAO dao;
	
	@Override
	public int talk_write(TalkDTO dto) {		
		return dao.talk_write(dto);
	}

	@Override
	public List<TalkDTO> talk_list(int startNum, int endNum) {		
		return dao.talk_list(startNum, endNum);
	}

	@Override
	public int talk_getTotalA() {		
		return dao.talk_getTotalA();
	}

	@Override
	public int talk_good_count(int seq) {		
		return dao.talk_good_count(seq);
	}

	@Override
	public int talk_bad_count(int seq) {		
		return dao.talk_bad_count(seq);
	}

	@Override
	public int talk_del(int seq) {
		return dao.talk_del(seq);
	}

}
