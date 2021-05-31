package notice.controller;

import java.util.List;

import notice.bean.NoticeDTO;

public interface NoticeService {
	// 저장
	public int register(NoticeDTO dto);

	public List<NoticeDTO> NoticeList(int startNum, int endNum);

	public int getTotalA();

	int updateHit(int seq);
}