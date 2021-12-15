package com.javassem.dao;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.javassem.domain.ParkVO;

@Repository("parkDAO")
public class ParkDAOImpl implements ParkDAO{

	@Autowired
	private SqlSessionTemplate mybatis;

	
	
	public ParkVO idCheck(ParkVO vo) {
		return mybatis.selectOne("supervisor.idCheck", vo);
	}
	
	
}
