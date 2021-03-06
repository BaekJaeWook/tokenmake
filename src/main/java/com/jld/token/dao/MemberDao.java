/**
 *
 * @Class Name : LoginDao.java
 * @Description : 로그인 정보 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 6. 27.	JWBACK		최초 생성
 *
 */
package com.jld.token.dao;

import java.util.Map;

public interface MemberDao {
	
	int insertMemberReg(Map<String,Object> mapInfo) throws Exception;
}
