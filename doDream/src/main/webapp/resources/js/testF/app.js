

var express = require('express')
, http = require('http')
, app = express()
, server = http.createServer(app);
var bodyParser = require('body-parser');
var cors = require('cors');
const axios = require('axios');

app.use(cors());
app.use(bodyParser.urlencoded({extended : true}));
app.use(bodyParser.json());

// 빌링키 발급받는 코드
app.post("/ajaxBillingServer", async (req, res) => {
try {
  const {
    card_number, // 카드 번호
    expiry, // 카드 유효기간
    birth, // 생년월일
    pwd_2digit, // 카드 비밀번호 앞 두자리,
    customer_uid, // 카드(빌링키)와 1:1로 대응하는 값
  } = req.body; // req의 body에서 카드정보 추출
  console.log("== 두드림 서버에서 넘어온 카드정보 =================================");
  console.log(card_number+"/"+expiry+"/"+birth+"/"+pwd_2digit+"/"+customer_uid);
  console.log("=================================================================");
  // 인증 토큰 발급 받기
  const getToken = await axios({
    url: "https://api.iamport.kr/users/getToken",
    method: "post", // POST method
    headers: { "Content-Type": "application/json" }, // "Content-Type": "application/json"
    data: {
      imp_key: "9558032955028384", // REST API키
      imp_secret: "vpmDt0zqx5jCqBCWaEa301sHl74jy7X4wjHZkhqRmKuNl6JwLTALU2tgaxzJExNbQvbaNB2amwXHDHeo" // REST API Secret
    }
  });
  const { access_token } = getToken.data.response; // 인증 토큰
  console.log("인증 토큰 : "+access_token);

  // 빌링키 발급 요청
  const issueBilling = await axios({
    url: 'https://api.iamport.kr/subscribe/customers/'+customer_uid,
    method: "post",
    headers: { "Authorization": access_token }, // 인증 토큰 Authorization header에 추가
    data: {
      card_number, // 카드 번호
      expiry, // 카드 유효기간
      birth, // 생년월일
      pwd_2digit, // 카드 비밀번호 앞 두자리
    }
  });

  console.log(issueBilling);
  var code = issueBilling.data.code;
  console.log("성공 코드(0일시 성공) : " + issueBilling.data.code);

  if (code == 0) { // 빌링키 발급 성공
    console.log("빌링키 발급 성공!")
    res.send({ status: "success", message: "Billing has successfully issued", code: code });
  } else { // 빌링키 발급 실패
    res.send({ status: "failed", message });
  }

} catch (e) {
  console.log(e);
  res.status(400).send(e);
}
});


server.listen(8081, function() {
console.log('Express server listening on port ' + server.address().port);
});

//"/billings" 에 대한 POST 요청을 처리하는 controller
app.post("/billings", async (req, res) => {
try {
  const { 
    customer_uid,
    amount
  } = req.body;
  console.log("== 두드림 서버에서 넘어온 결제요청정보 =================================");
  console.log("빌링키 : " + customer_uid + " / 결제요청금액 :  " + amount);
  // 인증 토큰 발급 받기
  const getToken = await axios({
    url: "https://api.iamport.kr/users/getToken",
    method: "post", // POST method
    headers: { "Content-Type": "application/json" }, // "Content-Type": "application/json"
    data: {
      imp_key: "9558032955028384", // REST API키
      imp_secret: "vpmDt0zqx5jCqBCWaEa301sHl74jy7X4wjHZkhqRmKuNl6JwLTALU2tgaxzJExNbQvbaNB2amwXHDHeo" // REST API Secret
    }
  });
  const { access_token } = getToken.data.response; // 인증 토큰
  // 결제(재결제) 요청
  const paymentResult = await axios({
    url: 'https://api.iamport.kr/subscribe/payments/again',
    method: "post",
    headers: { "Authorization": access_token }, // 인증 토큰 Authorization header에 추가
    data: {
      customer_uid: customer_uid,
      merchant_uid: customer_uid, // 새로 생성한 결제(재결제)용 주문 번호
      amount: amount,
      name: "프로젝트 펀딩 결제"
    }
  });
console.log(paymentResult);
  var code = paymentResult.data.code;
  console.log(code);
  console.log(paymentResult.data.response.status);
  if (code === 0) { // 카드사 통신에 성공(실제 승인 성공 여부는 추가 판단이 필요합니다.)
    if ( paymentResult.data.response.status === "paid" ) { //카드 정상 승인
      console.log("카드 결제 승인!")
      res.send({ code: "0" });
    } else { //카드 승인 실패 (ex. 고객 카드 한도초과, 거래정지카드, 잔액부족 등)
      //paymentResult.status : failed 로 수신됩니다.
      res.send({ code: "2" });
    }
    res.send();
  } else { // 카드사 요청에 실패 (paymentResult is null)
    res.send({ code: "paymentResult is null" });
  }
} catch (e) {
  console.log("결제에러 : "+e);
  res.status(400).send(e);
}
});

// 빌링키 폐기용
app.post("/deleteBKey", async (req, res) => {
  try {
    console.log(req);
    const { 
      customer_uid,
    } = req.body;
    console.log("== 두드림 서버에서 넘어온 빌링키 폐기 요청정보 =================================");
    console.log("폐기 요청 빌링키 : " + customer_uid);
    // 인증 토큰 발급 받기
    const getToken = await axios({
      url: "https://api.iamport.kr/users/getToken",
      method: "post", // POST method
      headers: { "Content-Type": "application/json" }, // "Content-Type": "application/json"
      data: {
        imp_key: "9558032955028384", // REST API키
        imp_secret: "vpmDt0zqx5jCqBCWaEa301sHl74jy7X4wjHZkhqRmKuNl6JwLTALU2tgaxzJExNbQvbaNB2amwXHDHeo" // REST API Secret
      }
    });
    const { access_token } = getToken.data.response; // 인증 토큰
    // 빌링키 폐기 요청
    const deleteResult = await axios({
      url: 'https://api.iamport.kr/subscribe/customers/'+customer_uid,
      method: "delete",
      headers: { "Authorization": access_token }, // 인증 토큰 Authorization header에 추가
    });
    console.log(deleteResult);
    var code = deleteResult.data.code;
    console.log(code);
    if (code == 0) { 
      console.log("빌링키 폐기 성공!")
      res.send({code: 0});
    } else { // 카드사 요청에 실패 (paymentResult is null)
      res.send({code: 1, msg: deleteResult.data.message});
    }
  } catch (e) {
    console.log("빌링키 삭제 에러 : " + e);
    res.send(e);
  }
  });
