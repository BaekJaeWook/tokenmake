/**
 *
 * @Class Name : MemberService.java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 6. 27.	JWBACK		최초 생성
 *
 */
package com.jld.token.memberservice;

import java.util.Map;

public interface MemberService {
	
	//회원 가입
	int  insertMemberReg(Map<String,Object> mapInfo) throws Exception;
}
