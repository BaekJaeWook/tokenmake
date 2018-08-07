/**
 *
 * @Class Name : PaymentServiceImpl.java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 7. 24.	JWBACK		최초 생성
 *
 */
package com.jld.token.paymentservice.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.jld.token.dao.PaymentDao;
import com.jld.token.paymentservice.PaymentService;

@Service("PaymentService")
public class PaymentServiceImpl implements PaymentService{

	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Resource(name="PaymentDao")
	private PaymentDao paymentDao;	

	/**
	 * @author JWBAEK
	 * @desc	
	 * @throws 	Exception
	 * @see com.jld.token.paymentservice.PaymentService#insertPaymentReg(java.util.Map)
	*/
	@Override
	public int insertPaymentReg(Map<String, Object> mapInfo) throws Exception {

		int insertRow = 0;
		insertRow = paymentDao.insertPaymentReg(mapInfo);	
		
		return insertRow;
	}	
	
	/**
	 * @author JWBAEK
	 * @desc	
	 * @throws 	Exception
	 * @see com.jld.token.paymentservice.PaymentService#insertPaymentPersonInfo(java.util.Map)
	*/
	@Override
	public int insertPaymentPersonInfo(Map<String, Object> mapInfo) throws Exception {

		int insertRow = 0;		
		insertRow = paymentDao.insertPaymentPersonInfo(mapInfo);
		
		return insertRow;
	}

	/**
	 * @author JWBAEK
	 * @desc	
	 * @throws 	Exception
	 * @see com.jld.token.paymentservice.PaymentService#insertPayPackageReg(java.util.Map)
	*/
	@Override
	public int insertPayPackageReg(Map<String, Object> mapInfo) throws Exception {

		int insertRow = 0;
		insertRow = paymentDao.insertPayPackageReg(mapInfo);
		
		return insertRow;
	}
	
	
}
