package advertise.controller;

import java.util.List;

import advertise.bean.AdvertiseDTO;

public interface AdvertiseService {
	//공고문 등록
	public int advertiseWrite(AdvertiseDTO dto);
	// 목록보기 : select
	public List<AdvertiseDTO> advertiseList(String cname);
	// 상세보기 : select
	public AdvertiseDTO advertiseView(int num);
	// 총 데이터 갯수 구하기
	public int getTotalA(String cname);
	// 글삭제 : delete
	public int advertiseDelete(int num);
	//공고 수정
	public int advertiseModify(AdvertiseDTO dto);
}
