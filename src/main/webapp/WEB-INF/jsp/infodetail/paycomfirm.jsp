<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   response.setHeader("cache-control","no-cache");
   response.setHeader("expires","0");
   response.setHeader("pragma","no-cache");   
   //response.setHeader("content-Type","text/javascript");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
 <head>
  <meta  http-equiv="Content-Type"  content="text/html;charset=utf-8"/> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Ether Make</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
  <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" >
  <link rel="stylesheet" type="text/css" href="./font-awesome/css/font-awesome.min.css" >
  <link rel="stylesheet" type="text/css" href="./css/style.css" /> 
  <link rel="stylesheet" type="text/css" href="./css/media.css" />
  <link rel="stylesheet" type="text/css" href="./css/noto-sans.css" />
  <link rel="stylesheet" type="text/css" href="./css/font.css"/ >
  <link rel="shortcut icon" href="./ico/favicon.png" />
  
  <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="./js/jquery-3.3.1.slim.js"></script>
  <script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>  
  <script src="https://code.jquery.com/jquery-1.12.4.min.js"></script>  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdn.rawgit.com/ethereumjs/browser-builds/2fb69a714afe092b06645286f14b94f41e5c062c/dist/ethereumjs-tx.js"></script>    
  
  <script src="./js/web3.js"></script>
  <script src="./js/web3.min.js"></script>    	    
  <script src="./js/script.js"></script>

  <script type="text/javascript">  
  	
  	$(document).ready(function(){  		
  		//alert("test");  
  		console.log("ready1");  		
  		//var con = document.getElementById("myModal");  	      	    
  		//$('#popUpModal').modal('show');  	    
  	});
  	
  	
	/*  $(window).on('load',function(){
		$('#popUpModal').modal('show');
	}); 
   */
    
    function cb(err,res){
    	if(res != null){
    		alert(res);
    	}else{
    		alert(err);
    	}
    }
  </script>	
  
</head>

 <body class="sub_body">
 
	<header>
		<div class="container">
			<div class="row">
				<div class="col-sm-6">
					<p class="sub_logo fl">
						<a href="/"><img src="./images/logo_header.png" /></a>
					</p>
				</div>
				<div class="col-sm-6">
					<p class="fr">
						<c:choose>
								<c:when test='${not empty sessionID}' > 
									<a href="/logout.do" class="go_login">LogOut</a>	
								</c:when>
								<%-- <c:otherwise>					
									<a href="/logout.do" class="go_login">LogOut</a>
								</c:otherwise> --%>
						</c:choose>
					</p>
				</div>
			</div>
		</div>
	</header>
	<!-- header -->
<form id="frmPayment" name="frmPayment" method="post"> 
	<article class="Sub_inner">
		<div class="container">
				<section class="sub_conts03 sub_re">
					<h1 class="sub_title">지불 방법</h1>
					<div class="route_line"><span>고객 정보</span><span class="arr_space">></span><span  class="theblue">지불 방법</span><span class="arr_space">></span>주문 검토</div>
				<div class="ch_body">
					<div class="col-md-12 contact_info">
						<h3>고객 정보</h3>
						<!-- <a href="checkout_re.html" class="repair">정보 수정</a> -->
						<div class="write_line">
							<div class="info_box">
								<dl>
									<dt>접속</dt>
									<dd>${sessionID}</dd>
								</dl>
								<dl class="paym">
									<dt>결제</dt>
									<dd>${sb}</dd>
								</dl>
							</div><!-- info_box -->
						</div>
					</div><!-- contact_info -->
					<div class="col-md-12 billing_info">
						<h3>지불 방법</h3>
						<div class="write_line">
							<div class="base_box">
								<div class="top">Coinbase <span class="comm">Commerce</span></div>
								<div class="text">
									<img src="./images/credits.png" alt="카드 이미지"/>
									<p class="explain">
										"결제하기"를 클릭하면 JLdevelopment Commerce로 리디렉션되어 안전하게 구매를 완료하게됩니다.<br>										
									</p>
									<div class="Add_group">
										<div class="add_line">
											<p class="add_tlt">Send Address</p>
											<input type="text" id="payaddr" name="payaddr" class="form-control">
										</div><!-- add_line -->
										<div class="add_line">
											<p class="add_tlt">Private Key</p>
											<input type="text" id="priaddr" name="priaddr" class="form-control">
											<center><b>"Private Key "는 저장 되지 않습니다"</b></center>
										</div><!-- add_line -->
									</div><!-- Add_group -->
								</div>
							</div><!-- base_box -->
							<p class="pay_attention">모든 거래는 안전하게 암호화되어 있습니다.</p>
						</div>
					</div><!-- billing_info -->
				</div><!-- ch_body -->
				<!-- token_info hidden -->

				<input type="hidden" name="email" id="email" value="${sessionID}">															
				<input type="hidden" name="fname" id="fname" value="${fname}">
				<input type="hidden" name="lname" id="lname" value="${lname}">
				<input type="hidden" name="company" id="company" value="${company}">
				<input type="hidden" name="addr" id="addr" value="${addr}">
				<input type="hidden" name="addrdetail" id="addrdetail" value="${addrdetail}">
				<input type="hidden" name="city" id="city" value="${city}">
				<input type="hidden" name="national" id="national" value="${national}">
				<input type="hidden" name="pros" id="pros" value="${pros}">
				<input type="hidden" name="pcode" id="pcode" value="${pcode}">
				
				<input type="hidden" name="mytoken" id="mytoken" value="${mytoken}">															
				<input type="hidden" name="tsymbol" id="tsymbol" value="${tsymbol}">
				<input type="hidden" name="tamount" id="tamount" value="${tamount}">
				<input type="hidden" name="tdecimals" id="tdecimals" value="${tdecimals}">
				<input type="hidden" name="taddr" id="taddr" value="${taddr}">
				<input type="hidden" name="tbuy" id="tbuy" value="${tbuy}">
							
				<input type="hidden" name="psdate1" id="psdate1" value="${psdate1}">
				<input type="hidden" name="pedate1" id="pedate1" value="${psdate1}">
				<input type="hidden" name="price1" id="price1" value="${price1}">
				<input type="hidden" name="hard1" id="hard1" value="${hard1}">
				<input type="hidden" name="psdate2" id="psdate2" value="${psdate2}">
				<input type="hidden" name="pedate2" id="pedate2" value="${pedate2}">
				<input type="hidden" name="price2" id="price2" value="${price2}">
				<input type="hidden" name="hard2" id="hard2" value="${hard2}">
				<input type="hidden" name="psdate3" id="psdate3" value="${psdate3}">
				<input type="hidden" name="pedate3" id="pedate3" value="${pedate3}">
				<input type="hidden" name="price3" id="price3" value="${price3}">
				<input type="hidden" name="hard3" id="hard3" value="${hard3}">
				<input type="hidden" name="lpage" id="lpage" value="${lpage}">
				<input type="hidden" name="spage" id="spage" value="${spage}">
				
				<input type="hidden" name="camount" id="spage" value="10">
				<input type="hidden" name="tamount" id="spage" value="100">
				
				<input type="hidden" name="hash" id="hash" value="">
				
		<!--  token_info hidden -->
				<div class="continue_line cl">
					<div class="col-sm-6">
						<!-- <a href="/personalinfo.do" class="back" ><&nbsp;&nbsp;고객 정보로 돌아 가기</a> -->
						<a href="javascript:history.back(-1);" class="back" ><&nbsp;&nbsp;고객 정보로 돌아 가기</a>
					</div>
					<div class="col-sm-6">
						<button type="submit" class="btn btn-primary btn-lg btn-block"   onClick="paymemt(); return false;">결제하기</button>
					</div>
					<p class="cl"></p>
				</div><!-- continue_line -->
				</section><!-- sub_conts03 -->
		</div><!-- container -->
	</article><!-- Sub_inner -->	
 
 	 <!-- Modal -->
 <div class="modal fade" id="popUpModal" role="dialog" data-backdrop="static" data-keyboard="false">
    <div class="modal-dialog">
      <!-- Modal content-->
      <div class="modal-content">
        <div class="modal-header">
          <button type="button" class="close" data-dismiss="modal">&times;</button>
          <h4 class="modal-title">Modal Header</h4>
        </div>
        <div class="modal-body">
          <div class="thanks_conts">
			<h1>감사합니다.</h1>
			<h1>Ethereum 결제가 완료되었습니다.</h1><br/>
			<span class="company">JLDevelopment</span> 는 귀하의 주문을 받았습니다.<br/>
			귀하의 결제 내역은 <a href="https://etherscan.io/">https://etherscan.io/</a> 에서 확인 가능합니다.<br/>
			구매하신 제품은 메인넷 배포발행 후 신청하신 메일로 내역 보내드리겠습니다.<br/>			  
			<div class="link_text">
				<p class="tlt">결제 내역 확인</p>
				<ul class="link_ul" id="scan">
					<!-- <li><a href="https://etherscan.io/address/" id="scanaddr">https://etherscan.io/address/</a></li>
					<li><a href="https://etherscan.io/tx/" id >https://etherscan.io/tx/</a></li> -->
				</ul>
				<p>위 주소를 클릭하시면 내역을 볼 수 있습니다.</p>
			</div><!-- link_text -->
		  </div><!-- thanks_conts -->
        </div><!-- modal-body -->
        <div class="modal-footer">
		  <h3>JLDevelopment</h3>	
          <button type="button" class="btn btn-default" data-dismiss="modal" onclick="location.href='/'">닫기</button>
        </div>
      </div>
	  <!-- Modal content End-->    
    </div>
  </div>
  <!-- Modal End-->
  </form>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
 </body>
</html>