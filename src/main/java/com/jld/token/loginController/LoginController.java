/**
 *
 * @Class Name : LoginController.java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 6. 27.	JWBACK		최초 생성
 *
 */
package com.jld.token.loginController;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.ibatis.session.SqlSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;

import com.jld.token.loginservice.LoginService;

@Controller
//@SessionAttributes("sessionID")
public class LoginController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);
	
	SqlSession sqlSession;
	
	@Autowired
	BCryptPasswordEncoder passwordEncoder;
		
	@Autowired
	LoginService loginService;	
	
	/**
	 * @author JWBACK
	 * @desc 로그인 호출 
	 * @param request
	 * @param String
	 * @param ModelMap
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/login.do")
	public String memberLoing(Model model) {
		
		logger.info("=========================");
		logger.info("login.do test");
		logger.info("=========================");
		
		return "/member/login/login";
	}	
	
	/**
	 * @author JWBACK
	 * @desc 회원가입페이지 호출 
	 * @param request
	 * @param String
	 * @param ModelMap
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/register.do", method = RequestMethod.GET)
	public String memberRegister(HttpServletRequest request, HttpServletResponse response,Model model) {
		
		logger.info("=========================");
		logger.info("register.do Starts");
		
		return "/member/register/register";
	}	
	
	/**
	 * @author JWBACK
	 * @desc 로그인 체크 호출 
	 * @param request
	 * @param String
	 * @param ModelMap
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/logincheck.do")
	public Model loginCheck(HttpServletRequest request, HttpServletResponse response, Model model,HttpSession session) {
		
		logger.info("=========================");
		logger.info("/logincheck.do start");			
		logger.info("=========================");
		
			
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		PrintWriter out ;
		String paramID,paramPw;
		
		paramID = request.getParameter("userId");
		paramPw = request.getParameter("pw");
		
		logger.info("userID :" + paramID + "    userPw : " + paramPw);		
		
		//패스워드 암호화
		String encryptPassword = passwordEncoder.encode(paramPw);  
		System.out.println("패스워드 암호화 Value :" + encryptPassword);
		//끝
		
		Map<String,Object> hm = new HashMap<String, Object>(); //조회 Param Setting		
		hm.put("id", paramID);	    
		hm.put("pw", paramPw);
	    		
		List<Map<String, Object>> loginList = loginService.getIdList(hm); //회원 정보 조회 가져옴		  
		
		System.out.println("이전 주소 : " + request.getHeader("referer"));
		String beforeUrl = request.getHeader("referer");
 
		try {
			out = response.getWriter();
			
			String userId = "";
			String userPw = "";
			
			if(loginService.getIdList(hm).size() > 0) {
				
				userId = (String)loginList.get(0).get("UserID");
				userPw = (String)loginList.get(0).get("PW");
				
				if(passwordEncoder.matches(paramPw, (String)loginList.get(0).get("PW"))){
					
					System.out.println("계정정보 일치");
					session = request.getSession(true);
					session.setAttribute("sessionID", userId);
					
					out.println("<script>alert('정상 로그인 되었습니다.'); location.href='/';</script>");			
							
					out.flush();
					
					//returnUrl = "redirect:/personalinfo.do";
					
				}else{
					System.out.println("계정정보 불일치");
					
					out.println("<script>alert('회원 정보가 없습니다. 확인 후 로그인 해주세요'); location.href='/login.do';</script>");					
					out.flush();					
				}
				
				System.out.println("getUserID : " + loginList.get(0).get("UserID") + "   UserPw : " + loginList.get(0).get("PW"));
				
			}else{
				System.out.println("계정정보 불일치");
				
				out.println("<script>alert('회원 정보가 없습니다. 확인 후 로그인 해주세요'); location.href='/login.do';</script>");					
				out.flush();
			}
		}catch (Exception e) {
			System.out.println(e.getStackTrace());
		}
                
		model.addAttribute("login",loginService.getIdList(hm)); 
		
		logger.info("loginService.getIdList().isEmpty() ;" + loginService.getIdList(hm).isEmpty());
		logger.info("loginService.getIdList().size() ;" + loginService.getIdList(hm).size());
		
		//ID 체크 
		/*Stirng rawPassword="1234"; //입력된 비밀번호
		String encodedPassword = "$2a$10$fZL/N/Xotw.zH2n8A/JbUugjC4SegtDKzh2t.GTAauv5k8WRljApa";//암호화되어 DB에 저장된 패스워드
		if(passwordEncoder.matches(rawPassword, encodedPassword )){
			System.out.println("계정정보 일치");
		}else{
			System.out.println("계정정보 불일치");
		}*/
		 //returnURL = "redirect:/board/listPage";

		return null;
	}	
	
	 // 로그아웃 하는 부분
    @RequestMapping(value="/logout.do")
    public String logout(HttpSession session) {
        session.invalidate(); // 세션 전체를 날려버림
        //session.removeAttribute("login"); // 하나씩 하려면 이렇게 해도 됨.
        return "redirect:/"; 
    }
}
