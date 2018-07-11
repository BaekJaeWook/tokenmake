/**
 *
 * @Class Name : InfoDetailController.java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 7. 3.	JWBACK		최초 생성
 *
 */
package com.jld.token.infodetailController;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.omg.CosNaming.NamingContextExtPackage.AddressHelper;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jld.token.common.LoginCommon;
import com.jld.token.loginController.LoginController;

@Controller
public class InfoDetailController {
	
	private static final Logger logger = LoggerFactory.getLogger(LoginController.class);		
	
	/**
	 * @author JWBACK
	 * @desc 구매 상품 정보 확인 페이지 호출
	 * @param request
	 * @param String
	 * @param ModelMap
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/infodetail.do")
	public String infoDetail(HttpServletRequest request, HttpServletResponse response,Model model, HttpSession session) throws Exception {
		
		LoginCommon.loginStatsCheck( session,  request,  response);
		
		logger.info("=========================");
		logger.info("infodetail.do test");
		logger.info("=========================");
		request.setCharacterEncoding("UTF-8");		
		//response.setContentType("text/html; charset=UTF-8");		
		response.setCharacterEncoding("UTF-8");
		
		//기본 Form 정보
		String paramMyToken = request.getParameter("mytoken");
		String paramTSymbol = request.getParameter("tsymbol");
		String paramTAmount = request.getParameter("tamount");
		String paramTDecimals = request.getParameter("tdecimals");
		String paramTaddr = request.getParameter("taddr");
		String paramTbuy = request.getParameter("tbuy");	
		
		//package sale form 정보
		String paramPsdate1 = request.getParameter("psdate1");		
		String paramPedate1 = request.getParameter("pedate1");
		String paramPrice1 = request.getParameter("price1");
		String paramHard1 = request.getParameter("hard1");		
		
		String paramPsdate2 = request.getParameter("psdate2");
		String paramPedate2 = request.getParameter("pedate2");
		String paramPrice2 = request.getParameter("price2");
		String paramHard2 = request.getParameter("hard2");
		
		String paramPsdate3 = request.getParameter("psdate3");
		String paramPedate3 = request.getParameter("pedate3");
		String paramPrice3 = request.getParameter("price3");
		String paramHard3 = request.getParameter("hard3");
		
		String paramLpage = request.getParameter("lpage");
		String paramSpage = request.getParameter("spage");
		
		System.out.println("========================================");
		System.out.println(" paramMyToken : " + paramMyToken);
		System.out.println(" paramTSymbol : " + paramTSymbol);
		System.out.println(" paramTAmount : " + paramTAmount);
		System.out.println(" paramTDecimals : " + paramTDecimals);
		System.out.println(" paramTaddr : " + paramTaddr);
		System.out.println(" paramTbuy : " + paramTbuy);

		System.out.println("========================================");
		
		System.out.println(" paramPsdate1 : " + paramPsdate1);
		System.out.println(" paramPedate1 : " + paramPedate1);
		System.out.println(" paramPrice1 : " + paramPrice1);
		System.out.println(" paramHard1 : " + paramHard1);
		
		System.out.println("========================================");
		
		System.out.println(" paramPsdate2 : " + paramPsdate2);
		System.out.println(" paramPedate2 : " + paramPedate2);
		System.out.println(" paramPrice2 : " + paramPrice2);
		System.out.println(" paramHard2 : " + paramHard2);
		
		System.out.println("========================================");
		
		System.out.println(" paramPsdate3 : " + paramPsdate3);
		System.out.println(" paramPedate3 : " + paramPedate3);
		System.out.println(" paramPrice3 : " + paramPrice3);
		System.out.println(" paramHard3 : " + paramHard3);
		
		System.out.println("========================================");
		
		System.out.println(" paramLpage : " + paramLpage);
		System.out.println(" paramSpage : " + paramSpage);
		
		System.out.println("================END==================");
		
		System.out.println("Input Model Strart");
		
		model.addAttribute("mytoken", paramMyToken);
		model.addAttribute("tsymbol", paramTSymbol);
		model.addAttribute("tamount", paramTAmount);
		model.addAttribute("tdecimals", paramTDecimals);
		model.addAttribute("taddr", paramTaddr);
		model.addAttribute("tbuy", paramTbuy);
		
		model.addAttribute("psdate1", paramPsdate1);
		model.addAttribute("pedate1", paramPedate1);
		model.addAttribute("price1", paramPrice1);
		model.addAttribute("hard1", paramHard1);
		
		model.addAttribute("psdate2", paramPsdate2);
		model.addAttribute("pedate2", paramPedate2);
		model.addAttribute("price2", paramPrice2);
		model.addAttribute("hard2", paramHard2);
		
		model.addAttribute("psdate3", paramPsdate3);
		model.addAttribute("pedate3", paramPedate3);
		model.addAttribute("price3", paramPrice3);
		model.addAttribute("hard3", paramHard3);
		
		model.addAttribute("lpage", paramLpage);
		model.addAttribute("spage", paramSpage);
		
		System.out.println("Input Model END");
		
		return "/infodetail/infodetail";
	}

	
	/**
	 * @author JWBACK
	 * @desc 개인 정보 입력 페이지 호출
	 * @param request
	 * @param String
	 * @param ModelMap
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/personalinfo.do")
	public String personalInfo(HttpServletRequest request, HttpServletResponse response,Model model, HttpSession session) throws Exception {
		
		//Session Check
		LoginCommon.loginStatsCheck( session,  request,  response);
		
		//기본 Form 정보
		String paramMyToken = request.getParameter("mytoken");
		String paramTSymbol = request.getParameter("tsymbol");
		String paramTAmount = request.getParameter("tamount");
		String paramTDecimals = request.getParameter("tdecimals");
		String paramTaddr = request.getParameter("taddr");
		String paramTbuy = request.getParameter("tbuy");	
		
		//package sale form 정보
		String paramPsdate1 = request.getParameter("psdate1");		
		String paramPedate1 = request.getParameter("pedate1");
		String paramPrice1 = request.getParameter("price1");
		String paramHard1 = request.getParameter("hard1");		
		
		String paramPsdate2 = request.getParameter("psdate2");
		String paramPedate2 = request.getParameter("pedate2");
		String paramPrice2 = request.getParameter("price2");
		String paramHard2 = request.getParameter("hard2");
		
		String paramPsdate3 = request.getParameter("psdate3");
		String paramPedate3 = request.getParameter("pedate3");
		String paramPrice3 = request.getParameter("price3");
		String paramHard3 = request.getParameter("hard3");
		
		String paramLpage = request.getParameter("lpage");
		String paramSpage = request.getParameter("spage");
		
		model.addAttribute("mytoken", paramMyToken);
		model.addAttribute("tsymbol", paramTSymbol);
		model.addAttribute("tamount", paramTAmount);
		model.addAttribute("tdecimals", paramTDecimals);
		model.addAttribute("taddr", paramTaddr);
		model.addAttribute("tbuy", paramTbuy);
		
		model.addAttribute("psdate1", paramPsdate1);
		model.addAttribute("pedate1", paramPedate1);
		model.addAttribute("price1", paramPrice1);
		model.addAttribute("hard1", paramHard1);
		
		model.addAttribute("psdate2", paramPsdate2);
		model.addAttribute("pedate2", paramPedate2);
		model.addAttribute("price2", paramPrice2);
		model.addAttribute("hard2", paramHard2);
		
		model.addAttribute("psdate3", paramPsdate3);
		model.addAttribute("pedate3", paramPedate3);
		model.addAttribute("price3", paramPrice3);
		model.addAttribute("hard3", paramHard3);
		
		model.addAttribute("lpage", paramLpage);
		model.addAttribute("spage", paramSpage);		
	
		return "infodetail/personalinfo";	
	}
	
	/**
	 * @author JWBACK
	 * @desc  결제 정보 확인 페이지 호출
	 * @param request
	 * @param String
	 * @param ModelMap
	 * @return String
	 * @throws Exception
	 */
	@RequestMapping(value = "/paycomfirm.do")
	public String payComfirm(HttpServletRequest request, HttpServletResponse response,Model model, HttpSession session) throws Exception {
		
		LoginCommon.loginStatsCheck( session,  request,  response); //Session 체크 시 필수
		
		logger.info("=========================");
		logger.info("paycomfirm.do test");
		logger.info("=========================");
		request.setCharacterEncoding("UTF-8");		
		//response.setContentType("text/html; charset=UTF-8");		
		response.setCharacterEncoding("UTF-8");
		
		StringBuffer sb = new StringBuffer();
		
		//Address 정보
		String paramMail = request.getParameter("email");
		String paramFname = request.getParameter("fname");
		String paramLname = request.getParameter("lname");
		String paramCompany = request.getParameter("company");
		String paramAddr = request.getParameter("addr");
		String paramAddrDetail = request.getParameter("addrdetail");
		String paramCity = request.getParameter("city");
		String paramNational = request.getParameter("national");
		String paramPros = request.getParameter("pros");
		String paramPcode = request.getParameter("pcode");		
		//Address 정보 끝
		
		sb.append(paramFname);
		sb.append(" ");
		sb.append(paramLname);
		sb.append(" ");
		sb.append(paramCompany);
		sb.append(" ");
		sb.append(paramAddr);
		sb.append(" ");
		sb.append(paramAddrDetail);
		sb.append(" ");
		sb.append(paramCity);
		sb.append(" ");
		sb.append(paramNational);
		sb.append(" ");
		sb.append(paramPros);
		sb.append(" ");
		sb.append(paramPcode);
		sb.append(" ");
		
		System.out.println("총 주소 정보 : " + sb.toString());
		
		System.out.println("========================================");
		System.out.println(" paramMail : " + paramMail);
		System.out.println(" paramFname : " + paramFname);
		System.out.println(" paramLname : " + paramLname);
		System.out.println(" paramCompany : " + paramCompany);
		System.out.println(" paramAddr : " + paramAddr);
		System.out.println(" paramAddrDetail : " + paramAddrDetail);
		System.out.println(" paramCity : " + paramCity);
		System.out.println(" paramNational : " + paramNational);
		System.out.println(" paramPros : " + paramPros);
		System.out.println(" paramPcode : " + paramPcode);
		
		//기본 Form 정보
		String paramMyToken = request.getParameter("mytoken");
		String paramTSymbol = request.getParameter("tsymbol");
		String paramTAmount = request.getParameter("tamount");
		String paramTDecimals = request.getParameter("tdecimals");
		String paramTaddr = request.getParameter("taddr");
		String paramTbuy = request.getParameter("tbuy");	
		
		//package sale form 정보
		String paramPsdate1 = request.getParameter("psdate1");		
		String paramPedate1 = request.getParameter("pedate1");
		String paramPrice1 = request.getParameter("price1");
		String paramHard1 = request.getParameter("hard1");		
		
		String paramPsdate2 = request.getParameter("psdate2");
		String paramPedate2 = request.getParameter("pedate2");
		String paramPrice2 = request.getParameter("price2");
		String paramHard2 = request.getParameter("hard2");
		
		String paramPsdate3 = request.getParameter("psdate3");
		String paramPedate3 = request.getParameter("pedate3");
		String paramPrice3 = request.getParameter("price3");
		String paramHard3 = request.getParameter("hard3");
		
		String paramLpage = request.getParameter("lpage");
		String paramSpage = request.getParameter("spage");
		
		System.out.println("========================================");
		System.out.println(" paramMyToken : " + paramMyToken);
		System.out.println(" paramTSymbol : " + paramTSymbol);
		System.out.println(" paramTAmount : " + paramTAmount);
		System.out.println(" paramTDecimals : " + paramTDecimals);
		System.out.println(" paramTaddr : " + paramTaddr);
		System.out.println(" paramTbuy : " + paramTbuy);

		System.out.println("========================================");
		
		System.out.println(" paramPsdate1 : " + paramPsdate1);
		System.out.println(" paramPedate1 : " + paramPedate1);
		System.out.println(" paramPrice1 : " + paramPrice1);
		System.out.println(" paramHard1 : " + paramHard1);
		
		System.out.println("========================================");
		
		System.out.println(" paramPsdate2 : " + paramPsdate2);
		System.out.println(" paramPedate2 : " + paramPedate2);
		System.out.println(" paramPrice2 : " + paramPrice2);
		System.out.println(" paramHard2 : " + paramHard2);
		
		System.out.println("========================================");
		
		System.out.println(" paramPsdate3 : " + paramPsdate3);
		System.out.println(" paramPedate3 : " + paramPedate3);
		System.out.println(" paramPrice3 : " + paramPrice3);
		System.out.println(" paramHard3 : " + paramHard3);
		
		System.out.println("========================================");
		
		System.out.println(" paramLpage : " + paramLpage);
		System.out.println(" paramSpage : " + paramSpage);
		
		System.out.println("================END==================");
		
		System.out.println("Input Model Strart");	
				
		model.addAttribute("email", paramMail);
		model.addAttribute("fname", paramFname);
		model.addAttribute("lname", paramLname);
		model.addAttribute("company", paramCompany);
		model.addAttribute("addr", paramAddr);
		model.addAttribute("tbuy", paramAddrDetail);		
		model.addAttribute("city", paramCity);
		model.addAttribute("national", paramNational);
		model.addAttribute("pros", paramPros);
		model.addAttribute("pcode", paramPcode);		
		
		model.addAttribute("sb", sb);
		
		model.addAttribute("mytoken", paramMyToken);
		model.addAttribute("tsymbol", paramTSymbol);
		model.addAttribute("tamount", paramTAmount);
		model.addAttribute("tdecimals", paramTDecimals);
		model.addAttribute("taddr", paramTaddr);
		model.addAttribute("tbuy", paramTbuy);
		
		model.addAttribute("psdate1", paramPsdate1);
		model.addAttribute("pedate1", paramPedate1);
		model.addAttribute("price1", paramPrice1);
		model.addAttribute("hard1", paramHard1);
		
		model.addAttribute("psdate2", paramPsdate2);
		model.addAttribute("pedate2", paramPedate2);
		model.addAttribute("price2", paramPrice2);
		model.addAttribute("hard2", paramHard2);
		
		model.addAttribute("psdate3", paramPsdate3);
		model.addAttribute("pedate3", paramPedate3);
		model.addAttribute("price3", paramPrice3);
		model.addAttribute("hard3", paramHard3);
		
		model.addAttribute("lpage", paramLpage);
		model.addAttribute("spage", paramSpage);
		
		System.out.println("Input Model END");
		
		return "/infodetail/paycomfirm";
	}
}
