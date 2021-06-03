package talk.controller;

import talk.bean.TalkDTO;

public interface TalkService {
	
	//한줄톡 입력
	public int talk_write(TalkDTO dto);
}
