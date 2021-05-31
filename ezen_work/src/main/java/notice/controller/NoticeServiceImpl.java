package notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import notice.DAO.NoticeDAO;
import notice.bean.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDAO dao;

	@Override
	public int register(NoticeDTO dto) {
		return dao.register(dto);
	}

	@Override
	public List<NoticeDTO> NoticeList(int startNum, int endNum) {
		return dao.noticeList(startNum, endNum);
	}

	@Override
	public int getTotalA() { 
		return dao.getTotalA();
	}
	
	@Override
	public int updateHit(int seq) {
		return dao.updateHit(seq);
	}
}
