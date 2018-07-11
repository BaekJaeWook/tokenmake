package com.jld.token.buyController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jld.token.common.LoginCommon;

/**
*
* @Class Name : BuyController.JAVA
* @Description : 토큰 구매
* @Modification Information
*
*   수정일		수정자		수정내용
*   -------	--------	---------------------------
*   2018.06.27	JWBACK		최초 생성
*
*/
@Controller
public class BuyController {
	
	private static final Logger logger = LoggerFactory.getLogger(BuyController.class);	
	
	@RequestMapping(value = "/buytoken.do", method = RequestMethod.GET)
	public String buyToken(Model model,HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		logger.debug("buytoken test");
		logger.info("[info] Messt test logger");
		
		LoginCommon.loginStatsCheck( session,  request,  response);
		
		return "/buy/buy_token";
	}
	
	@RequestMapping(value = "/buycrowd.do", method = RequestMethod.GET)
	public String buyTokenPackage(Model model, HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		
		logger.debug("buyTokenPackage test");
		logger.info("[info] Messt test logger");		
		
		LoginCommon.loginStatsCheck( session,  request,  response);
		
		return "/buy/buy_crowd";
	}
		  
}
