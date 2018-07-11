<%@ page language="java" contentType="text/html; charset=UTF-8"   pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   response.setHeader("cache-control","no-cache");
   response.setHeader("expires","0");
   response.setHeader("pragma","no-cache");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
<head>
  <meta  http-equiv="Content-Type"  content="text/html;charset=utf-8"/> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Ether Make</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" >
  <link rel="stylesheet" type="text/css" href="./font-awesome/css/font-awesome.min.css" >
  <link rel="stylesheet" type="text/css" href="./css/style.css" />
  <link rel="stylesheet" type="text/css" href="./css/media.css" />
  <link rel="stylesheet" type="text/css" href="./css/noto-sans.css" />
  <link rel="stylesheet" type="text/css" href="./css/font.css"/ >
  <link rel="shortcut icon" href="./ico/favicon.png" />
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
	</header><!-- header -->
<form action ="" method="post">
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
									<dd>${email}</dd>
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
										"주문 검토"를 클릭하면 Coinbase Commerce로 리디렉션되어 안전하게 구매를 완료하게됩니다.
									</p>
								</div>
							</div><!-- base_box -->
							<p class="pay_attention">모든 거래는 안전하게 암호화되어 있습니다.</p>
						</div>
					</div><!-- billing_info -->
				</div><!-- ch_body -->
				<!-- token_info hidden -->

				<input type="hidden" name="email" id="email" value="${email}">															
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
		<!--  token_info hidden -->
				<div class="continue_line cl">
					<div class="col-sm-6">
						<!-- <a href="/personalinfo.do" class="back" ><&nbsp;&nbsp;고객 정보로 돌아 가기</a> -->
						<a href="javascript:history.back(-1);" class="back" ><&nbsp;&nbsp;고객 정보로 돌아 가기</a>
					</div>
					<div class="col-sm-6">
						<button type="submit" class="btn btn-primary btn-lg btn-block" >결제하기</button>
					</div>
					<p class="cl"></p>
				</div><!-- continue_line -->
				</section><!-- sub_conts03 -->
		</div><!-- container -->
	</article><!-- Sub_inner -->
 </form>
 </body>
</html>