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
package com.jld.token.memberservice.impl;

import java.util.Map;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Service;

import com.jld.token.dao.MemberDao;
import com.jld.token.memberservice.MemberService;

@Service("MemberService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Resource(name="MemberDao")
	private MemberDao memberDao;	

	/* (non-Javadoc)
	 * @see com.jld.token.loginservice.LoginService#insertMemberReg(java.util.Map)
	 * 회원가입
	 */
	@Override
	public int insertMemberReg(Map<String, Object> mapInfo) throws Exception{		
		
//		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
//		def.setName("loginTranscation");
//		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
//		
//		TransactionStatus status = transactionManager.getTransaction(def);
		int returnRow = 0;
		
		try {			
			returnRow = memberDao.insertMemberReg(mapInfo);
		}catch(Exception e) {
			
			throw e;
		}			
		return returnRow;
	}
}
