package event.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import event.bean.EventDTO;
import event.dao.EventDAO;

@Service
public class EventServiceImpl implements EventService {
	@Autowired
	EventDAO dao;

	@Override
	public int eventWrite(EventDTO dto) {
		return dao.eventWrite(dto);
	}

	@Override
	public int eventDelete(int seq) {
		return dao.eventDelete(seq);
	}
/*
	@Override
	public EventDTO eventModify(int seq) {
		return dao.eventModify(seq);
	}
	
	@Override
	public int eventModifydo(EventDTO eventDTO) {
		return dao.eventModifydo(eventDTO);
	}
*/
	@Override
	public EventDTO eventView(int seq) {
		return dao.eventView(seq);
	}

	@Override
	public List<EventDTO> eventList(int startNum, int endNum) {
		return dao.eventList(startNum, endNum);
	}

	@Override
	public int getTotalA() {
		return dao.getTotalA();
	}

	@Override
	public int updateCount(int seq) {
		return dao.updateCount(seq);
	}
}
