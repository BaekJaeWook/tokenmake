
var Web3 = require('web3');

if (typeof web3 == undefined){  //Meta 이미 설치 되어 있다.
  alert("undefined");
  web3 = new Web3(web3.currentProvider);
}else{  
  web3 = new Web3(new Web3.providers.HttpProvider("https://ropsten.infura.io/v3/47b88a2933034d8d9ed95027cdbcb99f")); //Ropsten test net
  //web3 = new Web3(new Web3.providers.HttpProvider("https://mainnet.infura.io/v3/47b88a2933034d8d9ed95027cdbcb99f")); //main net
  //web3 = new Web3(new Web3.providers.HttpProvider("http://110.10.189.186:8545"));   
}

console.log("connect network : "  + web3.isConnected()); //web3 connect

var version = web3.version.network;
console.log("network version " + version);

console.log('typeof EthJS:',               (typeof EthJS))
console.log('Object.keys(EthJS):',         Object.keys(EthJS))
console.log('typeof EthJS.Tx:',            (typeof EthJS.Tx))
console.log('typeof EthJS.RLP:',           (typeof EthJS.RLP))
console.log('typeof EthJS.Util:',          (typeof EthJS.Util))
console.log('typeof EthJS.Buffer:',        (typeof EthJS.Buffer))
console.log('typeof EthJS.Buffer.Buffer:', (typeof EthJS.Buffer.Buffer))

function paymemt(){
	
	var txHash1 = "";
	var resHash = "";
	var sendAddr = $("#payaddr").val();
	var priAddr = $("#priaddr").val();
		
	console.log("Send Addr : "  + $("#payaddr").val());
	console.log("Private Key Addr : "  + $("#priaddr").val());
	
	if(sendAddr == "" || sendAddr == null){
		alert("Require Send Address");
		$("#payaddr").focus();
		return false;
	}
	
	if(priAddr == "" || priAddr == null){
		alert("Require Private Key address");
		$("#priaddr").focus();
		return false;
	}
	
	var privateKey = new EthJS.Buffer.Buffer(priAddr, 'hex');
	web3.eth.defaultAccount = sendAddr; //wallet acc require
		
	var nonce ="";
	try{
		nonce = web3.toHex(web3.eth.getTransactionCount(web3.eth.defaultAccount));
	}catch(exception){
		alert("Invalid Address : Check Send Address");
		return false;
	}
	
	console.log("gasPrice : " + gasPrice);
	console.log("gasPrice : " + web3.eth.gasPrice);
	var gasLimitHex = web3.toHex(21000);
	var gas = web3.toHex(30000);
	var gasPrice = web3.toHex(20000000000) ;
	var value = web3.toHex(web3.toWei(0.5,'ether'));
	
	var txObject = {
			  nonce : nonce,
			  to: "0x40e899a8a0Ca7d1a79b6b1bb0f03AD090F0Ad747",			  			   
			  value: value,			  			  			
			  gas : gas,
			  gasPrice : gasPrice,
			  gasLimit : gasLimitHex
			  //chainId: 3
			}
	
	let tx = new EthJS.Tx(txObject);	  	
	try{
		tx.sign(privateKey);
	}catch(exception){
		alert("Invalid PrivateKey : Check PrivateKey");
		return false;		
	}
	
	var serializedTx = '0x' + tx.serialize().toString('hex');	
	console.log('serializedTx:', serializedTx);
	
	web3.eth.sendRawTransaction(serializedTx,function(err,txHash){
		
		if(err){
			alert("Not enough Amount Or Check Adderess : " + err);		 				 
			return false;
		}else{		
			
			web3.eth.getTransaction(txHash,function(err,res){
				if(err){					
					alert("payment Fail");
					return false;
				}else{					
					console.log("getTransactionSucc : " + JSON.stringify(res));
					
					try{
						res.hash;
					}catch(exception){
						alert("getTransaction Error ");
						return false;
					}
					console.log("res.hash : " + res.hash);
					
					if(res.hash == null || res.hash == ""){
						alert("Valid key and check key value");
						return false;
					}
					
					resHash = res.hash;
					console.log("resHash : " + resHash);
					
					//Call Receipt
					setTimeout(web3.eth.getTransactionReceipt(resHash,function(err,res){				
						
						if(err){							
							alert("payment Fail");
							return false;
						}else{							
							console.log("getTransactionReceipt Succ : " + JSON.stringify(res));
							callDbAjax(resHash,sendAddr);							
						}						
					}),1000);
				}				
			})		
		}
	})	
}

function callDbAjax(ajaxResHah,_sendaddr){
	
	//alert("ajaxResHah Value : " + ajaxResHah);
	$("#hash").val(ajaxResHah);
	/*var payParam = $("#frmPayment").val();
	alert(payParam);
	
	var ordObj = JSON.parse(payParam);
	var iCnt = 0;
	var jsonArray = new Array();
	
	$.each(ordObj,function(i){
		var jsonObj = {};
		jsonObj.email = ordObj[i].email;
		
	});*/
	
	$.ajax({
		type       	: "POST"
	   ,url        	: "/insertpayment.do" 
	   ,dataType   	: "text"
	   //,data       	: {"orderParam":JSON.stringify(jsonArray), "cstDlvaddrId":cstDlvaddrId, "zipNo":aes.AES_Encode(zipNo), "arId":aes.AES_Encode(arId)}
	   ,data       	: {		   			   
		   			   "email":  $("#email").val(),  
		   			   "fname":  $("#fname").val(),
		   			   "lname":  $("#lname").val(),
		   			   "company":  $("#company").val(),
		   			   "addr":  $("#addr").val(),
		   			   "addrdetail":  $("#addrdetail").val(),
		   			   "city":  $("#city").val(),
		   			   "national":  $("#national").val(),
		   			   "pros":  $("#pros").val(),
		   			   "pcode":  $("#pcode").val(),
		   			   
		   			   "mytoken":  $("#mytoken").val(),
		   			   "tsymbol":  $("#tsymbol").val(),
		   			   "tamount":  $("#tamount").val(),
		   			   "tdecimals":  $("#tdecimals").val(),
		   			   "taddr":  $("#taddr").val(),
		   			   "tbuy":  $("#tbuy").val(),
		   			   
		   			   "psdate1":  $("#psdate1").val(),
		   			   "pedate1":  $("#pedate1").val(),
		   			   "price1":  $("#price1").val(),
			   			"hard1":  $("#hard1").val(),
			   			"psdate2":  $("#psdate2").val(),
			   			"pedate2":  $("#pedate2").val(),
			   			"price2":  $("#price2").val(),
			   			"hard2":  $("#hard2").val(),
			   			"psdate3":  $("#psdate3").val(),
			   			"pedate3":  $("#pedate3").val(),
			   			"price3":  $("#price3").val(),
			   			"hard3":  $("#hard3").val(),
			   			"lpage":  $("#lpage").val(),
			   			"spage":  $("#spage").val(),
		   	
			   			"hash":  $("#hash").val(),
			   			"payaddr" : $("#payaddr").val()			   			
		   			   } 
	   ,async      	: true
	   ,crossDomain : true	      
       ,beforeSend 	: function(xhr) {
           // 전송 전 Code
    	   //alert(xhr);
       }
       ,success   	: function(data, textStatus, jqXHR){
    	   
    	   console.log("call ajaxResHah : " + ajaxResHah);    	   
    	   console.log("sendaddr form val: " + _sendaddr);    	   
    	   
    	   $('#popUpModal').modal('show');
    	   
    	   var html = "";
    	   //alert(version);
    	   
    	   if(version == "1"){    	   
    		   html = "<li><a href=https://etherscan.io/address/" + _sendaddr +"    target='_blank'>https://etherscan.io/address/" +_sendaddr + "</a></li>";
    		   html = html + "<li><a href=https://etherscan.io/tx/" + ajaxResHah +"  target='_blank' >https://etherscan.io/tx/" +ajaxResHah + "</a></li>";
    	   }else{
    		   html = "<li><a href=https://ropsten.etherscan.io/address/" + _sendaddr + "  target='_blank' >https://ropsten.etherscan.io/address/" +_sendaddr + "</a></li>";
    		   html = html + "<li><a href=https://ropsten.etherscan.io/tx/" + ajaxResHah + "  target='_blank' >https://ropsten.etherscan.io/tx/" +ajaxResHah + "</a></li>";
    	   }    	   	
    	   $("#scan").html(html);
    	   
    	   
       }
       ,error     : function(jqXHR, textStatus, errorThrown){
    	   
    	   alert("error : " + JSON.stringify(jqXHR) + " , " + textStatus);    	   
     	   location.href = "/";
       	}
    });	
}
console.log("------------------------------------------------------------------------")

function hockProviderTest(){
	
	var provider = new HookedWeb3Provider({
		host: "https://ropsten.infura.io/v3/47b88a2933034d8d9ed95027cdbcb99f",
		transaction_signer: {
			hasAddress: function(address, callback){
				callback(null, true);
			},
			signTransaction: function(tx_params, callback){
				var rawTx = {
			        gasPrice: web3.toHex(tx_params.gasPrice),
			        gasLimit: web3.toHex(tx_params.gas),
			        value: web3.toHex(tx_params.value),
			        from: tx_params.from,
			        to: tx_params.to,
			        nonce: web3.toHex(tx_params.nonce)
			    };
				
				console.log("1");
				//var privateKey = new EthJS.Buffer.Buffer('806cf5b3f12b750752cec3d774dd98b9863aa0cc01bbfd8df89146d9ffde499d', 'hex');
				var privateKey = EthJS.Util.toBuffer('0x1a56e47492bf3df9c9563fa7f66e4e032c661de9d68c3f36f358e6bc9a9f69f2', 'hex');
				var tx = new EthJS.Tx(rawTx);
				tx.sign(privateKey);
				console.log("2");	
				callback(null, tx.serialize().toString('hex'));
			}
		}
	});

	var web3 = new Web3(provider);
	console.log("3");
	web3.eth.sendTransaction({
		from: "0xA3c811080a759c241410F843b6001416DF1BF869",
		to: "0x52BB63DA4c0E1045d263457458CA9CEFfEEd18C9",
		value: web3.toWei("0.1", "ether"),
		gasPrice: "20000000000",
		gas: "21000"
	}, function(error, result){
		console.log(error, result)
	})
	
}

//web3.eth.getBlockNumber(cb)
//console.log("defaultBlock : " + web3.eth.defaultBlock)
//web3.eth.getBlock('0x22c2830273c6a9a92e32debc49804c72abe1b4bf6daae2cd507945e81f039e96' ,cb)
//web3.eth.getTransactionCount('0xd855490c0302beb8bfb27e5a7c18f94ef10d48b552e49ec746cbc128a39e45f0', cb)

//var filter = web3.eth.filter('pending','latest'); //새로 생성될대 마다 블록 txhash 값을 가지고 온다
//filter.watch(cb)

/*var filter = web3.eth.filter(
    {
      fromBlock : 0,
      toBlock : "latest",
      address : "0xdb82222f989d3c60b0dcd912432a84135cc2ca3f",      
    } 
);

filter.watch(cb)
*/

/*var options = {
  fromBlock: "0",
  toBlock: "latest",
  address: "0x52bb63da4c0e1045d263457458ca9ceffeed18c9",
};
var filter = web3.eth.filter(options);
filter.watch(cb)
*/

console.log("------------------------------------------------------------------------")

//console.log(web3.eth.getBlock(1048576))
//console.log(web3.version)

//var dwidderContract = web3.eth.contract(abi);
//var dwidder = dwidderContract.at('0xa4effe44a21ce92883c22658e3447ceb0ade3d3c');

//dwidder.create.sendTransaction("baekjaewook", cb);

/*
 * user action
*/
// 연습 ==========================================================
/*
function cb(err, res){
  console.log(res)
}

var account = web3.eth.defaultAccount;

//var filter = web3.eth.filter('latest'); //새로 생성될대 마다 블록 txhash 값을 가지고 온다
//filter.watch(cb)

var postingEvent = dwidder.Posting(   //null Diwidder 에서 event indexed 라고 기재 되어 있는것만 필터링
  null, //null 말고 필터 해도 된다. id 혹은 
  { fromBlock: 0, toBlock: 'latest' } //latest 외 다른것도 가능
)

postingEvent.watch(function(err, res){
  if(err){
    console.log(err)
  }else{
    console.log(res)
  }
})*/