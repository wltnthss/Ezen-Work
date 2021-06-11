package talk.controller;

import java.util.List;

import talk.bean.TalkDTO;

public interface TalkService {
	
	//한줄톡 입력
	public int talk_write(TalkDTO dto);
	
	//한줄톡 리스트
	public List<TalkDTO> talk_list(int startNum, int endNum);
	
	//한줄톡 총갯수
	public int talk_getTotalA();
	
	//좋아요 추가
	public int talk_good_count(int seq);
	
	//싫어요 추가
	public int talk_bad_count(int seq);
	
	//한줄톡 삭제
	public int talk_del(int seq);
}
