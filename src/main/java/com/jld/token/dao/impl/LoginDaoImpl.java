/**
 *
 * @Class Name : LoginDaoImpl.java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 6. 27.	JWBACK		최초 생성
 *
 */
package com.jld.token.dao.impl;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jld.token.dao.LoginDao;

@Repository("LoginDao")
public class LoginDaoImpl implements LoginDao {

	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}	
	
	@Override
	public List<Map<String,Object>> getIdList(Map<String,Object> mapInfo) {
		return sqlSession.selectList("selectID",mapInfo); 
	}	
}
