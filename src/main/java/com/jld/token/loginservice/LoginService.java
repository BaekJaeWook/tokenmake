/**
 *
 * @Class Name : LoginService.java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 6. 27.	JWBACK		최초 생성
 *
 */
package com.jld.token.loginservice;

import java.util.List;
import java.util.Map;

public interface LoginService {
	
	//로그인 정보 조회
	List<Map<String,Object>> getIdList(Map<String,Object> mapInfo);		
}
