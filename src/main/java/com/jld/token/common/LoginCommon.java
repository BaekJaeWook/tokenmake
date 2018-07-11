/**
 *
 * @Class Name : .java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 7. 9.	JWBACK		최초 생성
 *
 */
package com.jld.token.common;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class LoginCommon {	 
	
	public static void loginStatsCheck(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
    	
	 	   System.out.println(session.getAttribute("sessionID"));
	 	   String returnUrl = "/";
	     	
	     	System.out.println("이전 주소 : " + request.getHeader("referer"));	     
	     	
	     	try {
	     		 if ( session == null || session.getAttribute("sessionID") == null )
	     	      {
	     	        response.sendRedirect("/login.do");
	     	      }
	     	      else
	     	      {
	     	        //chain.doFilter(req, res);
	     	      }
	     	}catch(Exception e) {
	     		returnUrl = "redirect:/login.do";
	     		e.printStackTrace();
	     	}
	   }
}
