/**
 *
 * @Class Name : LoginServiceImpl.java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 6. 27.	JWBACK		최초 생성
 *
 */
package com.jld.token.loginservice.impl;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.jld.token.dao.LoginDao;
import com.jld.token.loginservice.LoginService;

@Service("LoginService")
public class LoginServiceImpl implements LoginService {

	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Resource(name="LoginDao")
	private LoginDao loginDao;
	
	@Override
	public List<Map<String,Object>> getIdList(Map<String,Object> mapInfo) {	
		return loginDao.getIdList(mapInfo);
	}
	 
}
