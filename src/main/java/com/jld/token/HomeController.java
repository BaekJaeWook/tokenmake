package com.jld.token;

import java.text.DateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.jld.token.common.LoginCommon;

/**
*
* @Class Name : HomeController.JAVA
* @Description : 토큰 구매
* @Modification Information
*
*   수정일		수정자		수정내용
*   -------	--------	---------------------------
*   2018.06.27	JWBACK		최초 생성
*
*/

@Controller
public class HomeController {
	
	 @Autowired
	 private SqlSession sqlSession;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/")
	public String home(Locale locale, HttpServletRequest request, HttpServletResponse response, Model model, HttpSession session) {
		
		logger.info("Welcome home! The client locale is {}.", locale);
		
		logger.info("=========================");
		logger.info("/index.do start");			
		logger.info("=========================");		
			
		//LoginCommon.loginStatsCheck( session,  request,  response); //Session 체크 시 필수
		
		return "index";
	}	
}
