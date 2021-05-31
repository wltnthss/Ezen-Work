package advertise.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import advertise.bean.AdvertiseDTO;
import advertise.dao.AdvertiseDAO;

@Service
public class AdvertiseServiceImpl implements AdvertiseService{
	@Autowired
	AdvertiseDAO dao;
	
	@Override
	public int advertiseWrite(AdvertiseDTO dto) {
		return dao.advertiseWrite(dto);
	}
	@Override
	public AdvertiseDTO getMember(String id) {
		return dao.getMember(id);
	}
	@Override
	public int advertiseModify(AdvertiseDTO dto) {
		return dao.advertiseModify(dto);
	}
	@Override
	public List<AdvertiseDTO> advertiseList(int startNum, int endNum) {
		return dao.advertiseList(startNum, endNum);
	}

	@Override
	public AdvertiseDTO advertiseView(int seq) {
		return dao.advertiseView(seq);
	}

	@Override
	public int getTotalA() {
		return dao.getTotalA();
	}

	@Override
	public int advertiseDelete(int seq) {
		return dao.advertiseDelete(seq);
	}

}
