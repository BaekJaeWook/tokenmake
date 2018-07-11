/**
*
* @Class Name : MemberController.JAVA
* @Description : 회원 관리 구매
* @Modification Information
*
*   수정일		수정자		수정내용
*   -------	--------	---------------------------
*   2018.06.27	JWBACK		최초 생성
*
*/

package com.jld.token.memberController;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.jld.token.memberservice.MemberService;

@Controller
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
		
	@Autowired
	MemberService memberService;	
	
	/**
	 * @author JWBACK
	 * @desc 회원가입페이지 호출 
	 * @param request
	 * @param String
	 * @param ModelMap
	 * @return String
	 * @throws Exception
	 */	
	@RequestMapping(value = "/memberreg.do")
	public String  insertmemberReg(HttpServletRequest request, HttpServletResponse response,ModelAndView model) {

		PrintWriter out = null;		
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		logger.info("=========================");
		logger.info("memberreg.do Starts");
		
		String paramID = request.getParameter("email");
		String paramPw = request.getParameter("pw");	
		
		logger.info("ParmID" + paramID +"  ParamPw : " + paramPw);
		logger.info("=========================");
		
		//패스워드 암호화
		String encryptPassword = passwordEncoder.encode(paramPw);  
		System.out.println("패스워드 암호화 Value :" + encryptPassword);
		
		Map<String,Object> hm = new HashMap<String, Object>(); //회원 가입 Param Setting	
		hm.put("id", paramID);    
		hm.put("pw", encryptPassword);		
		
		int insertRow = 0;		
		
		try {			
			out = response.getWriter();
			
			try {
				
				insertRow = memberService.insertMemberReg(hm);
				
			}catch(Exception e) {				
				
				out.println("<script>alert('가입 ERROR 관리자에게 문의해 주세요'); location.href='/';</script>");				
				out.flush();
				e.printStackTrace();
			}
			
			if(insertRow > 0) {								
				
				out.println("<script>alert('정상적으로 회원 가입이 되었습니다.'); location.href='/';</script>");
				out.flush();				
			}
			
			System.out.println("회원 가입 insertRow :" + insertRow);
			
		}catch(Exception e) {
			e.printStackTrace();
		}		
		return null;
	}
}
