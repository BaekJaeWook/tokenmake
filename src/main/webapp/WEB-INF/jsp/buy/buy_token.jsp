<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   response.setHeader("cache-control","no-cache");
   response.setHeader("expires","0");
   response.setHeader("pragma","no-cache");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>  
  <title>Ether Make</title>
  <meta name="keywords" content="" />
  <meta name="description" content="" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0, user-scalable=no, target-densitydpi=medium-dpi" />
  <link rel="stylesheet" type="text/css" href="./css/bootstrap.min.css" >
  <link rel="stylesheet" type="text/css" href="./font-awesome/css/font-awesome.min.css" >
  <link rel="stylesheet" type="text/css" href="./css/style.css" />
  <link rel="stylesheet" type="text/css" href="./css/media.css" />
  <link rel="stylesheet" type="text/css" href="./css/noto-sans.css" />
  <link rel="stylesheet" type="text/css" href="./css/font.css" />
  <link rel="shortcut icon" href="./ico/favicon.png" />
  
  <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="./js/jquery-3.3.1.slim.js"></script>
  <script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
    	
  <script type="text/javascript">  
  	
  	$(document).ready(function(){  		
  		//alert("test");  
  		console.log("ready");
  		//alert('${sessionID}');  		
  	});
 	
  	//login check
  	function numCheck(){
  		
  		console.log($("#userId").val());  
  		$("mytoken")val().numeric("positiveInteger");
  		
  		if($("#userId").val() == null || $("#userId").val() == ""){
  			alert("Email를 넣어주세요");
  			return false;
  			
  		}else if($("#pw").val() == null || $("#pw").val() == ""){
  			alert("Password를 넣어주세요");
  			return false;
  		}else{
  			form.submit();
  		}
  	}  	
  	
  //maxlength 체크
    function maxLengthCheck(object){
    	if (object.value.length > object.maxLength){
	     object.value = object.value.slice(0, object.maxLength);
     	}    
    }
  </script>	
  
</head>

 <body class="sub_body">
	<form name="infodetail" action="/infodetail.do" method="post">
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

				<section class="sub_conts01">
					<div class="token_top">
						<div class="col-md-3">
							<p class="img_token"><img src="./images/sub_ether01.png" ></p>
						</div>
						<div class="col-md-9">
							<dl class="token_text">
								<dt>Custom ERC-20 Tokens</dt>
								<dd><span class="the_price">$100</span><a href="/buycrowd.do" class="go_growd">Go to Crowdsale</a></dd> 
							</dl><!-- token_text -->
						</div>
					</div><!-- token_top -->
					<p class="cl"></p>

					<div class="token_form">
						<div class="col-md-6 col_box">
							<p class="call">Token Name</p>
							<input type="text" class="form-control" name="mytoken" id="mytoken" placeholder="My Token">
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Token Symbol</p>
							<input type="text" class="form-control" name="tsymbol" id="tsymbol" placeholder="MYTKN">
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Token Amount</p>
							<input type="number" class="form-control" maxlength="20" inputmode="numeric" min="1" max="10000000000000000000" name="tamount" id="tamount" placeholder="100" oninput="maxLengthCheck(this)">
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Token Decimals</p>
							<input type="number" class="form-control" maxlength="2" pattern="[0-9]*" inputmode="numeric" min="1" max="18" name="tdecimals" id="tdecimals" placeholder="0" oninput="maxLengthCheck(this)">
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Owner Address</p>
							<input type="text" class="form-control" name="taddr" id="taddr" placeholder="E93L20...">
						</div>
						<div class="col-md-6 col_box">
							<input type="hidden" name="tbuy" id="tbuy" value="t">
						</div>
						<p class="cl"></p>
						<div class="col-md-6 button_zone">
							<button type="sumbit" class="btn btn-default">구매하기</button>
						</div>
					</div><!-- token_form -->
					<div class="tok_attention">
						<span class="txt">Ethereum 블록 체인에 사용자 정의 된 ERC-20 암호화 토큰을 생성하십시오. 토큰 사양, Ethereum 계정 주소를 입력하면 나머지는 처리 할 것입니다.</span>
					</div><!-- tok_attention -->
				</section><!-- sub_conts01 -->

		</div>
	</article><!-- Sub_inner -->
	</form>
 </body>
</html>