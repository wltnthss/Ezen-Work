package notice.controller;

import java.util.List;

import notice.bean.NoticeDTO;

public interface NoticeService {
	// 저장
	public int noticeWrite(NoticeDTO dto);
	// 삭제
	public int noticeDelete(int seq);
	// 수정할 내용 불러오기
	//public NoticeDTO noticeModify(int seq);
	// 공지사항 내용 수정하기
	//public int noticeModifydo(NoticeDTO noticeDTO);
	// 상세보기
	public NoticeDTO noticeView(int seq);
	// 목록 보기
	public List<NoticeDTO> noticeList(int startNum, int endNum); 
	// 전체 데이터 개수 구하기
	public int getTotalA();
	// 조회수 증가하기
	public int updateCount(int seq);
	
}