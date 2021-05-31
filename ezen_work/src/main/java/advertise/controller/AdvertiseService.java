package advertise.controller;

import advertise.bean.AdvertiseDTO;

public interface AdvertiseService {
	//공고문 등록
	public int advertiseWrite(AdvertiseDTO dto);
}
