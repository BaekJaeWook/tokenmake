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

import java.util.List;
import java.util.Map;

public interface LoginDao {
	
	List<Map<String,Object>> getIdList(Map<String,Object> mapInfo);	
}
