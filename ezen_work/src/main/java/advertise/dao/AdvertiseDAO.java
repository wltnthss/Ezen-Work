package advertise.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import advertise.bean.AdvertiseDTO;

@Repository
public class AdvertiseDAO {
	@Autowired
	SqlSessionTemplate sqlSession;
	
	public int advertiseWrite(AdvertiseDTO dto) {
		return sqlSession.insert("mybatis.advertiseMapper.advertiseWrite", dto);
	}
}
