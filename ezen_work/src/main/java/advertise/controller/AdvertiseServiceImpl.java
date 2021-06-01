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
	public int advertiseModify(AdvertiseDTO dto) {
		return dao.advertiseModify(dto);
	}
	@Override
	public List<AdvertiseDTO> advertiseList(String cname) {
		return dao.advertiseList(cname);
	}

	@Override
	public AdvertiseDTO advertiseView(int num) {
		return dao.advertiseView(num);
	}

	@Override
	public int getTotalA(String cname) {
		return dao.getTotalA(cname);
	}

	@Override
	public int advertiseDelete(int num) {
		return dao.advertiseDelete(num);
	}

}
