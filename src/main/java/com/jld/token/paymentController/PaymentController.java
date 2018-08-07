/**
 *
 * @Class Name : PaymentDbController .java
 * @Description : 
 * @Modification Information
 *
 *   수정일		수정자		수정내용
 *   -------	--------	---------------------------
 *   2018. 7. 20.	JWBACK		최초 생성
 *
 */
package com.jld.token.paymentController;

import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.datasource.DataSourceTransactionManager;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.TransactionDefinition;
import org.springframework.transaction.TransactionStatus;
import org.springframework.transaction.support.DefaultTransactionDefinition;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.jld.token.common.LoginCommon;
import com.jld.token.paymentservice.PaymentService;

@Controller
public class PaymentController {
	
	private static final Logger logger = LoggerFactory.getLogger(PaymentController.class);	
	
	@Autowired
	private DataSourceTransactionManager transactionManager;
	
	@Autowired
	PaymentService paymentService;	
	
	/**
	 * @author JWBACK
	 * @desc 결제 성공 시 저장 호출 
	 * @param request
	 * @param String
	 * @param ModelMap
	 * @return String
	 * @throws Exception
	 */	
	@RequestMapping(value = "/insertpayment.do")
	public String insertPaymentDb(HttpServletRequest request, HttpServletResponse response,Model model ,HttpSession session) {

		LoginCommon.loginStatsCheck( session,  request,  response);
		
		DefaultTransactionDefinition def = new DefaultTransactionDefinition();
		def.setName("Mysql");
		def.setPropagationBehavior(TransactionDefinition.PROPAGATION_REQUIRED);
		
		TransactionStatus status = transactionManager.getTransaction(def);
		
		//ModelAndView modelAndView = new ModelAndView(new MappingJacksonJsonView());
		PrintWriter out = null;		
		
		response.setCharacterEncoding("UTF-8");
		response.setContentType("text/javascript; charset=UTF-8");
		
		logger.info("=========================");
		logger.info("insertPayDbSave.do Starts");
		
		//String callBack = request.getParameter("callback");
		/*String payParam = request.getParameter("payParam");
		payParam = payParam.replaceAll("&quot;", "\"");
		
		List<Map<String, Object>> payList = JsonUtil.JsonToList(payParam);
		payList.get(0);
		
		System.out.println("payList.get(0)  : " + payList.get(0));*/
		
		//Address 정보
		String paramEMail = request.getParameter("email");
		String paramFname = request.getParameter("fname");
		String paramLname = request.getParameter("lname");
		String paramCompany = request.getParameter("company");
		String paramAddr = request.getParameter("addr");
		String paramAddrDetail = request.getParameter("addrdetail");
		String paramCity = request.getParameter("city");
		String paramNational = request.getParameter("national");
		String paramPros = request.getParameter("pros");
		String paramPcode = request.getParameter("pcode");
		
		System.out.println("========================================");
		System.out.println(" paramMail : " + paramEMail);
		System.out.println(" paramFname : " + paramFname);
		System.out.println(" paramLname : " + paramLname);
		System.out.println(" paramCompany : " + paramCompany);
		System.out.println(" paramAddr : " + paramAddr);
		System.out.println(" paramAddrDetail1 : " + paramAddrDetail);
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
		String paramTbuy = request.getParameter("tbuy");	 //Token 과 Package 구분자 
		
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
		
		String paramPayAddr = request.getParameter("payaddr");
		String paramHash = request.getParameter("hash");
		
		System.out.println(" paramPayAddr : " + paramPayAddr);
		System.out.println(" paramHash : " + paramHash);
		
		System.out.println("================END==================");
		
		//JSONObject obj = new JSONObject();
		logger.info("=========================");
		
		Map<String,Object> hm = new HashMap<String, Object>(); 
		
		try {			
			out = response.getWriter();
			int resultRow = 0;
			int resultRowPerson = 0;
			
			try {				
				//지불 정보				
				hm.put("email", paramEMail);
				hm.put("fname", paramFname);
				hm.put("lname", paramLname);
				hm.put("company", paramCompany);
				hm.put("addr", paramAddr);
				hm.put("buydiv", paramTbuy);
				
				hm.put("addrdetail", paramAddrDetail);
				hm.put("city", paramCity);
				hm.put("national", paramNational);
				hm.put("pros", paramPros);
				hm.put("pcode", paramPcode);				
				
				
				if(("").equals(paramTAmount) || null == paramTAmount) {
					paramTAmount = "0";
				}
				
				if(("").equals(paramTDecimals) || null == paramTDecimals) {
					paramTDecimals = "18";
				}
				
				if(StringUtils.isEmpty(paramPrice1)) {
					paramPrice1 = "0";							
				}
				
				if(StringUtils.isEmpty(paramHard1)) {
					paramHard1 = "0";							
				}
				
				if(StringUtils.isEmpty(paramPrice2)) {
					paramPrice2 = "0";							
				}
				
				if(StringUtils.isEmpty(paramHard2)) {
					paramHard2 = "0";							
				}
				
				if(StringUtils.isEmpty(paramPrice3)) {
					paramPrice3 = "0";							
				}
				
				if(StringUtils.isEmpty(paramHard3)) {
					paramHard3 = "0";							
				}
				
				//토큰 구매 정보
				hm.put("id", paramEMail);
				hm.put("mytoken", paramMyToken);
				hm.put("tsymbol", paramTSymbol);
				hm.put("tamount", paramTAmount);
				hm.put("tdecimals", paramTDecimals);
				hm.put("taddr", paramTaddr);
				
				//패키지 구매 정보					
				hm.put("psdate1", paramPsdate1);
				hm.put("pedate1", paramPedate1);
				hm.put("price1", paramPrice1);
				hm.put("hard1", paramHard1);
				
				hm.put("psdate2", paramPsdate2);
				hm.put("pedate2", paramPedate2);
				hm.put("price2", paramPrice2);
				hm.put("hard2", paramHard2);
				
				hm.put("psdate3", paramPsdate3);
				hm.put("pedate3", paramPedate3);
				hm.put("price3", paramPrice3);
				hm.put("hard3", paramHard3);
				
				hm.put("lpage", paramLpage);
				hm.put("spage", paramSpage);				
				
				hm.put("hash", paramHash );
				hm.put("sendaddr", paramPayAddr);	
				
				model.addAttribute("txhash", paramHash);
				
				try {				
						System.out.println("tbuy div : " + paramTbuy);
						
					if("t".equals(paramTbuy)) {  //토근 구매 정보 저장							
						paymentService.insertPaymentPersonInfo(hm);  //결제 개인 주소 저장							
						resultRow = paymentService.insertPaymentReg(hm);			//토큰 구매 정보 저장
						System.out.println("Ins Token Save : " + resultRow);
					}else {						//패키지 구매 정보 저장							
						paymentService.insertPaymentPersonInfo(hm);  //결제 개인 주소 저장
						resultRow = paymentService.insertPayPackageReg(hm);
						System.out.println("Ins TokenPackage Save : " + resultRow);
					}
					
					transactionManager.commit(status);
				}catch(Exception e) {
					
					transactionManager.rollback(status);
					
					out.println("<script>alert(' ERROR 관리자에게 문의해 주세요'); location.href='/';</script>");				
					out.flush();
					e.printStackTrace();
				}
				
			}catch(Exception e) {				
				
				out.println("<script>alert(' ERROR 관리자에게 문의해 주세요'); location.href='/';</script>");				
				out.flush();
				e.printStackTrace();
			}
		}catch(Exception e) {
			e.printStackTrace();
		}		
		return "infodetail/paycomfirm";
	} 
}
