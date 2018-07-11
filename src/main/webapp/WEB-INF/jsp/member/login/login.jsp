<%@ page language="java" contentType="text/html; charset=UTF-8"     pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   response.setHeader("cache-control","no-cache");
   response.setHeader("expires","0");
   response.setHeader("pragma","no-cache");
%>
<html lang="ko">
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
  	function loginCheck(){
  		
  		console.log($("#userId").val());  		
  		
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
  </script>	
</head>

 <body class="sub_body">
	
	<header>
		<div class="container">
			<div class="row">
				<p class="login_logo">
					<a href="/"><img src="./images/logo_header.png" /></a>
				</p><!-- login_logo -->
			</div>
		</div>
	</header><!-- header -->

	<article class="Sub_inner">
		<div class="container">
				<section class="sub_conts03">

					<div class="login_conts">
						<div class="cont_text">
							<h2>새로운 고객입니까?</h2>
							<span class="exp_txt">새로운 계정을 생성하세요.</span>
						</div><!-- cont_text -->
						<div class="button_zone login_zone">
							<button class="btn btn-default1" onclick="location.href='/register.do'">회원가입</button>
						</div><!-- button_zone -->
					</div><!-- login_conts -->
					<p class="log_line"></p>
				<form name="login" action="/logincheck.do" method="post">
					<div class="login_conts">
						<div class="cont_text">
							<h2>이미 등록 되있습니까?</h2>
							<span class="exp_txt">새 세션을 시작하십시오.</span>
						</div><!-- cont_text -->
						<div class="login_form">
							<input type="email" name="userId" id="userId" class="form-control" placeholder="Email">
							<input type="password"  name="pw" id="pw" class="form-control" placeholder="Password">
						</div>
						<div class="button_zone login_zone">
							<button type="sumbit" class="btn btn-default" onclick="loginCheck(); return false;">로그인</button>
						</div><!-- button_zone -->
						<a href="find_password.html" class="find_pass">비밀번호를 잊어버렸습니까?</a>
					</div><!-- login_conts -->
					<p class="log_line"></p>
				</form>		
					<!-- <div class="login_conts">
						<div class="cont_text">
							<h2>등록하고 싶지 않으십니까?</h2>
							<span class="exp_txt">게스트로 계속하십시오.</span>
						</div>cont_text
						<div class="button_zone login_zone">
							<button type="sumbit" class="btn btn-default" onclick="location.href='checkout.html'">등록 건너뛰기</button>
						</div>button_zone
					</div>login_conts -->

				</section><!-- sub_conts03 -->
		</div><!-- container -->
	</article><!-- Sub_inner -->
	
 </body>
</html>