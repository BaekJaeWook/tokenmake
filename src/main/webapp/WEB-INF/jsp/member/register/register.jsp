<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%
   response.setHeader("cache-control","no-cache");
   response.setHeader("expires","0");
   response.setHeader("pragma","no-cache");
%>
<html >
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
  	
  	$("#cusTokenBuy").click(function() {
  	  console.log("test");	
  	  alert( "Handler for .click() called." );  	 
  	});
  	
  	$(document).ready(function(){  		
  		//alert("test");  
  		console.log("ready");
  	});
  	
  	//회원 가입 정보 Valid
  	function memberRegister(){
  	
  		console.log($("#email").val());
  		console.log($("#pw").val());
  		console.log($("#repw").val());
  		
  		if($("#email").val() == null || $("#email").val() == ""){
  			
  			alert("Email를 넣어주세요!!");
  			return false;
  		}else if($("#pw").val() == null || $("#pw").val() == ""){
  			
  			alert("PassWord를 넣어주세요!!");
  			return false;
  		}else if($("#repw").val() == null ||$("#repw").val() == ""){
  			
  			alert("Re-Password를 넣어주세요!!");
  			return false;
  		}else if($("#pw").val() != $("#repw").val()){
  			
  			alert("Re-Password 가 일치하지 않습니다.");
  			$("#repw").val("");
  			$("#repw").focus();
  			return false;
  			
  		}else if($("#email").val() != null && $("#pw").val() != null && $("#repw").val() != null){  			  			
  			
  			if(!checkEmail()){
  				alert("이메일 형식을 확인해 주세요 (xxx@xxx.xxx)");
  	  	    	email.focus;
  	  	    	return false;
  			}else{
  				form.submit();
  			}  			
  		}
  			
	}
  	
  	//Email Valid
  	function checkEmail(){

  	    var email = $("#email").val();
  	    console.log(email);
  	    
  	    var filter = /^([a-zA-Z0-9_\.\-])+\@(([a-zA-Z0-9\-])+\.)+([a-zA-Z0-9]{2,4})+$/;

  	    if (!filter.test(email)) {  	    	
  	    	return false;
  	 	}else{
  	 		return true;
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
<body>
	<form name="register" method="post" action="/memberreg.do">
	<article class="Sub_inner">
		<div class="container">
				<section class="sub_conts03">
					<div class="login_conts">
						<div class="cont_text">
							<h2>새 계정을 만드십시오.</h2>
							<span class="exp_txt">정보를 작성하십시오.</span>
						</div><!-- cont_text -->
						<div class="login_form">
							<!-- <input type="text" class="form-control" placeholder="First name">
							<input type="email" class="form-control" placeholder="Last name"> -->
							<input type="email" class="form-control" placeholder="Email" name="email" id="email" maxlength="50">
							<input type="password" class="form-control" placeholder="Password" name="pw" id="pw" maxlength="20">
							<input type="password" class="form-control" placeholder="Re-Password" name="repw" id="repw" maxlength="20">
						</div>
						<div class="button_zone login_zone">
							<button type="sumbit" class="btn btn-default" onclick="memberRegister(); return false;">계정 만들기</button>
						</div><!-- button_zone -->
					</div><!-- login_conts -->

				</section><!-- sub_conts03 -->
		</div><!-- container -->
	</article><!-- Sub_inner -->
	</form>
 </body>
</html>