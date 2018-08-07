<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
   response.setHeader("cache-control","no-cache");
   response.setHeader("expires","0");
   response.setHeader("pragma","no-cache");
%>
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
  		console.log('${mytoken}');
  		console.log('${tsymbol}');
  		console.log('${tamount}');
  		console.log('${tdecimals}');
  		console.log('${taddr}');
  		console.log("product div : " + '${tbuy}');
  		console.log('${psdate1}');
  		console.log('${pedate1}');
  		console.log('${price1}');
  		console.log('${hard1}');
  		console.log('${psdate2}');
  		console.log('${pedate2}');
  		console.log('${price2}');
  		console.log('${hard2}');
  		console.log('${psdate3}');
  		console.log('${pedate3}');
  		console.log('${price3}');
  		console.log('${hard3}');
  		console.log('${lpage}');
  		console.log('${spage}');
  
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
	<form name="paycomfirm" action="/paycomfirm.do" method="post">
	<article class="Sub_inner">
		
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
		
		<div class="container">
				<section class="sub_conts03 sub_re">
					<h1 class="sub_title">고객 정보</h1>
					<div class="route_line"><span class="theblue">고객 정보</span><span class="arr_space">></span>지불 방법<span class="arr_space">></span>주문 검토</div>
					<div class="ch_body">
						<div class="col-md-12 contact_info">
							<h3>연락처 정보</h3>
							<div class="write_line">
								<input type="email" class="form-control" name="personemail" id="personemail" placeholder="Email" value="${sessionID}" readonly>
							</div>
						</div><!-- contact_info -->
						<div class="col-md-12 billing_info">
							<h3>청구지 주소</h3>
							<div class="write_line">
								<div class="col-sm-6 col_half"><input type="text" name="fname" id="fname" class="form-control" placeholder="First name"></div>
								<div class="col-sm-6 col_half"><input type="text" name="lname" id="lname" class="form-control" placeholder="Last name"></div>
								<p class="cl"></p>
							</div><!-- write_line -->
							<div class="write_line">
								<input type="text" class="form-control" name="company" id="company" placeholder="Company">
							</div>
							<div class="write_line">
								<input type="text" class="form-control" name="addr" id="addr" placeholder="Address">
							</div>
							<div class="write_line">
								<input type="text" class="form-control" name="addrdetail" id="addrdetail" placeholder="Apartment, suite, etc">
							</div>
							<div class="write_line">
								<input type="text" class="form-control" name="city" id="city" placeholder="City">
							</div><!-- write_line -->
							<div class="write_line">
								<div class="col-sm-4 col_select">
									<select size="1" name="national" id="national" autocomplete="billing country" data-trekkie-id="billing_country_field" data-backup="country" class="form-control" aria-required="true" name="checkout[billing_address][country]" id="checkout_billing_address_country">
										<option data-code="ID" selected="selected" value="Indonesia">Indonesia</option>
										<option data-code="NG" value="Nigeria">Nigeria</option>
										<option data-code="IN" value="India">India</option>
										<option data-code="US" value="United States">United States</option>
										<option disabled="disabled" value="---">---</option>
										<option data-code="AF" value="Afghanistan">Afghanistan</option>
										<option data-code="AX" value="Aland Islands">Åland Islands</option>
										<option data-code="AL" value="Albania">Albania</option>
										<option data-code="DZ" value="Algeria">Algeria</option>
										<option data-code="AD" value="Andorra">Andorra</option>
										<option data-code="AO" value="Angola">Angola</option>
										<option data-code="AI" value="Anguilla">Anguilla</option>
										<option data-code="AG" value="Antigua And Barbuda">Antigua &amp; Barbuda</option>
										<option data-code="AR" value="Argentina">Argentina</option>
										<option data-code="AM" value="Armenia">Armenia</option>
										<option data-code="AW" value="Aruba">Aruba</option>
										<option data-code="AU" value="Australia">Australia</option>
										<option data-code="AT" value="Austria">Austria</option>
										<option data-code="AZ" value="Azerbaijan">Azerbaijan</option>
										<option data-code="BS" value="Bahamas">Bahamas</option>
										<option data-code="BH" value="Bahrain">Bahrain</option>
										<option data-code="BD" value="Bangladesh">Bangladesh</option>
										<option data-code="BB" value="Barbados">Barbados</option>
										<option data-code="BY" value="Belarus">Belarus</option>
										<option data-code="BE" value="Belgium">Belgium</option>
										<option data-code="BZ" value="Belize">Belize</option>
										<option data-code="BJ" value="Benin">Benin</option>
										<option data-code="BM" value="Bermuda">Bermuda</option>
										<option data-code="BT" value="Bhutan">Bhutan</option>
										<option data-code="BO" value="Bolivia">Bolivia</option>
										<option data-code="BA" value="Bosnia And Herzegovina">Bosnia &amp; Herzegovina</option>
										<option data-code="BW" value="Botswana">Botswana</option>
										<option data-code="BV" value="Bouvet Island">Bouvet Island</option>
										<option data-code="BR" value="Brazil">Brazil</option>
										<option data-code="IO" value="British Indian Ocean Territory">British Indian Ocean Territory</option>
										<option data-code="VG" value="Virgin Islands, British">British Virgin Islands</option>
										<option data-code="BN" value="Brunei">Brunei</option>
										<option data-code="BG" value="Bulgaria">Bulgaria</option>
										<option data-code="BF" value="Burkina Faso">Burkina Faso</option>
										<option data-code="BI" value="Burundi">Burundi</option>
										<option data-code="KH" value="Cambodia">Cambodia</option>
										<option data-code="CM" value="Republic of Cameroon">Cameroon</option>
										<option data-code="CA" value="Canada">Canada</option>
										<option data-code="CV" value="Cape Verde">Cape Verde</option>
										<option data-code="BQ" value="Bonaire, Sint Eustatius and Saba">Caribbean Netherlands</option>
										<option data-code="KY" value="Cayman Islands">Cayman Islands</option>
										<option data-code="CF" value="Central African Republic">Central African Republic</option>
										<option data-code="TD" value="Chad">Chad</option>
										<option data-code="CL" value="Chile">Chile</option>
										<option data-code="CN" value="China">China</option>
										<option data-code="CX" value="Christmas Island">Christmas Island</option>
										<option data-code="CC" value="Cocos (Keeling) Islands">Cocos (Keeling) Islands</option>
										<option data-code="CO" value="Colombia">Colombia</option>
										<option data-code="KM" value="Comoros">Comoros</option>
										<option data-code="CG" value="Congo">Congo - Brazzaville</option>
										<option data-code="CD" value="Congo, The Democratic Republic Of The">Congo - Kinshasa</option>
										<option data-code="CK" value="Cook Islands">Cook Islands</option>
										<option data-code="CR" value="Costa Rica">Costa Rica</option>
										<option data-code="HR" value="Croatia">Croatia</option>
										<option data-code="CU" value="Cuba">Cuba</option>
										<option data-code="CW" value="Curaçao">Curaçao</option>
										<option data-code="CY" value="Cyprus">Cyprus</option>
										<option data-code="CZ" value="Czech Republic">Czech Republic</option>
										<option data-code="CI" value="Côte d&#39;Ivoire">Côte d’Ivoire</option>
										<option data-code="DK" value="Denmark">Denmark</option>
										<option data-code="DJ" value="Djibouti">Djibouti</option>
										<option data-code="DM" value="Dominica">Dominica</option>
										<option data-code="DO" value="Dominican Republic">Dominican Republic</option>
										<option data-code="EC" value="Ecuador">Ecuador</option>
										<option data-code="EG" value="Egypt">Egypt</option>
										<option data-code="SV" value="El Salvador">El Salvador</option>
										<option data-code="GQ" value="Equatorial Guinea">Equatorial Guinea</option>
										<option data-code="ER" value="Eritrea">Eritrea</option>
										<option data-code="EE" value="Estonia">Estonia</option>
										<option data-code="ET" value="Ethiopia">Ethiopia</option>
										<option data-code="FK" value="Falkland Islands (Malvinas)">Falkland Islands</option>
										<option data-code="FO" value="Faroe Islands">Faroe Islands</option>
										<option data-code="FJ" value="Fiji">Fiji</option>
										<option data-code="FI" value="Finland">Finland</option>
										<option data-code="FR" value="France">France</option>
										<option data-code="GF" value="French Guiana">French Guiana</option>
										<option data-code="PF" value="French Polynesia">French Polynesia</option>
										<option data-code="TF" value="French Southern Territories">French Southern Territories</option>
										<option data-code="GA" value="Gabon">Gabon</option>
										<option data-code="GM" value="Gambia">Gambia</option>
										<option data-code="GE" value="Georgia">Georgia</option>
										<option data-code="DE" value="Germany">Germany</option>
										<option data-code="GH" value="Ghana">Ghana</option>
										<option data-code="GI" value="Gibraltar">Gibraltar</option>
										<option data-code="GR" value="Greece">Greece</option>
										<option data-code="GL" value="Greenland">Greenland</option>
										<option data-code="GD" value="Grenada">Grenada</option>
										<option data-code="GP" value="Guadeloupe">Guadeloupe</option>
										<option data-code="GT" value="Guatemala">Guatemala</option>
										<option data-code="GG" value="Guernsey">Guernsey</option>
										<option data-code="GN" value="Guinea">Guinea</option>
										<option data-code="GW" value="Guinea Bissau">Guinea-Bissau</option>
										<option data-code="GY" value="Guyana">Guyana</option>
										<option data-code="HT" value="Haiti">Haiti</option>
										<option data-code="HM" value="Heard Island And Mcdonald Islands">Heard &amp; McDonald Islands</option>
										<option data-code="HN" value="Honduras">Honduras</option>
										<option data-code="HK" value="Hong Kong">Hong Kong SAR China</option>
										<option data-code="HU" value="Hungary">Hungary</option>
										<option data-code="IS" value="Iceland">Iceland</option>
										<option data-code="IN" value="India">India</option>
										<option data-code="ID" value="Indonesia">Indonesia</option>
										<option data-code="IR" value="Iran, Islamic Republic Of">Iran</option>
										<option data-code="IQ" value="Iraq">Iraq</option>
										<option data-code="IE" value="Ireland">Ireland</option>
										<option data-code="IM" value="Isle Of Man">Isle of Man</option>
										<option data-code="IL" value="Israel">Israel</option>
										<option data-code="IT" value="Italy">Italy</option>
										<option data-code="JM" value="Jamaica">Jamaica</option>
										<option data-code="JP" value="Japan">Japan</option>
										<option data-code="JE" value="Jersey">Jersey</option>
										<option data-code="JO" value="Jordan">Jordan</option>
										<option data-code="KZ" value="Kazakhstan">Kazakhstan</option>
										<option data-code="KE" value="Kenya">Kenya</option>
										<option data-code="KI" value="Kiribati">Kiribati</option>
										<option data-code="XK" value="Kosovo">Kosovo</option>
										<option data-code="KW" value="Kuwait">Kuwait</option>
										<option data-code="KG" value="Kyrgyzstan">Kyrgyzstan</option>
										<option data-code="LA" value="Lao People&#39;s Democratic Republic">Laos</option>
										<option data-code="LV" value="Latvia">Latvia</option>
										<option data-code="LB" value="Lebanon">Lebanon</option>
										<option data-code="LS" value="Lesotho">Lesotho</option>
										<option data-code="LR" value="Liberia">Liberia</option>
										<option data-code="LY" value="Libyan Arab Jamahiriya">Libya</option>
										<option data-code="LI" value="Liechtenstein">Liechtenstein</option>
										<option data-code="LT" value="Lithuania">Lithuania</option>
										<option data-code="LU" value="Luxembourg">Luxembourg</option>
										<option data-code="MO" value="Macao">Macau SAR China</option>
										<option data-code="MK" value="Macedonia, Republic Of">Macedonia</option>
										<option data-code="MG" value="Madagascar">Madagascar</option>
										<option data-code="MW" value="Malawi">Malawi</option>
										<option data-code="MY" value="Malaysia">Malaysia</option>
										<option data-code="MV" value="Maldives">Maldives</option>
										<option data-code="ML" value="Mali">Mali</option>
										<option data-code="MT" value="Malta">Malta</option>
										<option data-code="MQ" value="Martinique">Martinique</option>
										<option data-code="MR" value="Mauritania">Mauritania</option>
										<option data-code="MU" value="Mauritius">Mauritius</option>
										<option data-code="YT" value="Mayotte">Mayotte</option>
										<option data-code="MX" value="Mexico">Mexico</option>
										<option data-code="MD" value="Moldova, Republic of">Moldova</option>
										<option data-code="MC" value="Monaco">Monaco</option>
										<option data-code="MN" value="Mongolia">Mongolia</option>
										<option data-code="ME" value="Montenegro">Montenegro</option>
										<option data-code="MS" value="Montserrat">Montserrat</option>
										<option data-code="MA" value="Morocco">Morocco</option>
										<option data-code="MZ" value="Mozambique">Mozambique</option>
										<option data-code="MM" value="Myanmar">Myanmar (Burma)</option>
										<option data-code="NA" value="Namibia">Namibia</option>
										<option data-code="NR" value="Nauru">Nauru</option>
										<option data-code="NP" value="Nepal">Nepal</option>
										<option data-code="NL" value="Netherlands">Netherlands</option>
										<option data-code="AN" value="Netherlands Antilles">Netherlands Antilles</option>
										<option data-code="NC" value="New Caledonia">New Caledonia</option>
										<option data-code="NZ" value="New Zealand">New Zealand</option>
										<option data-code="NI" value="Nicaragua">Nicaragua</option>
										<option data-code="NE" value="Niger">Niger</option>
										<option data-code="NG" value="Nigeria">Nigeria</option>
										<option data-code="NU" value="Niue">Niue</option>
										<option data-code="NF" value="Norfolk Island">Norfolk Island</option>
										<option data-code="KP" value="Korea, Democratic People&#39;s Republic Of">North Korea</option>
										<option data-code="NO" value="Norway">Norway</option>
										<option data-code="OM" value="Oman">Oman</option>
										<option data-code="PK" value="Pakistan">Pakistan</option>
										<option data-code="PS" value="Palestinian Territory, Occupied">Palestinian Territories</option>
										<option data-code="PA" value="Panama">Panama</option>
										<option data-code="PG" value="Papua New Guinea">Papua New Guinea</option>
										<option data-code="PY" value="Paraguay">Paraguay</option>
										<option data-code="PE" value="Peru">Peru</option>
										<option data-code="PH" value="Philippines">Philippines</option>
										<option data-code="PN" value="Pitcairn">Pitcairn Islands</option>
										<option data-code="PL" value="Poland">Poland</option>
										<option data-code="PT" value="Portugal">Portugal</option>
										<option data-code="QA" value="Qatar">Qatar</option>
										<option data-code="RE" value="Reunion">Réunion</option>
										<option data-code="RO" value="Romania">Romania</option>
										<option data-code="RU" value="Russia">Russia</option>
										<option data-code="RW" value="Rwanda">Rwanda</option>
										<option data-code="SX" value="Sint Maarten">Saint Martin</option>
										<option data-code="WS" value="Samoa">Samoa</option>
										<option data-code="SM" value="San Marino">San Marino</option>
										<option data-code="ST" value="Sao Tome And Principe">São Tomé &amp; Príncipe</option>
										<option data-code="SA" value="Saudi Arabia">Saudi Arabia</option>
										<option data-code="SN" value="Senegal">Senegal</option>
										<option data-code="RS" value="Serbia">Serbia</option>
										<option data-code="SC" value="Seychelles">Seychelles</option>
										<option data-code="SL" value="Sierra Leone">Sierra Leone</option>
										<option data-code="SG" value="Singapore">Singapore</option>
										<option data-code="SK" value="Slovakia">Slovakia</option>
										<option data-code="SI" value="Slovenia">Slovenia</option>
										<option data-code="SB" value="Solomon Islands">Solomon Islands</option>
										<option data-code="SO" value="Somalia">Somalia</option>
										<option data-code="ZA" value="South Africa">South Africa</option>
										<option data-code="GS" value="South Georgia And The South Sandwich Islands">South Georgia &amp; South Sandwich Islands</option>
										<option data-code="KR" value="South Korea">South Korea</option>
										<option data-code="SS" value="South Sudan">South Sudan</option>
										<option data-code="ES" value="Spain">Spain</option>
										<option data-code="LK" value="Sri Lanka">Sri Lanka</option>
										<option data-code="BL" value="Saint Barthélemy">St. Barthélemy</option>
										<option data-code="SH" value="Saint Helena">St. Helena</option>
										<option data-code="KN" value="Saint Kitts And Nevis">St. Kitts &amp; Nevis</option>
										<option data-code="LC" value="Saint Lucia">St. Lucia</option>
										<option data-code="MF" value="Saint Martin">St. Martin</option>
										<option data-code="PM" value="Saint Pierre And Miquelon">St. Pierre &amp; Miquelon</option>
										<option data-code="VC" value="St. Vincent">St. Vincent &amp; Grenadines</option>
										<option data-code="SD" value="Sudan">Sudan</option>
										<option data-code="SR" value="Suriname">Suriname</option>
										<option data-code="SJ" value="Svalbard And Jan Mayen">Svalbard &amp; Jan Mayen</option>
										<option data-code="SZ" value="Swaziland">Swaziland</option>
										<option data-code="SE" value="Sweden">Sweden</option>
										<option data-code="CH" value="Switzerland">Switzerland</option>
										<option data-code="SY" value="Syria">Syria</option>
										<option data-code="TW" value="Taiwan">Taiwan</option>
										<option data-code="TJ" value="Tajikistan">Tajikistan</option>
										<option data-code="TZ" value="Tanzania, United Republic Of">Tanzania</option>
										<option data-code="TH" value="Thailand">Thailand</option>
										<option data-code="TL" value="Timor Leste">Timor-Leste</option>
										<option data-code="TG" value="Togo">Togo</option>
										<option data-code="TK" value="Tokelau">Tokelau</option>
										<option data-code="TO" value="Tonga">Tonga</option>
										<option data-code="TT" value="Trinidad and Tobago">Trinidad &amp; Tobago</option>
										<option data-code="TN" value="Tunisia">Tunisia</option>
										<option data-code="TR" value="Turkey">Turkey</option>
										<option data-code="TM" value="Turkmenistan">Turkmenistan</option>
										<option data-code="TC" value="Turks and Caicos Islands">Turks &amp; Caicos Islands</option>
										<option data-code="TV" value="Tuvalu">Tuvalu</option>
										<option data-code="UM" value="United States Minor Outlying Islands">U.S. Outlying Islands</option>
										<option data-code="UG" value="Uganda">Uganda</option>
										<option data-code="UA" value="Ukraine">Ukraine</option>
										<option data-code="AE" value="United Arab Emirates">United Arab Emirates</option>
										<option data-code="GB" value="United Kingdom">United Kingdom</option>
										<option data-code="US" value="United States">United States</option>
										<option data-code="UY" value="Uruguay">Uruguay</option>
										<option data-code="UZ" value="Uzbekistan">Uzbekistan</option>
										<option data-code="VU" value="Vanuatu">Vanuatu</option>
										<option data-code="VA" value="Holy See (Vatican City State)">Vatican City</option>
										<option data-code="VE" value="Venezuela">Venezuela</option>
										<option data-code="VN" value="Vietnam">Vietnam</option>
										<option data-code="WF" value="Wallis And Futuna">Wallis &amp; Futuna</option>
										<option data-code="EH" value="Western Sahara">Western Sahara</option>
										<option data-code="YE" value="Yemen">Yemen</option>
										<option data-code="ZM" value="Zambia">Zambia</option>
										<option data-code="ZW" value="Zimbabwe">Zimbabwe</option>
									</select>
								</div>
								<div class="col-sm-4 col_select">
									<select name="pros" id="pros" placeholder="Region" autocomplete="billing address-level1" data-trekkie-id="billing_province_field" data-backup="province" class="form-control" aria-required="true" name="checkout[billing_address][province]" id="checkout_billing_address_province">
											<option value="" disabled="">Province</option>
											<option data-code="AC" value="Aceh">Aceh</option>
											<option data-code="BA" value="Bali">Bali</option>
											<option data-code="BB" value="Bangka Belitung">Bangka Belitung</option>
											<option data-code="BT" value="Banten">Banten</option>
											<option data-code="BE" value="Bengkulu">Bengkulu</option>
											<option data-code="GO" value="Gorontalo">Gorontalo</option>
											<option data-code="JK" value="Jakarta">Jakarta</option>
											<option data-code="JA" value="Jambi">Jambi</option>
											<option data-code="JB" value="Jawa Barat">Jawa Barat</option>
											<option data-code="JT" value="Jawa Tengah">Jawa Tengah</option>
											<option data-code="JI" value="Jawa Timur">Jawa Timur</option>
											<option data-code="KB" value="Kalimantan Barat">Kalimantan Barat</option>
											<option data-code="KS" value="Kalimantan Selatan">Kalimantan Selatan</option>
											<option data-code="KT" value="Kalimantan Tengah">Kalimantan Tengah</option>
											<option data-code="KI" value="Kalimantan Timur">Kalimantan Timur</option>
											<option data-code="KU" value="Kalimantan Utara">Kalimantan Utara</option>
											<option data-code="KR" value="Kepulauan Riau">Kepulauan Riau</option>
											<option data-code="LA" value="Lampung">Lampung</option>
											<option data-code="MA" value="Maluku">Maluku</option>
											<option data-code="MU" value="Maluku Utara">Maluku Utara</option>
											<option data-code="NB" value="Nusa Tenggara Barat">Nusa Tenggara Barat</option>
											<option data-code="NT" value="Nusa Tenggara Timur">Nusa Tenggara Timur</option>
											<option data-code="PA" value="Papua">Papua</option>
											<option data-code="PB" value="Papua Barat">Papua Barat</option>
											<option data-code="RI" value="Riau">Riau</option>
											<option data-code="SR" value="Sulawesi Barat">Sulawesi Barat</option>
											<option data-code="SN" value="Sulawesi Selatan">Sulawesi Selatan</option>
											<option data-code="ST" value="Sulawesi Tengah">Sulawesi Tengah</option>
											<option data-code="SG" value="Sulawesi Tenggara">Sulawesi Tenggara</option>
											<option data-code="SA" value="Sulawesi Utara">Sulawesi Utara</option>
											<option data-code="SB" value="Sumatra Barat">Sumatra Barat</option>
											<option data-code="SS" value="Sumatra Selatan">Sumatra Selatan</option>
											<option data-code="SU" value="Sumatra Utara">Sumatra Utara</option>
											<option data-code="YO" value="Yogyakarta">Yogyakarta</option>
									</select>
								</div>
								<div class="col-sm-4 col_post">
									<input type="number" name="pcode" id="pcode" class="form-control" placeholder="Postal code">
								</div>
								<p class="cl"></p>
							</div><!-- write_line -->
						</div><!-- billing_info -->
					</div><!-- ch_body -->
					<div class="continue_line cl">
						<div class="col-sm-6">
							<!-- <label><input type="checkbox">다음에 이 정보 저장</label> -->
						</div>
						<div class="col-sm-6">
							<button type="submit" class="btn btn-primary btn-lg btn-block" >결제진행</button>
						</div>
						<p class="cl"></p>
					</div><!-- continue_line -->
				</section><!-- sub_conts03 -->
		</div><!-- container -->
	</article><!-- Sub_inner -->
	
</form>
 </body>
</html>