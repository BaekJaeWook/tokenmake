/**
 *
 * @Class Name : Login.java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 6. 27.	JWBACK		최초 생성
 *
 */
package com.jld.token.loginmodel;

public class Login {
	
	String UserID;
	String PW;
	String RegDate;
	String ModiDate;
	String ModiID;
	/**
	 * @return the userID
	 */
	public String getUserID() {
		return UserID;
	}
	/**
	 * @param userID the userID to set
	 */
	public void setUserID(String userID) {
		UserID = userID;
	}
	/**
	 * @return the pW
	 */
	public String getPW() {
		return PW;
	}
	/**
	 * @param pW the pW to set
	 */
	public void setPW(String pW) {
		PW = pW;
	}
	/**
	 * @return the regDate
	 */
	public String getRegDate() {
		return RegDate;
	}
	/**
	 * @param regDate the regDate to set
	 */
	public void setRegDate(String regDate) {
		RegDate = regDate;
	}
	/**
	 * @return the modiDate
	 */
	public String getModiDate() {
		return ModiDate;
	}
	/**
	 * @param modiDate the modiDate to set
	 */
	public void setModiDate(String modiDate) {
		ModiDate = modiDate;
	}
	/**
	 * @return the modiID
	 */
	public String getModiID() {
		return ModiID;
	}
	/**
	 * @param modiID the modiID to set
	 */
	public void setModiID(String modiID) {
		ModiID = modiID;
	}

}
