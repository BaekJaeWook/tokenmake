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
  <link rel="stylesheet" type="text/css" href="./css/font.css" />
  <link rel="shortcut icon" href="./ico/favicon.png" />
  
  <script type="text/javascript" src="./js/jquery-3.3.1.min.js"></script>
  <script type="text/javascript" src="./js/jquery-3.3.1.slim.js"></script>
  <script type="text/javascript" src="./js/jquery-3.3.1.slim.min.js"></script>
    	
  <script type="text/javascript">  
  	
  	$(document).ready(function(){  		
  		//alert("test");  
  		console.log("ready");  		
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

			<div class="conts_wrap">	
				<section class=" conts_top">
					<div class="token_top">
						<div class="col-md-3">
							<p class="img_token double_token">
								<img src="./images/sub_crowd01.png" />
								<span class="exchange">1ETH = 1000TKN</span>
							</p>
						</div>
						<div class="col-md-9">
							<dl class="token_text">
								<dt>ERC20 Crowdsale Package</dt>
								<dd><span class="the_price">$1000</span><a href="/buytoken.do" class="go_growd">Go to ERC 20</a></dd>
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
							<p class="call">Token Supply</p>
							<input type="number" class="form-control" name="tamount" id="tamount" maxlength="20" inputmode="numeric" min="1" max="10000000000000000000"  placeholder="100" oninput="maxLengthCheck(this)">
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Token Decimals</p>
							<input type="number" class="form-control"  name="tdecimals" id="tdecimals" pattern="[0-9]*" inputmode="numeric" min="1" max="18" placeholder="18" oninput="maxLengthCheck(this)">
						</div>
						<div class="col-md-6 col_box">
							<p class="call">Admin Ether Address</p>
							<input type="text" class="form-control"  name="taddr" id="taddr" placeholder="E93L20...">
						</div>
						<p class="cl"></p>
					</div><!-- token_form -->
				</section><!--  -->

				<section class=" conts_middle">
					<h3>First round of token sale</h3>
					<div class="token_form">
						<div class="col-md-6 col_box">
							<p class="call">Start Date</p>
							<input type="date" class="form-control" name="psdate1" id="psdate1" placeholder="Start Date" value="2018-01-01">
						</div>
						<div class="col-md-6 col_box">
							<p class="call">End Date</p>
							<input type="date" class="form-control" name="pedate1" id="pedate1" placeholder="" value="2018-01-01">
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Token Allocation</p>
							<input type="text" class="form-control" placeholder="">
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Price 1Ether = x Token</p>
							<input type="number" class="form-control"  name="price1" id="price1" maxlength="10" inputmode="numeric" min="1" max="100000000" placeholder="100" oninput="maxLengthCheck(this)">
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Soft Cap</p>
							<input type="text" class="form-control" placeholder="">
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Hard Cap</p>
							<input type="number" class="form-control" name="hard1" id="hard1" maxlength="20" inputmode="numeric" min="1" max="10000000000000000000"  placeholder="1000000000000" oninput="maxLengthCheck(this)">
						</div>
						<p class="cl"></p>
						<input type="hidden" name="tbuy" id="tbuy" value="p">
					</div><!-- token_form -->
				</section><!--  -->

				<section class=" conts_middle">
					<h3>Second round of token sale</h3>
					<div class="token_form">
						<div class="col-md-6 col_box">
							<p class="call">Start Date</p>
							<input type="date" class="form-control" name="psdate2" id="psdate2" placeholder="" value="2018-01-01">
						</div>
						<div class="col-md-6 col_box">
							<p class="call">End Date</p>
							<input type="date" class="form-control" name="pedate2" id="pedate2" placeholder="" value="2018-01-01">
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Token Allocation</p>
							<input type="text" class="form-control" placeholder="">
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Price 1Ether = x Token</p>
							<input type="number" class="form-control" name="price2" id="price2" maxlength="10" inputmode="numeric" min="1" max="100000000" placeholder="100" oninput="maxLengthCheck(this)">
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Soft Cap</p>
							<input type="text" class="form-control" placeholder="">
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Hard Cap</p>
							<input type="number" class="form-control" name="hard2" id="hard2" maxlength="20" inputmode="numeric" min="1" max="10000000000000000000"  placeholder="1000000000000" oninput="maxLengthCheck(this)">
						</div>
						<p class="cl"></p>
					</div><!-- token_form -->
				</section><!--  -->

				<section class=" conts_middle">
					<h3>Third round of token sale</h3>
					<div class="token_form">
						<div class="col-md-6 col_box">
							<p class="call">Start Date</p>
							<input type="date" class="form-control" name="psdate3" id="psdate3" placeholder="" value="2018-01-01">
						</div>
						<div class="col-md-6 col_box">
							<p class="call">End Date</p>
							<input type="date" class="form-control" name="pedate3" id="pedate3" placeholder="" value="2018-01-01">
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Token Allocation</p>
							<input type="text" class="form-control" placeholder="">
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Price 1Ether = x Token</p>
							<input type="number" class="form-control" name="price3" id="price3" maxlength="10" inputmode="numeric" min="1" max="100000000" placeholder="100" oninput="maxLengthCheck(this)">
						</div>
						<!-- <div class="col-md-6 col_box">
							<p class="call">Soft Cap</p>
							<input type="text" class="form-control" placeholder="">
						</div> -->
						<div class="col-md-6 col_box">
							<p class="call">Hard Cap</p>
							<input type="number" class="form-control" name="hard3" id="hard3" maxlength="20" inputmode="numeric" min="1" max="10000000000000000000"  placeholder="1000000000000" oninput="maxLengthCheck(this)">
						</div>
						
						<p class="cl"></p>
					</div><!-- token_form -->
				</section><!--  -->

				<section class=" conts_bottom">
					<h3>Landing Page</h3>
					<div class="ico_form">
						<dl>
							<dt>Do you need a Landing Page for ICO?</dt>
							<dd>
								<p class="putpoint">
									<label><input name="lpage" id="lpage" type="checkbox" value = "YES">Yes</label>
								</p>
								<p class="putpoint">
									<label><input name="lpage" id="lpage" type="checkbox" value = "NO">No</label>
								</p>
							</dd>
						</dl>
						<dl>
							<dt>Will you provide any sample Page for your ICO?</dt>
							<dd>
								<p class="putpoint">
									<label><input name="spage" id="spage" type="checkbox" value = "YES">Yes</label>
								</p>
								<p class="putpoint">
									<label><input name="spage" id="slpage" type="checkbox" value = "NO" >No</label>
								</p>
							</dd>
						</dl>
						<p class="cl"></p>
					</div><!-- token_form -->
					<div class="col-md-6 button_zone">
						<button type="sumbit" class="btn btn-default">구매하기</button>
					</div><!-- button_zone -->
				</section><!--  -->
			</div><!-- conts_wrap -->

		</div>
	</article><!-- Sub_inner -->
	</form>
 </body>
</html>