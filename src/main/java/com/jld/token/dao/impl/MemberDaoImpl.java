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

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jld.token.dao.MemberDao;

@Repository("MemberDao")
public class MemberDaoImpl implements MemberDao {

	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}	

	/* (non-Javadoc)
	 * @see com.jld.token.dao.LoginDao#insertMemberReg(java.util.Map)
	 * 회원 가입
	 */
	@Override
	public int insertMemberReg(Map<String, Object> mapInfo) {
		return sqlSession.insert("insertMemberReg",mapInfo); 
	}
	
}
