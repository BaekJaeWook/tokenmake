<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8" import="java.net.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   response.setHeader("cache-control","no-cache");
   response.setHeader("expires","0");
   response.setHeader("pragma","no-cache");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html >
<head>
  <meta  http-equiv="Content-Type"  content="text/html;charset=utf-8"/> 
  <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
  <title>Ether Make</title>
  <meta name="keywords" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
  <meta name="description" content="" />
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
    	
  <script type="text/javascript">  
  	
  	$(document).ready(function(){  		
  		//alert("test");  
  		console.log("ready");
  		if('${tbuy}' == "t"){
  			//alert("tbuy");
  			$("#tokenarea").show();  	
  			$("#packagearea").hide();
  			$("#buttonarea").show();  			
  		}else{
  			//alert("package");
  			$("#buybuttonarea").hide();  			
  		}
  		//alert('${tbuy}');
  	});
  	
  </script>	
</head>
<%
 Cookie cookies[] = request.getCookies();
String reqTbuy = "";
 
if(cookies != null){	
	for(int i = 0 ; i<cookies.length ; i++){
		if(cookies[i].getName().equals("mytoken")){		
			System.out.println("jsp page getName: " + cookies[i].getName());
			System.out.println("jsp page getValue: " + URLDecoder.decode(cookies[i].getValue(),"UTF-8"));
		}else if(cookies[i].getName().equals("tsymbol")){
			System.out.println("jsp page getName: " + cookies[i].getName());
			System.out.println("jsp page getValue: " + URLDecoder.decode(cookies[i].getValue(),"UTF-8"));
		}else if(cookies[i].getName().equals("tamount")){
			System.out.println("jsp page getName: " + cookies[i].getName());
			System.out.println("jsp page getValue: " + URLDecoder.decode(cookies[i].getValue(),"UTF-8"));
		}else if(cookies[i].getName().equals("tdecimals")){
			System.out.println("jsp page getName: " + cookies[i].getName());
			System.out.println("jsp page getValue: " + URLDecoder.decode(cookies[i].getValue(),"UTF-8"));
		}else if(cookies[i].getName().equals("taddr")){
			System.out.println("jsp page getName: " + cookies[i].getName());
			System.out.println("jsp page getValue: " + URLDecoder.decode(cookies[i].getValue(),"UTF-8"));
		}else if(cookies[i].getName().equals("tbuy")){
			System.out.println("jsp page getName: " + cookies[i].getName());
			System.out.println("jsp page getValue: " + URLDecoder.decode(cookies[i].getValue(),"UTF-8"));
		}
	}
} 
%>
 <body class="sub_body">
	<form name="infodetail" action="/personalinfo.do" method="post">
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

	<article class="Sub_inner">
		<div class="container">
			
			<div class="conts_wrap">			 
				<section class="conts_top">
					<c:choose>
								<c:when test="${tbuy == 't'}" > 
					<h1 class="sub_title">Input Information<p class="go_back"><a href="javascript:history.back(-1);" >이전페이지</a></p></h1>
								</c:when>
								<c:otherwise>
					<h1 class="sub_title">Input Information<p class="go_back"><a href="javascript:history.back(-1);" >이전페이지</a></p></h1>			
								</c:otherwise>
					</c:choose>
					<div class="token_top">
						<div class="col-md-3">
							<p class="img_token double_token">
								<img src="./images/sub_crowd01.png" />
								<span class="exchange">1ETH = 1000TKN</span>
							</p>
						</div>
						<div class="col-md-9" >
							<dl class="token_text">
							<c:choose>
								<c:when test="${tbuy == 't'}" > 
									<dt>ERC20 Token</dt>	
								</c:when>
								<c:otherwise>
									<dt>ERC20 Crowdsale Package</dt>
								</c:otherwise>								
							</c:choose>
								<!-- <dd><span class="the_price">$1000</span><a href="" class="go_growd">삭제</a></dd> -->
							</dl><!-- token_text -->						
					</div><!-- token_top -->
					<p class="cl"></p>
					<div class="token_info">
						<div class="col-md-6 col_box">
							<p class="call">Token Name : <span class="string"> ${mytoken} </span></p>
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Token Symbol : <span class="string"> ${tsymbol} </span></p>
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Token Amount : <span class="string"> ${tamount} </span></p>
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Token Decimals :<span class="string"> ${tdecimals} </span></p>
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Token Owner : <span class="string"> ${taddr} </span></p>
						</div>
						<p class="cl"></p>
					</div><!-- token_info -->
					
					<!-- token_info hidden -->
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
					
					<div id="buybuttonarea">
					<div class="Price_check">
						<p class="token_price">$ 200.00</p>
						<div class="col-md-6 button_zone check_zone">
							<button type="sumbit" class="btn btn-default">구입하기</button>
						</div>
					</div><!-- Price_check -->
					<div class="tok_attention">
						<span class="txt">EtherMake는 모든 주문을 USD로 처리합니다. 장바구니의 콘텐츠가 현재 USD로 표시되어 있지만 가장 최근 환율로 USD를 사용하여 결제합니다.</span>
					</div><!-- tok_attention -->
					</div>
				</section><!-- sub_conts01 -->
				<div id="packagearea">
				<section class="conts_middle" >
					<h3>First round of token sale</h3>
					<div class="token_info">
						<div class="col-md-6 col_box">
							<p class="call">Start Date : <span class="string"> ${psdate1} </span></p>
						</div>
						<div class="col-md-6 col_box">
							<p class="call">End Date : <span class="string"> ${pedate1} </span></p>
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Token Allocation : </p>
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Price 1Ether = x Token : <span class="string"> ${price1} </span></p>
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Soft Cap : </p>
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Hard Cap : <span class="string"> ${hard1} </span></p>
						</div>
						<p class="cl"></p>
					</div><!-- token_info -->
				</section><!-- conts_middle -->

				<section class="conts_middle">
					<h3>Second round of token sale</h3>
					<div class="token_info">
						<div class="col-md-6 col_box">
							<p class="call">Start Date : <span class="string"> ${psdate2} </span></p>
						</div>
						<div class="col-md-6 col_box">
							<p class="call">End Date : <span class="string"> ${pedate2} </span></p>
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Token Allocation : </p>
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Price 1Ether = x Token : <span class="string"> ${price2} </span></p>
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Soft Cap : </p>
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Hard Cap : <span class="string"> ${hard2} </span></p>
						</div>
						<p class="cl"></p>
					</div><!-- token_info -->
				</section><!-- conts_middle -->

				<section class="conts_middle">
					<h3>Third round of token sale</h3>
					<div class="token_info">
						<div class="col-md-6 col_box">
							<p class="call">Start Date : <span class="string"> ${psdate3} </span></p>
						</div>
						<div class="col-md-6 col_box">
							<p class="call">End Date : <span class="string"> ${pedate3} </span></p>
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Token Allocation : </p>
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Price 1Ether = x Token : <span class="string"> ${price3} </span></p>
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Soft Cap : </p>
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Hard Cap : <span class="string"> ${hard3} </span></p>
						</div>
						<p class="cl"></p>
					</div><!-- token_info -->
				</section><!-- conts_middle -->

				<section class="conts_bottom">
					<h3>Landing Page</h3>
					<div class="ico_form">
						<dl>
							<dt>Do you need a Landing Page for ICO?<span class="answer"> ${lpage}</span></dt>
						</dl>
						<dl>
							<dt>Will you provide any sample Page for your ICO?<span class="answer"> ${spage}</span></dt>
						</dl>
						<p class="cl"></p>
					</div><!-- ico_form -->
					<div class="Price_check" id="buybuttonarea">
						<p class="token_price">$ 200.00</p>
						<div class="col-md-6 button_zone check_zone">
							<button type="sumbit" class="btn btn-default" onclick="location.href='/personalinfo.do'">구입하기</button>
						</div>
						<div class="tok_attention">
						<span class="txt">EtherMake는 모든 주문을 USD로 처리합니다. 장바구니의 콘텐츠가 현재 USD로 표시되어 있지만 가장 최근 환율로 USD를 사용하여 결제합니다.</span>
					</div><!-- tok_attention -->
					</div><!-- Price_check -->
				</section><!-- conts_bottom -->

			</div><!-- conts_wrap -->

		</div><!-- container -->
		</div>
	</article><!-- Sub_inner -->
	</form>
 </body>
</html>