/**
 *
 * @Class Name : .java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 7. 24.	JWBACK		최초 생성
 *
 */
package com.jld.token.dao.impl;

import java.util.Map;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.jld.token.dao.PaymentDao;

@Repository("PaymentDao")
public class PaymentDaoImpl implements PaymentDao {
	
	@Autowired
	private SqlSession sqlSession;
	
	public void setSqlSession(SqlSession sqlSession) {
		this.sqlSession = sqlSession;
	}	
	/**
	 * @author JWBAEK
	 * @desc	
	 * @throws 	Exception
	 * @see com.jld.token.dao.PaymentDao#insertPaymentReg(java.util.Map)
	*/
	@Override
	public int insertPaymentReg(Map<String, Object> mapInfo) throws Exception {
		
		return sqlSession.insert("insertPayTokenResult",mapInfo);	
	}
	/**
	 * @author JWBAEK
	 * @desc	
	 * @throws 	Exception
	 * @see com.jld.token.dao.PaymentDao#insertPaymentPersonInfo(java.util.Map)
	*/
	@Override
	public int insertPaymentPersonInfo(Map<String, Object> mapInfo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("insertPayInfo", mapInfo);
	}
	/**
	 * @author JWBAEK
	 * @desc	
	 * @throws 	Exception
	 * @see com.jld.token.dao.PaymentDao#insertPayPackageReg(java.util.Map)
	*/
	@Override
	public int insertPayPackageReg(Map<String, Object> mapInfo) throws Exception {
		// TODO Auto-generated method stub
		return sqlSession.insert("insertPayTokenPackResult", mapInfo);
	}
	
	

}
