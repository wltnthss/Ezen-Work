package notice.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import notice.dao.NoticeDAO;
import notice.bean.NoticeDTO;

@Service
public class NoticeServiceImpl implements NoticeService {
	@Autowired
	NoticeDAO dao;

	@Override
	public int noticeWrite(NoticeDTO dto) {
		return dao.noticeWrite(dto);
	}

	@Override
	public int noticeDelete(int seq) {
		return dao.noticeDelete(seq);
	}
/*
	@Override
	public NoticeDTO noticeModify(int seq) {
		return dao.noticeModify(seq);
	}
	
	@Override
	public int noticeModifydo(NoticeDTO noticeDTO) {
		return dao.noticeModifydo(noticeDTO);
	}
*/
	@Override
	public NoticeDTO noticeView(int seq) {
		return dao.noticeView(seq);
	}

	@Override
	public List<NoticeDTO> noticeList(int startNum, int endNum) {
		return dao.noticeList(startNum, endNum);
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
