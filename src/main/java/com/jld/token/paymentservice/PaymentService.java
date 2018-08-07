/**
 *
 * @Class Name : PaymentService.java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 7. 24.	JWBACK		최초 생성
 *
 */
package com.jld.token.paymentservice;

import java.util.Map;

public interface PaymentService {

	//토큰 구매 결제 저장
	int  insertPaymentReg(Map<String,Object> mapInfo) throws Exception;
	
	//결제 개인 정보 저장
	int  insertPaymentPersonInfo(Map<String,Object> mapInfo) throws Exception;
	
	//패키지 결제 저장
	int  insertPayPackageReg(Map<String,Object> mapInfo) throws Exception;
}
