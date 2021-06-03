package talk.controller;

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

}
