<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="true" %>
<!DOCTYPE html>
<html lang="ko">
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
  <link rel="stylesheet" type="text/css" href="./css/font.css" />
  <link rel="stylesheet" type="text/css" href="./css/noto-sans.css" />  
  <link rel="shortcut icon" href="./ico/favicon.png" />

  <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="./js/jquery-3.3.1.slim.js"></script>
  <script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
    	
  <script type="text/javascript">
  	
  	$("#cusTokenBuy").click(function() {
  	  console.log("test");	
  	  alert( "Handler for .click() called." );  	 
  	});
  	
  	$(document).ready(function(){  		
  		//alert("${sessionID}");  
  		console.log("ready");
  	});

  </script>

</head>
 <body class="index_body">
 <form>
    <div class="inex_wrap" >

		<section class="main_top">
			<div class="container">
				<div class="row">
						<c:choose>
							<c:when test='${not empty sessionID}' > 
								 <p class="main_login"><a href="/logout.do">LogOut</a></p>
							</c:when>
							<c:otherwise>					
								<p class="main_login"><a href="/login.do">Login</a><p>
							</c:otherwise> 
						</c:choose>
					<div class="col-md-6">
						<div class="Main_title">
							<h1><img src="./images/logo_main.png" alt="메인로고" /></h1>
							<p class="title_exp">
								블록 체인 기반 기술에 엑세스<br/>
								하기위한 게이트웨이
							</p>
							<a href="/buytoken.do" class="go_token" >ERC20 토큰 만들기</a>
						</div><!-- Main_title -->
					</div>
					<div class="col-md-6">
						<p class="top_img"><img src="./images/main_top.png" alt="메인탑 이미지" /></p>
					</div>
				</div>
			</div><!-- container -->
		</section><!-- main_top -->

		<section class="main_about">
			<div class="container">
				<div class="row">
					<h1>About EtherMake</h1>
					<div class="col-lg-8 about_text">
						<p>
							EtherMake에서는 Ethereum 블록 체인과 상호 작용할 수 있도록 간단하게 만듭니다. 아래에는 블록 체인과 크립토크루스에 대한 간략한 설명이 나와 있습니다.
						</p>
						<p>
							우리 서비스를 이용하려면 Ethereum 계정이 필요합니다. <a href="https://metamask.io/">브라우저 플러그인</a>, <a href="https://www.myetherwallet.com/embedded.html">텍스트 파일</a>  또는 <a href="https://www.ledgerwallet.com/products/ledger-nano-s?utm_source=https://etherzaar.com/&utm_medium=affiliate&utm_campaign=2421&utm_content=2421">하드웨어 지갑</a>을 비롯한 많은 옵션을 사용할 수 있습니다 
						</p>
					</div><!-- about_text -->
				</div>
			</div>
		</section><!-- main_about -->

		<section class="main_maketoken" >
			<div class="container">
				<div class="row">
					<h1>사용자 지정 <span class="bigger">TOKEN</span> 만들기</h1>
					<div class="col-lg-7 Board_group">
						<div class="col-sm-6">
							<div class="Theboard">
								<div class="theImg">
									<img src="./images/main_ether01.png" />
								</div>
								<div class="theText"  >
									<dl>
										<dt>Custom ERC-20 Tokens</dt>
										<dd>
											<p class="board_price" >$ 10.00</p>
											<a id="cusTokenBuy" href="/buytoken.do"  class="board_buy" >Buy</a> 
										</dd>
									</dl>
								</div>
							</div><!-- Theboard -->
						</div>
						<div class="col-sm-6">
							<div class="Theboard">
								<div class="theImg">
									<div class="toke_box">
										<img src="./images/main_token01.png" />
										<img src="./images/main_token02.png" />
										<span class="tok_exchange">1ETH = 1TKN</span>
									</div><!-- toke_box -->
								</div>
								<div class="theText">
									<dl>
										<dt>ERC20 Crowdsale Package</dt>
										<dd>
											<p class="board_price">$ 100.00</p>
											<a href="/buycrowd.do"   class="board_buy" >Buy</a>
										</dd>
									</dl>
								</div>
							</div><!-- Theboard -->
						</div>
					</div><!-- Board_group -->
				</div>
			</div>
		</section><!-- main_maketoken -->

		<section class="main_chain">
			<div class="container">
				<div class="row">
					<h1>블록 체인</h1>
					<div class="col-lg-8 title_text">
						블록 체인 (blockchain)은 개방적이고 분산 된 데이터베이스를 활용하는 특수 네트워크입니다. 계정 , 거래 및 동전 의 세 가지 기본 단위로 구성됩니다 
					</div><!-- title_text -->
					<div class="main_conts">
						<div class="col-md-7">
							<dl>
								<dt>계정</dt>
								<dd>
									계정은 기존 은행 계좌와 동일한 방식으로 작동하므로 소유자가 거래를 보내고 받을 수 있습니다. 각 계정에는 고유 한 주소와 개인 키가 있습니다.
								</dd>
							</dl>
							<dl>
								<dt>거래</dt>
								<dd>
									거래는 네트워크상의 두 계정간에 데이터를 전송하는 디지털 메시지입니다. 여기에는 추가 데이터와 함께 보낸 사람 및받는 사람의 계정 주소가 포함됩니다. 
								</dd>
							</dl>
							<dl>
								<dt>동전</dt>
								<dd>
									동전은 블록 체인에 사용되는 가치의 기본 단위입니다. 사용자는 광업으로 알려진 네트워크를 통해 네트워크를 운영 할 수있는 처리 능력을 제공하고 대가로 동전을 수여합니다.
								</dd>
							</dl>
						</div>
						<div class="col-md-5">
							<p class="conts_img">
								<img src="./images/main_chain.png" alt="블록 체인"/>
							</p>
						</div>
					</div><!-- main_conts -->
			</div>
		</section><!-- main_chain -->

		<section class="main_code">
			<div class="container">
				<div class="row">
					<h1>암호 해독성</h1>
					<div class="col-lg-8 title_text">
						블록 체인의 주요 용도는 통화입니다. 암호 해독에는 동전 과 토큰 두 가지 유형이 있습니다.
					</div><!-- title_text -->
					<div class="main_conts">
						<div class="col-sm-6 code_conts">
							<p class="code"><img src="./images/main_coin.png" alt="암호 코인"/></p>
							<dl>
								<dt>동전</dt>
								<dd>
									동전은 값의 물리적 저장소 인 USD 또는 RMB와 유사한 가치있는 디지털 저장소입니다. 동전은 블록 체인 네트워크를 운영하기 위해 소비 된 자원 (전기, 컴퓨팅 파워 등)을 표현하기 때문에 본질적인 경제적 가치를 지닌다. 예로 <a href="https://ethereum.org">Ethereum</a>과 <a href="https://bitcoin.org/en">Bitcoin</a>이 있습니다.
								</dd>
							</dl>
						</div><!-- code_conts -->
						<div class="col-sm-6 code_conts">
							<p class="code"><img src="./images/main_token.png" alt="암호 토큰"/></p>
							<dl>
								<dt>토큰</dt>
								<dd>
									토큰은 다른 계정간에 양도 할 수 있다는 의미에서 통화로 작동합니다. 토큰의 생성이 블록 체인 자체에 의해 수행되는 것이 아니라 특화된 거래를 통해 동전의 본질적인 경제적가치가 없습니다. 예는 <a href="https://www.omise.co/go">OMG</a>, <a href="https://basicattentiontoken.org">BAT</a>, <a href="https://ambrosus.com">AMB</a>
								</dd>
							</dl>
						</div><!-- code_conts -->
					</div><!-- main_conts -->
			</div>
		</section><!-- main_chain -->

		<section class="main_custom">
			<div class="container">
				<div class="row">
					<h1>Custom ERC20 토큰</h1>
					<div class="col-lg-9 title_text">
						EtherMake는 자동 토큰 생성 서비스를 제공하는 최초이자 유일한 플랫폼입니다. 토큰에는 나머지 Ethereum 네트워크와의 호환성을 보장 하는 ERC20 토큰 표준의모든 필수 기능이 포함 됩니다. 토큰 사양을 결정하고 주문을 제출하십시오. 토큰은 단 몇 분 안에 블록 체인으로 시작됩니다.
					</div><!-- title_text -->
					<div class="main_conts">
						<div class="col-md-6">
							<p class="conts_img">
								<img src="./images/main_erc20.png" alt="블록 체인"/>
							</p>
						</div>
						<div class="col-md-6">
							<dl>
								<dt>1. 토큰 사용자 정의</dt>
								<dd>
									이름, 기호, 원하는 금액 및 소수 자릿수를 선택하십시오.
								</dd>
							</dl>
							<dl>
								<dt>2. 코드 관리</dt>
								<dd>
									EtherMaker는 토큰이 ERC20 토큰 표준을 준수 함을 보장합니다. 
								</dd>
							</dl>
							<dl>
								<dt>3. 귀하의 토큰이 게시되었습니다.</dt>
								<dd>
									EthereMake 네트워크에서 토큰을 공식 토큰으로 만듭니다.
								</dd>
							</dl>
						</div>
					</div><!-- main_conts -->
			</div>
		</section><!-- main_custom -->

		<section class="main_buy">
			<div class="container">
				<div class="row">
					<h1>Ethereum 구입</h1>
					<div class="col-lg-9 title_text">
						Ethereum을 구입하려면 다음과 같은 방법으로 쉽게 할 수 있습니다.
					</div><!-- title_text -->
					<div class="buy_gogroup">
						<div class="col-sm-6">
							<a href="https://changelly.com/?ref_id=08a3b20f2f27" class="buy_link">Changelly</a>
						</div>
						<div class="col-sm-6">
							<a href="https://www.coinbase.com/join" class="buy_link">코인 베이스</a>
						</div>
					</div><!-- buy_gogroup -->
				</div>
			</div>
		</section><!-- main_buy -->

		<footer>
			<div class="container">
				<div class="row">
					<div class="col-md-7">
						<div class="fl footer_copy">
							<a href="/"><img src="./images/logo_footer.png" alt="푸터 로고" /></a>
							<span>© 2018 EtherMake All Rights Reserved.</span>
						</div><!-- footer_copy -->
					</div>
					<div class="col-md-5">
						<div class="fr footer_sns">
							<a href="#"><i class="fa fa-twitter"></i></a>
							<a href="#"><i class="fa fa-facebook"></i></a>
							<a href="#"><i class="fa fa-instagram"></i></a>
							<a href="#"><i class="fa fa-envelope"></i></a>
						</div><!-- footer_sns -->
					</div>
				</div>
			</div>
		</footer>
		
    </div><!-- inex_wrap -->
    </form>
 </body>
</html>